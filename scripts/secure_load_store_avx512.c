
struct ds_base {
  const void *base;
  const uint64_t *offset;
  const uint32_t ds_size;
  const uint32_t strategy;
  const uint32_t begin_offset;
  const uint32_t end_offset;
};
typedef struct ds_base ds_base_t;


__attribute__((noinline)) uint64_t uint64_t_secure_load_impl(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  // currently do not support multiple bases

  uint64_t ret = 0;

  __m512i res   = _mm512_setzero_si512();
  for (uint32_t i = 0; i < base_size; i++) {
    void *base = bases[i].base;
    uint64_t *offset = bases[i].offset;
    uint32_t ds_size = bases[i].ds_size;
    uint32_t begin_offset = bases[i].begin_offset;
    uint32_t end_offset = bases[i].end_offset;
    // strategy 0: bulk; 1: simple; 2: gather
    if (bases[i].strategy == 0){
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);
      uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);
      __m512i step    = _mm512_set1_epi64(64);
      __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);
      uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;
      for (uint32_t j = 0; j < iter_limit; j = j + 1) {
        char* head = (char*)first_candidate+64*j;
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
        res = _mm512_mask_blend_epi64(mask, res, _mm512_loadu_si512((__m512i *)head));
        offsets = _mm512_add_epi64(offsets, step);
      }
      ret |= _mm512_reduce_add_epi64(res);
      ret = ret >> (8*((uint64_t)ptr & 7));
    } else if (bases[i].strategy == 1) {
      for (uint32_t j = 0; j < ds_size; j = j + 1) {
        volatile uint64_t* _ptr = base + offset[j];
        uint64_t _val = *_ptr;
        ret = (_ptr == ptr) ? _val : ret;
      }
    } if (bases[i].strategy == 2) {
      __m512i pointer_offsets = _mm512_setr_epi64(0, 8, 16, 24, 32, 40, 48, 56);
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr-(uint64_t)base);
      __m512i endv    = _mm512_set1_epi64((unsigned long) ds_size * 8);
      for (uint32_t j = 0; j < ds_size / 8; j = j + 1) {
        __m512i offsets = _mm512_loadu_si512(offset+j*8);
        __mmask8 oob_mask = _mm512_cmplt_epi64_mask(pointer_offsets, endv);
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
        __m512i loaded = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
        res = _mm512_mask_blend_epi64(mask, res, loaded);
      }
      ret |= _mm512_reduce_add_epi64(res);
    }
  }
  return ret;
}

//#define SECURE_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_load_impl(ptr, bases, base_size, total_size); assert(ret == *ptr); return ret; }
#define SECURE_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { return (type)uint64_t_secure_load_impl(ptr, bases, base_size, total_size);}
SECURE_LOAD(uint64_t)
SECURE_LOAD(uint32_t)
SECURE_LOAD(uint16_t)
SECURE_LOAD(uint8_t)

__attribute__((noinline)) uint64_t uint64_t_secure_load_impl_onebase(const uint64_t * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size) {
  // currently do not support multiple bases

  uint64_t ret = 0;

  __m512i res   = _mm512_setzero_si512();
  // strategy 0: bulk; 1: simple; 2: gather
  if (strategy == 0) {
    __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);
    uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);
    __m512i step    = _mm512_set1_epi64(64);
    __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);
    uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;
    for (uint32_t j = 0; j < iter_limit; j = j + 1) {
      char* head = (char*)first_candidate+64*j;
      __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
      res = _mm512_mask_blend_epi64(mask, res, _mm512_loadu_si512((__m512i *)head));
      offsets = _mm512_add_epi64(offsets, step);
    }
    ret |= _mm512_reduce_add_epi64(res);
    ret = ret >> (8*((uint64_t)ptr & 7));
  } else if (strategy == 1) {
    for (uint32_t j = 0; j < ds_size; j = j + 1) {
      volatile uint64_t* _ptr = (char*)base + offset[j];
      uint64_t _val = *_ptr;
      ret = (_ptr == ptr) ? _val : ret;
    }
  } if (strategy == 2) {
    __m512i pointer_offsets = _mm512_setr_epi64(0, 8, 16, 24, 32, 40, 48, 56);
    __m512i target    = _mm512_set1_epi64((uint64_t)ptr-(uint64_t)base);
    __m512i endv    = _mm512_set1_epi64((unsigned long) ds_size * 8);
    for (uint32_t j = 0; j < ds_size / 8; j = j + 1) {
      __m512i offsets = _mm512_loadu_si512(offset+j*8);
      __mmask8 oob_mask = _mm512_cmplt_epi64_mask(pointer_offsets, endv);
      __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
      __m512i loaded = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
      res = _mm512_mask_blend_epi64(mask, res, loaded);
    }
    ret |= _mm512_reduce_add_epi64(res);
  }
  return ret;
}

