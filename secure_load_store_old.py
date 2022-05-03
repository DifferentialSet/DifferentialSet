

# secure_load_store_code = """
# struct ds_base {
#   const void *base;
#   const uint32_t *offset;
#   const uint32_t ds_size;
#   const bool is_linear;
# };
# typedef struct ds_base ds_base_t;

# #define SECURE_LOAD(type) __always_inline type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
#   if (total_size == 1) {\\
#     return *ptr;\\
#   }\\
#   type result;\\
#   for (uint32_t i = 0; i < base_size; i++) {\\
#     if (bases[i].is_linear) {\\
#       for (uint32_t j = 0; j < bases[i].ds_size; j++) {\\
#         volatile type *ptr_ = (volatile type *)((uint8_t *)bases[i].base + j*sizeof(type));\\
#         type result_ = *ptr_;\\
#         result = ptr_ == ptr ? result_ : result;\\
#       }\\
#     } else {\\
#       for (uint32_t j = 0; j < bases[i].ds_size; j++) {\\
#         volatile type *ptr_ = (volatile type *)((uint8_t *)bases[i].base + bases[i].offset[0] + bases[i].offset[j]);\\
#         type result_ = *ptr_;\\
#         result = ptr_ == ptr ? result_ : result;\\
#       }\\
#     }\\
#   }\\
#   return result;\\
# }
# SECURE_LOAD(uint64_t)
# SECURE_LOAD(uint32_t)
# SECURE_LOAD(uint16_t)
# SECURE_LOAD(uint8_t)

# #define SECURE_STORE(type) __always_inline void type ## _secure_store(type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
#   if (total_size == 1) {\\
#     *ptr = value;\\
#     return;\\
#   }\\
#   for (uint32_t i = 0; i < base_size; i++) {\\
#       for (uint32_t j = 0; j < bases[i].ds_size; j++) {\\
#         volatile type *ptr_ = (volatile type *)((uint8_t *)bases[i].base + bases[i].offset[0] + bases[i].offset[j]);\\
#         type _prev_val = *ptr_;\\
#         *(volatile type*)ptr_ = ptr_ == ptr ? value : _prev_val;\\
#       }\\
#   }\\
# }

# SECURE_STORE(uint64_t)
# SECURE_STORE(uint32_t)
# SECURE_STORE(uint16_t)
# SECURE_STORE(uint8_t)

# """




# secure_load_store_code = """
# struct ds_base {
#   const void *base;
#   const uint32_t *offset;
#   const uint32_t ds_size;
#   const bool is_linear;
# };

# typedef struct ds_base ds_base_t;

# uint64_t uint64_t_secure_load(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#   return *ptr;
# }


