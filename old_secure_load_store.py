# secure_load_store_code = """
# #define SECURE_STORE(type) void type ## _secure_store(type val, type *address, void **ds_void, uint32_t ds_size)\\
# {\\
#   if (ds_size == 1 && address) {\\
#     *address = val;\\
#     return;\\
#   }\\
#   type **ds=(type **)ds_void;\\
#   for(unsigned i = 0; i < ds_size; i++)\\
#     *ds[i] = ds[i] == address ? val : *ds[i];\\
# }

# #define SECURE_LOAD(type) type type ## _secure_load(type *address, void **ds_void, uint32_t ds_size)\\
# {\\
#   if (ds_size == 1 && address) {\\
#     return *address;\\
#   }\\
#   type **ds=(type **)ds_void;\\
#   type ret_val;\\
#   for(unsigned i = 0; i < ds_size; i++)\\
#     ret_val = ds[i] == address ? *ds[i] : ret_val;\\
#   return ret_val;\\
# }

# SECURE_STORE(uint8_t)
# SECURE_STORE(uint16_t)
# SECURE_STORE(uint32_t)
# SECURE_STORE(uint64_t)
# SECURE_LOAD(uint8_t)
# SECURE_LOAD(uint16_t)
# SECURE_LOAD(uint32_t)
# SECURE_LOAD(uint64_t)

# """