//#define SECURE_LOAD_ONEBASE(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_load_impl(ptr, bases, base_size, total_size); assert(ret == *ptr); return ret; }
#define SECURE_LOAD_ONEBASE(type) type type ## _secure_load_onebase(const type * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size){\
  return (type)uint64_t_secure_load_impl_onebase(ptr, base, offset, ds_size, strategy, begin_offset, end_offset, base_size, total_size);\
}
SECURE_LOAD_ONEBASE(uint64_t)
SECURE_LOAD_ONEBASE(uint32_t)
SECURE_LOAD_ONEBASE(uint16_t)
SECURE_LOAD_ONEBASE(uint8_t)


__attribute__((noinline)) uint64_t uint64_t_secure_double_load_impl(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  // currently do not support multiple bases

  uint64_t ret = 0;

  __m512i res   = _mm512_setzero_si512();
  for (uint32_t i = 0; i < base_size; i++) {
    void *base = bases[i].base;
    uint64_t *offset = bases[i].offset;
    uint32_t ds_size = bases[i].ds_size;
    uint32_t begin_offset = bases[i].begin_offset;
    uint32_t end_offset = bases[i].end_offset;
    // strategy 0: bulk; 1: simple; 2: gather
    if (bases[i].strategy == 0) {
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);
      uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);
      __m512i step    = _mm512_set1_epi64(64);
      __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);
      uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;
      for (uint32_t j = 0; j < iter_limit; j = j + 1) {
        char* head = (char*)first_candidate+64*j;
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
        // intentional double load
        volatile __m512i loaded0 = _mm512_loadu_si512(head);
        res = _mm512_mask_blend_epi64(mask, res, _mm512_loadu_si512((__m512i *)head));
        offsets = _mm512_add_epi64(offsets, step);
      }
      ret |= _mm512_reduce_add_epi64(res);
      ret = ret >> (8*((uint64_t)ptr & 7));
    } else if (bases[i].strategy == 1) {
      for (uint32_t j = 0; j < ds_size; j = j + 1) {
        volatile uint64_t* _ptr = base + offset[j];
        uint64_t _val = *_ptr;
        // intentional double load
        _val = *_ptr;
        ret = (_ptr == ptr) ? _val : ret;
      }
    } if (bases[i].strategy == 2) {
      __m512i pointer_offsets = _mm512_setr_epi64(0, 8, 16, 24, 32, 40, 48, 56);
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr-(uint64_t)base);
      __m512i endv    = _mm512_set1_epi64((unsigned long) ds_size * 8);
      for (uint32_t j = 0; j < ds_size / 8; j = j + 1) {
        __m512i offsets = _mm512_loadu_si512(offset+j*8);
        __mmask8 oob_mask = _mm512_cmplt_epi64_mask(pointer_offsets, endv);
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
        // intentional double load
        __m512i loaded0 = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
        __m512i loaded = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
        res = _mm512_mask_blend_epi64(mask, res, loaded);
      }
      ret |= _mm512_reduce_add_epi64(res);
    }
  }
  return ret;
}

