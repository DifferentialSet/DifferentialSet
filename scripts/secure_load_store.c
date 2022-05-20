#include <stdint.h>
#include <immintrin.h>

struct ds_base {
  const void *base;
  const uint64_t *offset;
  const uint32_t ds_size;
  const uint32_t strategy;
  const uint32_t begin_offset;
  const uint32_t end_offset;
};
typedef struct ds_base ds_base_t;

uint64_t mm256_hadd_to_64(__m256i v) {
  #ifdef __AVX2__
    __m128i vlow    = _mm256_castsi256_si128(v);
    __m128i vhigh   = _mm256_extracti128_si256(v, 1);
            vlow    = _mm_add_epi64(vlow, vhigh);
    __m128i vhigh64 = _mm_unpackhi_epi64(vlow, vlow);
    uint64_t ret = _mm_cvtsi128_si64(_mm_add_epi64(vlow, vhigh64));
    return ret;
  #else
    abort();
  #endif
}

__attribute__((noinline)) uint64_t uint64_t_secure_load_impl(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  // currently do not support multiple bases

  uint64_t ret = 0;

  __m256i res   = _mm256_setzero_si256();
  for (uint32_t i = 0; i < base_size; i++) {
    // strategy 0: bulk; 1: simple; 2: gather
    if (__builtin_expect_with_probability(bases[i].strategy == 0, 1, 1)) {
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);
      uint64_t first_candidate = (((uint64_t)bases[i].base+bases[i].begin_offset) & ~31);
      __m256i step    = _mm256_set1_epi64x(32);
      __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);
      uint32_t iter_limit = ((uint64_t)bases[i].base + bases[i].end_offset - first_candidate) / 32 + 1;
      for (uint32_t j = 0; j < iter_limit; j = j + 1) {
        uint64_t* head = (char*)first_candidate+32*j;
        __m256i mask = _mm256_cmpeq_epi64(offsets, target);
        __m256i loaded = _mm256_loadu_si256(head);
        res = _mm256_blendv_epi8(res, loaded, mask);
        offsets = _mm256_add_epi64(offsets, step);
      }
      ret |= mm256_hadd_to_64(res);
      ret = ret >> (8*((uint64_t)ptr & 7));
    } else if (bases[i].strategy == 1) {
      for (uint32_t j = 0; j < bases[i].ds_size; j = j + 1) {
        volatile uint64_t* _ptr = (char*)bases[i].base + bases[i].offset[j];
        uint64_t _val = *_ptr;
        ret = (_ptr == ptr) ? _val : ret;
      }
    } if (bases[i].strategy == 2) {
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr-(uint64_t)bases[i].base);
      for (uint32_t j = 0; j < bases[i].ds_size / 4; j = j + 1) {
        __m256i offsets = _mm256_loadu_si256(bases[i].offset+j*4);
        __m256i loaded = _mm256_i64gather_epi64((void*)bases[i].base, offsets, 1);
        __m256i mask = _mm256_cmpeq_epi64(offsets, target);
        res = _mm256_blendv_epi8(res, loaded, mask);
      }
      ret |= mm256_hadd_to_64(res);
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

  __m256i res   = _mm256_setzero_si256();
  // strategy 0: bulk; 1: simple; 2: gather
  if (__builtin_expect_with_probability(strategy == 0, 1, 1)) {
    __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);
    uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~31);
    __m256i step    = _mm256_set1_epi64x(32);
    __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);
    uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 32 + 1;
    for (uint32_t j = 0; j < iter_limit; j = j + 1) {
      uint64_t* head = (char*)first_candidate+32*j;
      __m256i mask = _mm256_cmpeq_epi64(offsets, target);
      __m256i loaded = _mm256_loadu_si256(head);
      res = _mm256_blendv_epi8(res, loaded, mask);
      offsets = _mm256_add_epi64(offsets, step);
    }
    ret |= mm256_hadd_to_64(res);
    ret = ret >> (8*((uint64_t)ptr & 7));
  } else if (strategy == 1) {
    for (uint32_t j = 0; j < ds_size; j = j + 1) {
      volatile uint64_t* _ptr = (char*)base + offset[j];
      uint64_t _val = *_ptr;
      ret = (_ptr == ptr) ? _val : ret;
    }
  } if (strategy == 2) {
    __m256i target    = _mm256_set1_epi64x((uint64_t)ptr-(uint64_t)base);
    for (uint32_t j = 0; j < ds_size / 4; j = j + 1) {
      __m256i offsets = _mm256_loadu_si256(offset+j*4);
      __m256i loaded = _mm256_i64gather_epi64((void*)base, offsets, 1);
      __m256i mask = _mm256_cmpeq_epi64(offsets, target);
      res = _mm256_blendv_epi8(res, loaded, mask);
    }
    ret |= mm256_hadd_to_64(res);
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

  __m256i res   = _mm256_setzero_si256();
  for (uint32_t i = 0; i < base_size; i++) {
    // strategy 0: bulk; 1: simple; 2: gather
    if (__builtin_expect_with_probability(bases[i].strategy == 0, 1, 1)) {
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);
      uint64_t first_candidate = (((uint64_t)bases[i].base+bases[i].begin_offset) & ~31);
      __m256i step    = _mm256_set1_epi64x(32);
      __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);
      uint32_t iter_limit = ((uint64_t)bases[i].base + bases[i].end_offset - first_candidate) / 32 + 1;
      for (uint32_t j = 0; j < iter_limit; j = j + 1) {
        uint64_t* head = (char*)first_candidate+32*j;
        __m256i mask = _mm256_cmpeq_epi64(offsets, target);
        __m256i loaded = _mm256_loadu_si256(head);
        // intentional double load
        volatile __m256i loaded0 = _mm256_loadu_si256(head);
        res = _mm256_blendv_epi8(res, loaded, mask);
        offsets = _mm256_add_epi64(offsets, step);
      }
      ret |= mm256_hadd_to_64(res);
      ret = ret >> (8*((uint64_t)ptr & 7));
    } else if (bases[i].strategy == 1) {
      for (uint32_t j = 0; j < bases[i].ds_size; j = j + 1) {
        volatile uint64_t* _ptr = (char*)bases[i].base + bases[i].offset[j];
        uint64_t _val = *_ptr;
        // intentional double load
        _val = *_ptr;
        ret = (_ptr == ptr) ? _val : ret;
      }
    } if (bases[i].strategy == 2) {
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr-(uint64_t)bases[i].base);
      for (uint32_t j = 0; j < bases[i].ds_size / 4; j = j + 1) {
        __m256i offsets = _mm256_loadu_si256(bases[i].offset+j*4);
        __m256i loaded = _mm256_i64gather_epi64((void*)bases[i].base, offsets, 1);
        // intentional double load
        volatile __m256i loaded0 = _mm256_i64gather_epi64((void*)bases[i].base, offsets, 1);
        __m256i mask = _mm256_cmpeq_epi64(offsets, target);
        res = _mm256_blendv_epi8(res, loaded, mask);
      }
      ret |= mm256_hadd_to_64(res);
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

  __m256i res   = _mm256_setzero_si256();
  // strategy 0: bulk; 1: simple; 2: gather
  if (__builtin_expect_with_probability(strategy == 0, 1, 1)) {
    __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);
    uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~31);
    __m256i step    = _mm256_set1_epi64x(32);
    __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);
    uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 32 + 1;
    for (uint32_t j = 0; j < iter_limit; j = j + 1) {
      uint64_t* head = (char*)first_candidate+32*j;
      __m256i mask = _mm256_cmpeq_epi64(offsets, target);
      __m256i loaded = _mm256_loadu_si256(head);
      // intentional double load
      volatile __m256i loaded0 = _mm256_loadu_si256(head);
      res = _mm256_blendv_epi8(res, loaded, mask);
      offsets = _mm256_add_epi64(offsets, step);
    }
    ret |= mm256_hadd_to_64(res);
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
    __m256i target    = _mm256_set1_epi64x((uint64_t)ptr-(uint64_t)base);
    for (uint32_t j = 0; j < ds_size / 4; j = j + 1) {
      __m256i offsets = _mm256_loadu_si256(offset+j*4);
      __m256i loaded = _mm256_i64gather_epi64((void*)base, offsets, 1);
      // intentional double load
      volatile __m256i loaded0 = _mm256_i64gather_epi64((void*)base, offsets, 1);
      __m256i mask = _mm256_cmpeq_epi64(offsets, target);
      res = _mm256_blendv_epi8(res, loaded, mask);
    }
    ret |= mm256_hadd_to_64(res);
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
    if (__builtin_expect_with_probability(bases[i].strategy == 0, 1, 1)) {\
      __m256i value_vec = _mm256_set1_epi64x((uint64_t)value << (8*((uint64_t)ptr & 7)));\
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);\
      uint64_t first_candidate = (((uint64_t)bases[i].base+bases[i].begin_offset) & ~31);\