# uint64_t uint64_t_secure_load(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#   if (total_size == 1) {
#     return *ptr;
#   }
#   __m512i res   = _mm512_setzero_si512();
#   __m256i target    = _mm256_set1_epi32((uint32_t)ptr);
#   for (uint32_t i = 0; i < base_size; i++) {
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 8) {
#       __m256i index = _mm256_setr_epi32(j, j+1, j+2, j+3, j+4, j+5, j+6, j+7);
#       __mmask8 oob_mask = _mm256_cmplt_epi32_mask(index, _mm256_set1_epi32(bases[i].ds_size));

#       // load the ds offsets
#       __m256i offsets = _mm256_mask_loadu_epi32(_mm256_setzero_si256(), oob_mask, (void*)&bases[i].offset[j]);
#       // actually load the memory
#       __m512i loaded = _mm512_mask_i32gather_epi64(res, oob_mask, offsets, bases[i].base, 1);

#       __m256i addresses = _mm256_mask_add_epi32(_mm256_setzero_si256(), oob_mask, _mm256_set1_epi32((uint32_t)bases[i].base), offsets);
#       __mmask8 target_mask = _mm256_cmpeq_epi32_mask(target, addresses);
#       res = _mm512_mask_blend_epi64(target_mask, res, loaded);
#     }
#   }
#   return _mm512_reduce_add_epi64(res);
# }


# secure_load_store_code = """
# struct ds_base {
#   const void *base;
#   const uint32_t *offset;
#   const uint32_t ds_size;
#   const bool is_linear;
# };

# typedef struct ds_base ds_base_t;

# __always_inline uint64_t uint64_t_secure_load(const uint64_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#   if (total_size == 1) {
#     return *ptr;
#   }
#   uint64_t result;
#   for (uint32_t i = 0; i < base_size; i++) {
#     if (bases[i].is_linear) {
#       #pragma clang loop vectorize(enable) interleave(enable)
#       for (uint32_t j = 0; j < bases[i].ds_size; j++) {
#         uint64_t *ptr_ = (uint64_t *)((uint8_t *)bases[i].base + j*sizeof(uint64_t));
#         result += *ptr_ & (-(ptr_ == ptr));
#       }
#     } else {
#       #pragma clang loop vectorize(enable) interleave(enable)
#       for (uint32_t j = 0; j < bases[i].ds_size; j++) {
#         uint64_t *ptr_ = (uint64_t *)((uint8_t *)bases[i].base + bases[i].offset[0] + bases[i].offset[j]);
#         result += *ptr_ & (-(ptr_ == ptr));
#       }
#     }
#   }
#   return result;
# }


# uint32_t uint32_t_secure_load(const uint32_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {
#   return *ptr;
#   if (total_size == 1) {
#     return *ptr;
#   }
#   __m512i res   = _mm512_setzero_si512();
#   __m512i target    = _mm512_set1_epi32((uint32_t)ptr);
#   for (uint32_t i = 0; i < base_size; i++) {
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 16) {
#       __m512i index = _mm512_setr_epi32(j, j+1, j+2, j+3, j+4, j+5, j+6, j+7, j+8, j+9, j+10, j+11, j+12, j+13, j+14, j+15);
#       __mmask16 oob_mask = _mm512_cmplt_epi32_mask(index, _mm512_set1_epi32(bases[i].ds_size));

#       // load the ds offsets
#       __m512i offsets = _mm512_mask_loadu_epi32(_mm512_setzero_si512(), oob_mask, (void*)&bases[i].offset[j]);
#       // actually load the memory
#       __m512i loaded = _mm512_mask_i32gather_epi32(res, oob_mask, offsets, bases[i].base, 1);

#       __m512i addresses = _mm512_mask_add_epi32(_mm512_setzero_si512(), oob_mask, _mm512_set1_epi32((uint32_t)bases[i].base), offsets);
#       __mmask16 target_mask = _mm512_cmpeq_epi32_mask(target, addresses);
#       res = _mm512_mask_blend_epi32(target_mask, res, loaded);
#     }
#   }
#   return _mm512_reduce_add_epi32(res);
# }


# #define DFL_AVX512_GATHER_OBJ_LOAD(type) type type ## _secure_load(const type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {      return (type) uint32_t_secure_load((uint32_t*)ptr, bases, base_size, total_size); }

# DFL_AVX512_GATHER_OBJ_LOAD(uint16_t)
# DFL_AVX512_GATHER_OBJ_LOAD(uint8_t)

# void uint64_t_secure_store(uint64_t value, uint64_t *ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size)
# {

#     *ptr = value;
#     return;
#   if (total_size == 1) {
#     *ptr = value;
#     return;
#   }
#   __m256i target = _mm256_set1_epi32((uint32_t)ptr);
#   __m512i valuev = _mm512_set1_epi64(value);
#   for (uint32_t i = 0; i < base_size; i++)
#   {
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 16)
#     {
#       __m256i index = _mm256_setr_epi32(j, j + 1, j + 2, j + 3, j + 4, j + 5, j + 6, j + 7);
#       __mmask8 oob_mask = _mm256_cmplt_epi32_mask(index, _mm256_set1_epi32(bases[i].ds_size - j));
#       __m256i offsets = _mm256_mask_loadu_epi32(_mm256_setzero_si256(), oob_mask, (void *)&bases[i].offset[j]);
#       __m512i original = _mm512_mask_i32gather_epi64(_mm512_setzero_si512(), oob_mask, offsets, bases[i].base, 1);
#       __m256i addresses = _mm256_mask_add_epi32(_mm256_setzero_si256(), oob_mask, _mm256_set1_epi32((uint32_t)bases[i].base), offsets);
#       __mmask8 target_mask = _mm256_cmpeq_epi32_mask(target, addresses);
#       __m512i updated = _mm512_mask_blend_epi64(target_mask, original, valuev);
#       _mm512_mask_i32scatter_epi64(bases[i].base, oob_mask, offsets, updated, 1);
#     }
#   }
# }

# void uint32_t_secure_store(uint32_t value, uint32_t * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\