//#define SECURE_LOAD_SENSITIVE(type) type type ## _secure_load_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_double_load_impl(ptr, bases, base_size, total_size); assert(!ptr || ret == *ptr); return ret; }
#define SECURE_LOAD_SENSITIVE(type) type type ## _secure_load_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_double_load_impl(ptr, bases, base_size, total_size); return ret; }
SECURE_LOAD_SENSITIVE(uint64_t)
SECURE_LOAD_SENSITIVE(uint32_t)
SECURE_LOAD_SENSITIVE(uint16_t)
SECURE_LOAD_SENSITIVE(uint8_t)

__attribute__((noinline)) uint64_t uint64_t_secure_double_load_impl_onebase(const uint64_t * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size) {
  // currently do not support multiple bases

  uint64_t ret = 0;

  __m512i res   = _mm512_setzero_si512();
  // strategy 0: bulk; 1: simple; 2: gather
  if (strategy == 0) {
    __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);
    uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);
    __m512i step    = _mm512_set1_epi64(64);
    __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);
    uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;
    for (uint32_t j = 0; j < iter_limit; j = j + 1) {
      char* head = (char*)first_candidate+64*j;
      __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
      __m512i load0 = _mm512_loadu_si512((__m512i *)head);
      res = _mm512_mask_blend_epi64(mask, res, _mm512_loadu_si512((__m512i *)head));
      offsets = _mm512_add_epi64(offsets, step);
    }
    ret |= _mm512_reduce_add_epi64(res);
    ret = ret >> (8*((uint64_t)ptr & 7));
  } else if (strategy == 1) {
    for (uint32_t j = 0; j < ds_size; j = j + 1) {
      volatile uint64_t* _ptr = (char*)base + offset[j];
      uint64_t _val = *_ptr;
      // intentional double load
      _val = *_ptr;
      ret = (_ptr == ptr) ? _val : ret;
    }
  } if (strategy == 2) {
    __m512i pointer_offsets = _mm512_setr_epi64(0, 8, 16, 24, 32, 40, 48, 56);
    __m512i target    = _mm512_set1_epi64((uint64_t)ptr-(uint64_t)base);
    __m512i endv    = _mm512_set1_epi64((unsigned long) ds_size * 8);
    for (uint32_t j = 0; j < ds_size / 8; j = j + 1) {
      __m512i offsets = _mm512_loadu_si512(offset+j*8);
      __mmask8 oob_mask = _mm512_cmplt_epi64_mask(pointer_offsets, endv);
      __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);
      __m512i loaded0 = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
      __m512i loaded = _mm512_mask_i64gather_epi64(res, oob_mask, offsets, base, 1);
      res = _mm512_mask_blend_epi64(mask, res, loaded);
    }
    ret |= _mm512_reduce_add_epi64(res);
  }
  return ret;
}

#define SECURE_LOAD_SENSITIVE_ONEBASE(type) type type ## _secure_load_sensitive_onebase(const uint64_t * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size) {\
  type ret = uint64_t_secure_double_load_impl_onebase(ptr, base, offset, ds_size, strategy, begin_offset, end_offset, base_size, total_size);\
  return ret;\
}
SECURE_LOAD_SENSITIVE_ONEBASE(uint64_t)
SECURE_LOAD_SENSITIVE_ONEBASE(uint32_t)
SECURE_LOAD_SENSITIVE_ONEBASE(uint16_t)
SECURE_LOAD_SENSITIVE_ONEBASE(uint8_t)

#define SECURE_LOAD_SINGLE(type) type type ## _secure_load_single(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { return *ptr; }
SECURE_LOAD_SINGLE(uint64_t)
SECURE_LOAD_SINGLE(uint32_t)
SECURE_LOAD_SINGLE(uint16_t)
SECURE_LOAD_SINGLE(uint8_t)

#define SECURE_LOAD_SINGLE_SENSITIVE(type) type type ## _secure_load_single_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\
  volatile type* ptr_ = ((char*)bases->base + bases->begin_offset);\
  *ptr_;\
  return *ptr_;\
}
SECURE_LOAD_SINGLE_SENSITIVE(uint64_t)
SECURE_LOAD_SINGLE_SENSITIVE(uint32_t)
SECURE_LOAD_SINGLE_SENSITIVE(uint16_t)
SECURE_LOAD_SINGLE_SENSITIVE(uint8_t)