# uint32_t uint32_t_secure_load(const uint32_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#   if (total_size == 1) {
#     return *ptr;
#   }
#   __m256i res   = _mm256_setzero_si256();
#   __m256i target    = _mm256_set1_epi32((uint32_t)ptr);
#   for (uint32_t i = 0; i < base_size; i++) {
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 8) {
#       __m256i index = _mm256_setr_epi32(j, j+1, j+2, j+3, j+4, j+5, j+6, j+7);

#       // load the ds offsets
#       __m256i offsets = _mm256_stream_load_si256((void*)&bases[i].offset[j]);

#       // actually load the memory
#       __m256i loaded = _mm256_i32gather_epi32((void*)bases[i].base, offsets, 1);

#       __m256i addresses = _mm256_add_epi32(_mm256_set1_epi32((uint32_t)bases[i].base), offsets);

#       // extract the value where addresses == target
#       __m256i mask = _mm256_cmpeq_epi32(addresses, target);
#       __m256i and = _mm256_and_si256(mask, loaded);
      
#       res = _mm256_add_epi32(res, and);
#     }
#   }

#   __m128i vlow = _mm256_castsi256_si128(res);
#   __m128i vhigh = _mm256_extracti128_si256(res, 1);
#   vlow = _mm_add_epi32(vlow, vhigh);
#   __m128i high64 = _mm_unpackhi_epi32(vlow, vlow);
#   return _mm_cvtsi128_si32(_mm_add_epi32(vlow, high64));
# }


# #define DFL_AVX512_GATHER_OBJ_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {      return (type) uint32_t_secure_load((uint32_t*)ptr, bases, base_size, total_size); }

# DFL_AVX512_GATHER_OBJ_LOAD(uint16_t)
# DFL_AVX512_GATHER_OBJ_LOAD(uint8_t)

# void uint64_t_secure_store(uint64_t value, uint64_t *ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size)
# {

#     *ptr = value;
#     return;
# }

# void uint32_t_secure_store(uint32_t value, uint32_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#     *ptr = value;
#     return;}

# #define DFL_AVX512_GATHER_OBJ_STORE(type) void type ## _secure_store(type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\
#     *ptr = value;\
#     return;\
# }

# DFL_AVX512_GATHER_OBJ_STORE(uint16_t)
# DFL_AVX512_GATHER_OBJ_STORE(uint8_t)
# """

secure_load_store_code = """


struct ds_base {
  const void *base;
  const uint64_t *offset;
  const uint32_t ds_size;
  const bool is_linear;
  const uint32_t begin_offset;
  const uint32_t end_offset;
};
typedef struct ds_base ds_base_t;

uint32_t hsum_epi32_avx(__m128i x)
{
    __m128i hi64  = _mm_unpackhi_epi64(x, x);           // 3-operand non-destructive AVX lets us save a byte without needing a movdqa
    __m128i sum64 = _mm_add_epi32(hi64, x);
    __m128i hi32  = _mm_shuffle_epi32(sum64, _MM_SHUFFLE(2, 3, 0, 1));    // Swap the low two elements
    __m128i sum32 = _mm_add_epi32(sum64, hi32);
    return _mm_cvtsi128_si32(sum32);       // movd
}

uint32_t mm256_hadd_to_32(__m256i v)
{
    __m128i sum128 = _mm_add_epi32( 
                 _mm256_castsi256_si128(v),
                 _mm256_extracti128_si256(v, 1));
    return hsum_epi32_avx(sum128);
}

uint64_t mm256_hadd_to_64(__m256i v) {
    __m128i vlow    = _mm256_castsi256_si128(v);
    __m128i vhigh   = _mm256_extracti128_si256(v, 1);
            vlow    = _mm_add_epi64(vlow, vhigh);
    __m128i vhigh64 = _mm_unpackhi_epi64(vlow, vlow);
    uint64_t ret = _mm_cvtsi128_si64(_mm_add_epi64(vlow, vhigh64));
    return ret;
}

__attribute__((noinline)) uint64_t uint64_t_secure_load_impl(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  __m256i res   = _mm256_setzero_si256();
  bool is_linear = true;
  for (uint32_t i = 0; i < base_size; i++) {
    if (bases[i].is_linear) {
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
    } else {
      is_linear = false;
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr-(uint64_t)bases[i].base);
      for (uint32_t i = 0; i < base_size; i++) {
        for (uint32_t j = 0; j < bases[i].ds_size / 4; j = j + 1) {
          __m256i offsets = _mm256_loadu_si256(bases[i].offset+j*4);
          __m256i loaded = _mm256_i64gather_epi64((void*)bases[i].base, offsets, 1);
          __m256i mask = _mm256_cmpeq_epi64(offsets, target);
          res = _mm256_blendv_epi8(res, loaded, mask);
        }
      }
    }
  }
  uint64_t ret = mm256_hadd_to_64(res);
  if (is_linear) {
    ret = ret >> (8*((uint64_t)ptr & 7));
  }
  return ret;
}

uint64_t uint64_t_secure_load(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  if (total_size == 1) {
    return *ptr;
  }
  return uint64_t_secure_load_impl(ptr, bases, base_size, total_size);
}

uint64_t uint64_t_secure_load_sensitive(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
  if (total_size == 1) {
    return *(volatile uint64_t*)((char*)bases->base + bases->begin_offset);
  }
  return uint64_t_secure_load_impl(ptr, bases, base_size, total_size);
}


//#define SECURE_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_load((const uint32_t *)ptr, bases, base_size, total_size); assert(ret == *ptr); return ret; }
#define SECURE_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { return (type)uint64_t_secure_load((const uint32_t *)ptr, bases, base_size, total_size);}
SECURE_LOAD(uint32_t)
SECURE_LOAD(uint16_t)
SECURE_LOAD(uint8_t)

//#define SECURE_LOAD_SENSITIVE(type) type type ## _secure_load_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_load_sensitive((const uint32_t *)ptr, bases, base_size, total_size); assert(!ptr || ret == *ptr); return ret; }
#define SECURE_LOAD_SENSITIVE(type) type type ## _secure_load_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { type ret = uint64_t_secure_load_sensitive((const uint32_t *)ptr, bases, base_size, total_size); return ret; }
// #define SECURE_LOAD_SENSITIVE(type) type type ## _secure_load_sensitive(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) { return (type)uint64_t_secure_load_sensitive((const uint32_t *)ptr, bases, base_size, total_size);}
SECURE_LOAD_SENSITIVE(uint32_t)
SECURE_LOAD_SENSITIVE(uint16_t)
SECURE_LOAD_SENSITIVE(uint8_t)


#define SECURE_STORE_IMPL(type) __attribute__((noinline)) void type ## _secure_store_impl(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
  __m256i res   = _mm256_setzero_si256();\\
  bool is_linear = true;\\
  for (uint32_t i = 0; i < base_size; i++) {\\
    if (bases[i].is_linear) {\\
      __m256i value_vec = _mm256_set1_epi64x((uint64_t)value << (8*((uint64_t)ptr & 7)));\\
      __m256i target    = _mm256_set1_epi64x((uint64_t)ptr & ~7);\\
      uint64_t first_candidate = (((uint64_t)bases[i].base+bases[i].begin_offset) & ~31);\\
\\
      uint64_t write_mask_ = (0xffffffffffffffffUL >> (64 - sizeof(value) * 8)) << (8*(((unsigned long) ptr) & 7));\\
      __m256i write_mask   = _mm256_set1_epi64x(write_mask_);\\
\\
      __m256i step    = _mm256_set1_epi64x(32);\\
      __m256i offsets = _mm256_setr_epi64x(first_candidate, first_candidate+8, first_candidate+16, first_candidate+24);\\
      uint32_t iter_limit = ((uint64_t)bases[i].base + bases[i].end_offset - first_candidate) / 32 + 1;\\
      for (char* iter = first_candidate; iter <= (char*)bases[i].base + bases[i].end_offset; iter += 32) {\\
        __m256i mask = _mm256_and_si256(_mm256_cmpeq_epi64(offsets, target), write_mask);\\
        _mm256_storeu_si256((__m256i *)iter, _mm256_blendv_epi8(_mm256_loadu_si256((__m256i *)iter), value_vec, mask));\\
        offsets = _mm256_add_epi64(offsets, step);\\
      }\\
    } else {\\
      for (uint32_t j = 0; j < bases[i].ds_size ; j++) {\\
        if ((char*)bases[i].base+bases[i].offset[j] == ptr) {\\
          *(volatile uint32_t*)((char*)bases[i].base+bases[i].offset[j]) = value;\\
        } else {\\
          *(volatile uint32_t*)((char*)bases[i].base+bases[i].offset[j]);\\
        }\\
      }\\
    }\\
  }\\
}

SECURE_STORE_IMPL(uint64_t)
SECURE_STORE_IMPL(uint32_t)
SECURE_STORE_IMPL(uint16_t)
SECURE_STORE_IMPL(uint8_t)

#define SECURE_STORE(type) void type ## _secure_store(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
  if (total_size == 1) {\\
    if (ptr) {\\
      *ptr = value;\\
    }\\
  } else {\\
    type ## _secure_store_impl(value, ptr, bases, base_size, total_size);\\
  }\\
}

SECURE_STORE(uint64_t)
SECURE_STORE(uint32_t)
SECURE_STORE(uint16_t)
SECURE_STORE(uint8_t)

#define SECURE_STORE_SENSITIVE(type) void type ## _secure_store_sensitive(const type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
  if (total_size == 1) {\\
    volatile type * _ptr = (char*)bases->base + bases->offset[0];\\
    type tmp = *_ptr;\\
    if (ptr) {\\
      *(volatile type*)_ptr = value;\\
    } else {\\
      *(volatile type*)_ptr = tmp;\\
    }\\
  } else {\\
    if (ptr) {\\
      type ## _secure_store_impl(value, ptr, bases, base_size, total_size);\\
    } else {\\
      (type)uint64_t_secure_load_impl(ptr, bases, base_size, total_size);\\
    }\\
  }\\
}

SECURE_STORE_SENSITIVE(uint64_t)
SECURE_STORE_SENSITIVE(uint32_t)
SECURE_STORE_SENSITIVE(uint16_t)
SECURE_STORE_SENSITIVE(uint8_t)
"""