\
      uint64_t write_mask_ = (0xffffffffffffffffUL >> (64 - sizeof(value) * 8)) << (8*(((unsigned long) ptr) & 7));\
      __m256i write_mask   = _mm256_set1_epi64x(write_mask_);\
\
      __m256i step    = _mm256_set1_epi64x(32);\
      __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);\
      uint32_t iter_limit = ((uint64_t)bases[i].base + bases[i].end_offset - first_candidate) / 32 + 1;\
      for (char* iter = first_candidate; iter <= (char*)bases[i].base + bases[i].end_offset; iter += 32) {\
        __m256i mask = _mm256_and_si256(_mm256_cmpeq_epi64(offsets, target), write_mask);\
        _mm256_storeu_si256((__m256i *)iter, _mm256_blendv_epi8(_mm256_loadu_si256((__m256i *)iter), value_vec, mask));\
        offsets = _mm256_add_epi64(offsets, step);\
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

#define SECURE_STORE(type) void type ## _secure_store(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {type ## _secure_store_impl(value, ptr, bases, base_size, total_size);}

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
    if (__builtin_expect_with_probability(strategy == 0, 1, 1)) {\
      __m256i value_vec = _mm256_set1_epi64x((uint64_t)value << (8*((uint64_t)ptr & 7)));\
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);\
      uint64_t first_candidate = (((uint64_t)base+begin_offset) & ~31);\
\
      uint64_t write_mask_ = (0xffffffffffffffffUL >> (64 - sizeof(value) * 8)) << (8*(((unsigned long) ptr) & 7));\
      __m256i write_mask   = _mm256_set1_epi64x(write_mask_);\
\
      __m256i step    = _mm256_set1_epi64x(32);\
      __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);\
      uint32_t iter_limit = ((uint64_t)base + end_offset - first_candidate) / 32 + 1;\
      for (char* iter = first_candidate; iter <= (char*)base + end_offset; iter += 32) {\
        __m256i mask = _mm256_and_si256(_mm256_cmpeq_epi64(offsets, target), write_mask);\
        _mm256_storeu_si256((__m256i *)iter, _mm256_blendv_epi8(_mm256_loadu_si256((__m256i *)iter), value_vec, mask));\
        offsets = _mm256_add_epi64(offsets, step);\
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