#define SECURE_STORE_IMPL(type) __attribute__((noinline)) void type ## _secure_store_impl(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\
\
  for (uint32_t i = 0; i < base_size; i++) {\
    void *base = bases[i].base;\
    uint64_t *offset = bases[i].offset;\
    uint32_t ds_size = bases[i].ds_size;\
    uint32_t begin_offset = bases[i].begin_offset;\
    uint32_t end_offset = bases[i].end_offset;\
    if (bases[i].strategy == 0) {\
      __m512i value_vec = _mm512_set1_epi64((uint64_t)value << (8*((uint64_t)ptr & 7)));\
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);\
      uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);\
\
      uint64_t write_mask_ = ((1uL << sizeof(value)) - 1uL) << ((((unsigned long) ptr) & 7)); \
      write_mask_ |= ((write_mask_ << 8) | (write_mask_ << 16) | (write_mask_ << 24) | (write_mask_ << 32) | (write_mask_ << 40) | (write_mask_ << 48) | (write_mask_ << 56)); \
      __mmask64 write_mask   = _cvtu64_mask64(write_mask_); \
\
      __m512i step    = _mm512_set1_epi64(64);\
      __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);\
      uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;\
      for (char* iter = first_candidate; iter <= (char*)base + end_offset; iter += 64) {\
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);\
        __m512i  loaded   = _mm512_loadu_si512((long long *)iter);\
        __m512i writev    = _mm512_mask_blend_epi64(mask, loaded, value_vec);\
        writev            = _mm512_mask_blend_epi8(write_mask, loaded, writev);\
        _mm512_storeu_si512((long long *)iter, writev);\
        offsets = _mm512_add_epi64(offsets, step);\
      }\
    } else {\
      for (uint32_t j = 0; j < bases[i].ds_size ; j++) {\
        volatile type *_ptr = (char*)bases[i].base+bases[i].offset[j];\
        type tmp = *_ptr;\
        if ((char*)bases[i].base+bases[i].offset[j] == ptr) {\
          *(volatile type*)((char*)bases[i].base+bases[i].offset[j]) = value;\
        } else {\
          *(volatile type*)((char*)bases[i].base+bases[i].offset[j]) = tmp;\
        }\
      }\
    }\
  }\
}

SECURE_STORE_IMPL(uint64_t)
SECURE_STORE_IMPL(uint32_t)
SECURE_STORE_IMPL(uint16_t)
SECURE_STORE_IMPL(uint8_t)

#define SECURE_STORE(type) void type ## _secure_store(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ## _secure_store_impl(value, ptr, bases, base_size, total_size);}

SECURE_STORE(uint64_t)
SECURE_STORE(uint32_t)
SECURE_STORE(uint16_t)
SECURE_STORE(uint8_t)

#define SECURE_STORE_SENSITIVE(type) void type ## _secure_store_sensitive(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {type ## _secure_store_impl(value, ptr, bases, base_size, total_size);}

SECURE_STORE_SENSITIVE(uint64_t)
SECURE_STORE_SENSITIVE(uint32_t)
SECURE_STORE_SENSITIVE(uint16_t)
SECURE_STORE_SENSITIVE(uint8_t)

#define SECURE_STORE_IMPL_ONEBASE(type) __attribute__((noinline)) void type ## _secure_store_impl_onebase(const type value, type * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size){\
    if (strategy == 0) {\
      __m512i value_vec = _mm512_set1_epi64((uint64_t)value << (8*((uint64_t)ptr & 7)));\
      __m512i target    = _mm512_set1_epi64((uint64_t)ptr & ~7);\
      uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~63);\
\
      uint64_t write_mask_ = ((1uL << sizeof(value)) - 1uL) << ((((unsigned long) ptr) & 7)); \
      write_mask_ |= ((write_mask_ << 8) | (write_mask_ << 16) | (write_mask_ << 24) | (write_mask_ << 32) | (write_mask_ << 40) | (write_mask_ << 48) | (write_mask_ << 56)); \
      __mmask64 write_mask   = _cvtu64_mask64(write_mask_); \