#     *ptr = value;
#     return;
#   if (total_size == 1) {
#     *ptr = value;
#     return;
#   }
#   __m512i target    = _mm512_set1_epi32((uint32_t) ptr);
#   __m512i valuev = _mm512_set1_epi32(value);
#   for (uint32_t i = 0; i < base_size; i++) {
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 16) {
#       __m512i index = _mm512_setr_epi32(j, j+1, j+2, j+3, j+4, j+5, j+6, j+7, j+8, j+9, j+10, j+11, j+12, j+13, j+14, j+15);
#       __mmask16 oob_mask = _mm512_cmplt_epi32_mask(index, _mm512_set1_epi32(bases[i].ds_size - j));
#       __m512i offsets = _mm512_mask_loadu_epi32(_mm512_setzero_si512(), oob_mask, (void*)&bases[i].offset[j]);
#       __m512i original = _mm512_mask_i32gather_epi32(_mm512_setzero_si512(), oob_mask, offsets, bases[i].base, 1);
#       __m512i addresses = _mm512_mask_add_epi32(_mm512_setzero_si512(), oob_mask, _mm512_set1_epi32((uint32_t)bases[i].base), offsets);
#       __mmask16 target_mask = _mm512_cmpeq_epi32_mask(target, addresses);
#       __m512i updated     = _mm512_mask_blend_epi32(target_mask, original, valuev);
#       _mm512_mask_i32scatter_epi32(bases[i].base, oob_mask, offsets, updated, 1);
#     }\
#   }\
# }

# #define DFL_AVX512_GATHER_OBJ_STORE(type) void type ## _secure_store(type value, type * ptr, const ds_base_t *bases, uint32_t base_size, uint32_t total_size) {\\
#     *ptr = value;\\
#     return;\\
#   if (total_size == 1) {\\
#     *ptr = value;\\
#     return;\\
#   }\\
#   __m512i target    = _mm512_set1_epi32((uint32_t) ptr);\\
#   __m512i valuev = _mm512_set1_epi32(value);\\
#   uint64_t write_mask_ = (1uL << sizeof(value)) - 1uL; \\
#   write_mask_ |= ((write_mask_ << 4) | (write_mask_ << 8) | (write_mask_ << 12) | (write_mask_ << 16) | (write_mask_ << 20) | (write_mask_ << 24) | (write_mask_ << 28) | (write_mask_ << 32) | (write_mask_ << 36) | (write_mask_ << 40) | (write_mask_ << 44) | (write_mask_ << 48) | (write_mask_ << 52) | (write_mask_ << 56)| (write_mask_ << 60)); \\
#   __mmask64 write_mask   = _cvtu64_mask64(write_mask_); \\
#   for (uint32_t i = 0; i < base_size; i++) {\\
#     for (uint32_t j = 0; j < bases[i].ds_size; j = j + 16) {\\
#       __m512i index = _mm512_setr_epi32(j, j+1, j+2, j+3, j+4, j+5, j+6, j+7, j+8, j+9, j+10, j+11, j+12, j+13, j+14, j+15);\\
#       __mmask16 oob_mask = _mm512_cmplt_epi32_mask(index, _mm512_set1_epi32(bases[i].ds_size - j));\\
#       __m512i offsets = _mm512_mask_loadu_epi32(_mm512_setzero_si512(), oob_mask, (void*)&bases[i].offset[j]);\\
#       __m512i original = _mm512_mask_i32gather_epi32(_mm512_setzero_si512(), oob_mask, offsets, bases[i].base, 1);\\
#       __m512i addresses = _mm512_mask_add_epi32(_mm512_setzero_si512(), oob_mask, _mm512_set1_epi32((uint32_t)bases[i].base), offsets);\\
#       __mmask16 target_mask = _mm512_cmpeq_epi32_mask(target, addresses);\\
#       __m512i updated     = _mm512_mask_blend_epi32(target_mask, original, valuev);\\
#       __m512i correct_portion_updated = _mm512_mask_blend_epi8(write_mask, original, updated); \\
#       _mm512_mask_i32scatter_epi32(bases[i].base, oob_mask, offsets, correct_portion_updated, 1);\\
#     }\\
#   }\\
# }

# DFL_AVX512_GATHER_OBJ_STORE(uint16_t)
# DFL_AVX512_GATHER_OBJ_STORE(uint8_t)
# """