\
      __m512i step    = _mm512_set1_epi64(64);\
      __m512i offsets = _mm512_setr_epi64(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24, first_candidate+32, first_candidate+40, first_candidate+48, first_candidate+56);\
      uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 64 + 1;\
      for (char* iter = first_candidate; iter <= (char*)base + end_offset; iter += 64) {\
        __mmask8 mask = _mm512_cmpeq_epi64_mask(target, offsets);\
        __m512i  loaded   = _mm512_loadu_si512((long long *)iter);\
        __m512i writev    = _mm512_mask_blend_epi64(mask, loaded, value_vec);\
        writev            = _mm512_mask_blend_epi8(write_mask, loaded, writev);\
        _mm512_storeu_si512((long long *)iter, writev);\
        offsets = _mm512_add_epi64(offsets, step);\
      }\
    } else {\
      for (uint32_t j = 0; j < ds_size ; j++) {\
        volatile type *_ptr = (char*)base+offset[j];\
        type tmp = *_ptr;\
        if ((char*)base+offset[j] == ptr) {\
          *(volatile type*)((char*)base+offset[j]) = value;\
        } else {\
          *(volatile type*)((char*)base+offset[j]) = tmp;\
        }\
      }\
    }\
}

SECURE_STORE_IMPL_ONEBASE(uint64_t)
SECURE_STORE_IMPL_ONEBASE(uint32_t)
SECURE_STORE_IMPL_ONEBASE(uint16_t)
SECURE_STORE_IMPL_ONEBASE(uint8_t)

#define SECURE_STORE_ONEBASE(type) void type ## _secure_store_onebase(const type value, type * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size) {\
  type ## _secure_store_impl_onebase(value, ptr, base, offset, ds_size, strategy, begin_offset, end_offset, base_size, total_size);\
}

SECURE_STORE_ONEBASE(uint64_t)
SECURE_STORE_ONEBASE(uint32_t)
SECURE_STORE_ONEBASE(uint16_t)
SECURE_STORE_ONEBASE(uint8_t)

#define SECURE_STORE_SENSITIVE_ONEBASE(type) void type ## _secure_store_sensitive_onebase(const type value, type * ptr, void *base, uint64_t *offset, uint32_t ds_size, uint32_t strategy, uint32_t begin_offset, uint32_t end_offset, uint32_t base_size, uint32_t total_size) {\
  type ## _secure_store_impl_onebase(value, ptr, base, offset, ds_size, strategy, begin_offset, end_offset, base_size, total_size);\
}

SECURE_STORE_SENSITIVE_ONEBASE(uint64_t)
SECURE_STORE_SENSITIVE_ONEBASE(uint32_t)
SECURE_STORE_SENSITIVE_ONEBASE(uint16_t)
SECURE_STORE_SENSITIVE_ONEBASE(uint8_t)



#define SECURE_STORE_SINGLE(type) void type ## _secure_store_single(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { *ptr = value; }
SECURE_STORE_SINGLE(uint64_t)
SECURE_STORE_SINGLE(uint32_t)
SECURE_STORE_SINGLE(uint16_t)
SECURE_STORE_SINGLE(uint8_t)

#define SECURE_STORE_SINGLE_SENSITIVE(type) void type ## _secure_store_single_sensitive(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\
  volatile type * _ptr = (char*)bases->base + bases->begin_offset;\
  type tmp = *_ptr;\
  if (ptr) {\
    *(volatile type*)_ptr = value;\
  } else {\
    *(volatile type*)_ptr = tmp;\
  }\
}
SECURE_STORE_SINGLE_SENSITIVE(uint64_t)
SECURE_STORE_SINGLE_SENSITIVE(uint32_t)
SECURE_STORE_SINGLE_SENSITIVE(uint16_t)
SECURE_STORE_SINGLE_SENSITIVE(uint8_t)
