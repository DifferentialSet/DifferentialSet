#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-fcrypt_ctx
// file fcrypt.c line 55
struct fcrypt_ctx;







// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// fcrypt_decrypt
// file fcrypt.c line 270
void fcrypt_decrypt(struct fcrypt_ctx *ctx, uint8_t *dst, const uint8_t *src);
// fcrypt_encrypt
// file fcrypt.c line 238
void fcrypt_encrypt(struct fcrypt_ctx *ctx, uint8_t *dst, const uint8_t *src);
// fcrypt_setkey
// file fcrypt.c line 304
signed int fcrypt_setkey(const uint8_t *key, struct fcrypt_ctx *ctx, unsigned int keylen);

struct fcrypt_ctx
{
  // sched
  uint32_t sched[16];
};


// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// fcrypt_setkey__return_value
// 
static signed int fcrypt_setkey__return_value;
// in_key
// file fcrypt.c line 392
static uint8_t in_key[32]={ 228, 159, 237, 87, 198, 37, 198, 191, 202, 77, 55, 65, 82, 28, 239, 108, 250, 35, 56, 26, 111, 244, 109, 44, 248, 2, 0, 61, 174, 120, 117, 166 };
// in_pub
// file fcrypt.c line 393
static uint8_t in_pub[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// main__return_value
// 
static signed int main__return_value;
// out
// file fcrypt.c line 394
static uint8_t out[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// read__return_value
// 
static ssize_t read__return_value;
// sbox0
// file fcrypt.c line 79
static const uint32_t sbox0[256]={ (const uint32_t)(0xEA << 3), (const uint32_t)(0x7F << 3), (const uint32_t)(0xB2 << 3), (const uint32_t)(0x64 << 3), (const uint32_t)(0x9D << 3), (const uint32_t)(0xB0 << 3), (const uint32_t)(0xD9 << 3), (const uint32_t)(0x11 << 3), (const uint32_t)(0xCD << 3), (const uint32_t)(0x86 << 3), (const uint32_t)(0x86 << 3), (const uint32_t)(0x91 << 3), (const uint32_t)(0xA << 3), (const uint32_t)(0xB2 << 3), (const uint32_t)(0x93 << 3), (const uint32_t)(0x6 << 3), (const uint32_t)(0xE << 3), (const uint32_t)(0x6 << 3), (const uint32_t)(0xD2 << 3), (const uint32_t)(0x65 << 3), (const uint32_t)(0x73 << 3), (const uint32_t)(0xC5 << 3), (const uint32_t)(0x28 << 3), (const uint32_t)(0x60 << 3), (const uint32_t)(0xF2 << 3), (const uint32_t)(0x20 << 3), (const uint32_t)(0xB5 << 3), (const uint32_t)(0x38 << 3), (const uint32_t)(0x7E << 3), (const uint32_t)(0xDA << 3), (const uint32_t)(0x9F << 3), (const uint32_t)(0xE3 << 3), (const uint32_t)(0xD2 << 3), (const uint32_t)(0xCF << 3), (const uint32_t)(0xC4 << 3), (const uint32_t)(0x3C << 3), (const uint32_t)(0x61 << 3), (const uint32_t)(0xFF << 3), (const uint32_t)(0x4A << 3), (const uint32_t)(0x4A << 3), (const uint32_t)(0x35 << 3), (const uint32_t)(0xAC << 3), (const uint32_t)(0xAA << 3), (const uint32_t)(0x5F << 3), (const uint32_t)(0x2B << 3), (const uint32_t)(0xBB << 3), (const uint32_t)(0xBC << 3), (const uint32_t)(0x53 << 3), (const uint32_t)(0x4E << 3), (const uint32_t)(0x9D << 3), (const uint32_t)(0x78 << 3), (const uint32_t)(0xA3 << 3), (const uint32_t)(0xDC << 3), (const uint32_t)(0x9 << 3), (const uint32_t)(0x32 << 3), (const uint32_t)(0x10 << 3), (const uint32_t)(0xC6 << 3), (const uint32_t)(0x6F << 3), (const uint32_t)(0x66 << 3), (const uint32_t)(0xD6 << 3), (const uint32_t)(0xAB << 3), (const uint32_t)(0xA9 << 3), (const uint32_t)(0xAF << 3), (const uint32_t)(0xFD << 3), (const uint32_t)(0x3B << 3), (const uint32_t)(0x95 << 3), (const uint32_t)(0xE8 << 3), (const uint32_t)(0x34 << 3), (const uint32_t)(0x9A << 3), (const uint32_t)(0x81 << 3), (const uint32_t)(0x72 << 3), (const uint32_t)(0x80 << 3), (const uint32_t)(0x9C << 3), (const uint32_t)(0xF3 << 3), (const uint32_t)(0xEC << 3), (const uint32_t)(0xDA << 3), (const uint32_t)(0x9F << 3), (const uint32_t)(0x26 << 3), (const uint32_t)(0x76 << 3), (const uint32_t)(0x15 << 3), (const uint32_t)(0x3E << 3), (const uint32_t)(0x55 << 3), (const uint32_t)(0x4D << 3), (const uint32_t)(0xDE << 3), (const uint32_t)(0x84 << 3), (const uint32_t)(0xEE << 3), (const uint32_t)(0xAD << 3), (const uint32_t)(0xC7 << 3), (const uint32_t)(0xF1 << 3), (const uint32_t)(0x6B << 3), (const uint32_t)(0x3D << 3), (const uint32_t)(0xD3 << 3), (const uint32_t)(0x4 << 3), (const uint32_t)(0x49 << 3), (const uint32_t)(0xAA << 3), (const uint32_t)(0x24 << 3), (const uint32_t)(0xB << 3), (const uint32_t)(0x8A << 3), (const uint32_t)(0x83 << 3), (const uint32_t)(0xBA << 3), (const uint32_t)(0xFA << 3), (const uint32_t)(0x85 << 3), (const uint32_t)(0xA0 << 3), (const uint32_t)(0xA8 << 3), (const uint32_t)(0xB1 << 3), (const uint32_t)(0xD4 << 3), (const uint32_t)(0x1 << 3), (const uint32_t)(0xD8 << 3), (const uint32_t)(0x70 << 3), (const uint32_t)(0x64 << 3), (const uint32_t)(0xF0 << 3), (const uint32_t)(0x51 << 3), (const uint32_t)(0xD2 << 3), (const uint32_t)(0xC3 << 3), (const uint32_t)(0xA7 << 3), (const uint32_t)(0x75 << 3), (const uint32_t)(0x8C << 3), (const uint32_t)(0xA5 << 3), (const uint32_t)(0x64 << 3), (const uint32_t)(0xEF << 3), (const uint32_t)(0x10 << 3), (const uint32_t)(0x4E << 3), (const uint32_t)(0xB7 << 3), (const uint32_t)(0xC6 << 3), (const uint32_t)(0x61 << 3), (const uint32_t)(0x3 << 3), (const uint32_t)(0xEB << 3), (const uint32_t)(0x44 << 3), (const uint32_t)(0x3D << 3), (const uint32_t)(0xE5 << 3), (const uint32_t)(0xB3 << 3), (const uint32_t)(0x5B << 3), (const uint32_t)(0xAE << 3), (const uint32_t)(0xD5 << 3), (const uint32_t)(0xAD << 3), (const uint32_t)(0x1D << 3), (const uint32_t)(0xFA << 3), (const uint32_t)(0x5A << 3), (const uint32_t)(0x1E << 3), (const uint32_t)(0x33 << 3), (const uint32_t)(0xAB << 3), (const uint32_t)(0x93 << 3), (const uint32_t)(0xA2 << 3), (const uint32_t)(0xB7 << 3), (const uint32_t)(0xE7 << 3), (const uint32_t)(0xA8 << 3), (const uint32_t)(0x45 << 3), (const uint32_t)(0xA4 << 3), (const uint32_t)(0xCD << 3), (const uint32_t)(0x29 << 3), (const uint32_t)(0x63 << 3), (const uint32_t)(0x44 << 3), (const uint32_t)(0xB6 << 3), (const uint32_t)(0x69 << 3), (const uint32_t)(0x7E << 3), (const uint32_t)(0x2E << 3), (const uint32_t)(0x62 << 3), (const uint32_t)(0x3 << 3), (const uint32_t)(0xC8 << 3), (const uint32_t)(0xE0 << 3), (const uint32_t)(0x17 << 3), (const uint32_t)(0xBB << 3), (const uint32_t)(0xC7 << 3), (const uint32_t)(0xF3 << 3), (const uint32_t)(0x3F << 3), (const uint32_t)(0x36 << 3), (const uint32_t)(0xBA << 3), (const uint32_t)(0x71 << 3), (const uint32_t)(0x8E << 3), (const uint32_t)(0x97 << 3), (const uint32_t)(0x65 << 3), (const uint32_t)(0x60 << 3), (const uint32_t)(0x69 << 3), (const uint32_t)(0xB6 << 3), (const uint32_t)(0xF6 << 3), (const uint32_t)(0xE6 << 3), (const uint32_t)(0x6E << 3), (const uint32_t)(0xE0 << 3), (const uint32_t)(0x81 << 3), (const uint32_t)(0x59 << 3), (const uint32_t)(0xE8 << 3), (const uint32_t)(0xAF << 3), (const uint32_t)(0xDD << 3), (const uint32_t)(0x95 << 3), (const uint32_t)(0x22 << 3), (const uint32_t)(0x99 << 3), (const uint32_t)(0xFD << 3), (const uint32_t)(0x63 << 3), (const uint32_t)(0x19 << 3), (const uint32_t)(0x74 << 3), (const uint32_t)(0x61 << 3), (const uint32_t)(0xB1 << 3), (const uint32_t)(0xB6 << 3), (const uint32_t)(0x5B << 3), (const uint32_t)(0xAE << 3), (const uint32_t)(0x54 << 3), (const uint32_t)(0xB3 << 3), (const uint32_t)(0x70 << 3), (const uint32_t)(0xFF << 3), (const uint32_t)(0xC6 << 3), (const uint32_t)(0x3B << 3), (const uint32_t)(0x3E << 3), (const uint32_t)(0xC1 << 3), (const uint32_t)(0xD7 << 3), (const uint32_t)(0xE1 << 3), (const uint32_t)(0xE << 3), (const uint32_t)(0x76 << 3), (const uint32_t)(0xE5 << 3), (const uint32_t)(0x36 << 3), (const uint32_t)(0x4F << 3), (const uint32_t)(0x59 << 3), (const uint32_t)(0xC7 << 3), (const uint32_t)(0x8 << 3), (const uint32_t)(0x6E << 3), (const uint32_t)(0x82 << 3), (const uint32_t)(0xA6 << 3), (const uint32_t)(0x93 << 3), (const uint32_t)(0xC4 << 3), (const uint32_t)(0xAA << 3), (const uint32_t)(0x26 << 3), (const uint32_t)(0x49 << 3), (const uint32_t)(0xE0 << 3), (const uint32_t)(0x21 << 3), (const uint32_t)(0x64 << 3), (const uint32_t)(0x7 << 3), (const uint32_t)(0x9F << 3), (const uint32_t)(0x64 << 3), (const uint32_t)(0x81 << 3), (const uint32_t)(0x9C << 3), (const uint32_t)(0xBF << 3), (const uint32_t)(0xF9 << 3), (const uint32_t)(0xD1 << 3), (const uint32_t)(0x43 << 3), (const uint32_t)(0xF8 << 3), (const uint32_t)(0xB6 << 3), (const uint32_t)(0xB9 << 3), (const uint32_t)(0xF1 << 3), (const uint32_t)(0x24 << 3), (const uint32_t)(0x75 << 3), (const uint32_t)(0x3 << 3), (const uint32_t)(0xE4 << 3), (const uint32_t)(0xB0 << 3), (const uint32_t)(0x99 << 3), (const uint32_t)(0x46 << 3), (const uint32_t)(0x3D << 3), (const uint32_t)(0xF5 << 3), (const uint32_t)(0xD1 << 3), (const uint32_t)(0x39 << 3), (const uint32_t)(0x72 << 3), (const uint32_t)(0x12 << 3), (const uint32_t)(0xF6 << 3), (const uint32_t)(0xBA << 3), (const uint32_t)(0xC << 3), (const uint32_t)(0xD << 3), (const uint32_t)(0x42 << 3), (const uint32_t)(0x2E << 3) };
// sbox1
// file fcrypt.c line 116
static const uint32_t sbox1[256]={ (const uint32_t)(0x77 << 27 | 0x77 >> 5), 
    (const uint32_t)(0x14 << 27 | 0x14 >> 5), 
    (const uint32_t)(0xA6 << 27 | 0xA6 >> 5), 
    (const uint32_t)(0xFE << 27 | 0xFE >> 5), 
    (const uint32_t)(0xB2 << 27 | 0xB2 >> 5), 
    (const uint32_t)(0x5E << 27 | 0x5E >> 5), 
    (const uint32_t)(0x8C << 27 | 0x8C >> 5), 
    (const uint32_t)(0x3E << 27 | 0x3E >> 5), 
    (const uint32_t)(0x67 << 27 | 0x67 >> 5), 
    (const uint32_t)(0x6C << 27 | 0x6C >> 5), 
    (const uint32_t)(0xA1 << 27 | 0xA1 >> 5), 
    (const uint32_t)(0xD << 27 | 0xD >> 5), (const uint32_t)(0xC2 << 27 | 0xC2 >> 5), 
    (const uint32_t)(0xA2 << 27 | 0xA2 >> 5), 
    (const uint32_t)(0xC1 << 27 | 0xC1 >> 5), 
    (const uint32_t)(0x85 << 27 | 0x85 >> 5), 
    (const uint32_t)(0x6C << 27 | 0x6C >> 5), 
    (const uint32_t)(0x7B << 27 | 0x7B >> 5), 
    (const uint32_t)(0x67 << 27 | 0x67 >> 5), 
    (const uint32_t)(0xC6 << 27 | 0xC6 >> 5), 
    (const uint32_t)(0x23 << 27 | 0x23 >> 5), 
    (const uint32_t)(0xE3 << 27 | 0xE3 >> 5), 
    (const uint32_t)(0xF2 << 27 | 0xF2 >> 5), 
    (const uint32_t)(0x89 << 27 | 0x89 >> 5), 
    (const uint32_t)(0x50 << 27 | 0x50 >> 5), 
    (const uint32_t)(0x9C << 27 | 0x9C >> 5), 
    (const uint32_t)(0x3 << 27 | 0x3 >> 5), (const uint32_t)(0xB7 << 27 | 0xB7 >> 5), 
    (const uint32_t)(0x73 << 27 | 0x73 >> 5), 
    (const uint32_t)(0xE6 << 27 | 0xE6 >> 5), 
    (const uint32_t)(0xE1 << 27 | 0xE1 >> 5), 
    (const uint32_t)(0x39 << 27 | 0x39 >> 5), 
    (const uint32_t)(0x31 << 27 | 0x31 >> 5), 
    (const uint32_t)(0x2C << 27 | 0x2C >> 5), 
    (const uint32_t)(0x27 << 27 | 0x27 >> 5), 
    (const uint32_t)(0x9F << 27 | 0x9F >> 5), 
    (const uint32_t)(0xA5 << 27 | 0xA5 >> 5), 
    (const uint32_t)(0x69 << 27 | 0x69 >> 5), 
    (const uint32_t)(0x44 << 27 | 0x44 >> 5), 
    (const uint32_t)(0xD6 << 27 | 0xD6 >> 5), 
    (const uint32_t)(0x23 << 27 | 0x23 >> 5), 
    (const uint32_t)(0x83 << 27 | 0x83 >> 5), 
    (const uint32_t)(0x98 << 27 | 0x98 >> 5), 
    (const uint32_t)(0x7D << 27 | 0x7D >> 5), 
    (const uint32_t)(0x3C << 27 | 0x3C >> 5), 
    (const uint32_t)(0xB4 << 27 | 0xB4 >> 5), 
    (const uint32_t)(0x2D << 27 | 0x2D >> 5), 
    (const uint32_t)(0x99 << 27 | 0x99 >> 5), 
    (const uint32_t)(0x1C << 27 | 0x1C >> 5), 
    (const uint32_t)(0x1F << 27 | 0x1F >> 5), 
    (const uint32_t)(0x8C << 27 | 0x8C >> 5), 
    (const uint32_t)(0x20 << 27 | 0x20 >> 5), 
    (const uint32_t)(0x3 << 27 | 0x3 >> 5), (const uint32_t)(0x7C << 27 | 0x7C >> 5), 
    (const uint32_t)(0x5F << 27 | 0x5F >> 5), 
    (const uint32_t)(0xAD << 27 | 0xAD >> 5), 
    (const uint32_t)(0xF4 << 27 | 0xF4 >> 5), 
    (const uint32_t)(0xFA << 27 | 0xFA >> 5), 
    (const uint32_t)(0x95 << 27 | 0x95 >> 5), 
    (const uint32_t)(0xCA << 27 | 0xCA >> 5), 
    (const uint32_t)(0x76 << 27 | 0x76 >> 5), 
    (const uint32_t)(0x44 << 27 | 0x44 >> 5), 
    (const uint32_t)(0xCD << 27 | 0xCD >> 5), 
    (const uint32_t)(0xB6 << 27 | 0xB6 >> 5), 
    (const uint32_t)(0xB8 << 27 | 0xB8 >> 5), 
    (const uint32_t)(0xA1 << 27 | 0xA1 >> 5), 
    (const uint32_t)(0xA1 << 27 | 0xA1 >> 5), 
    (const uint32_t)(0xBE << 27 | 0xBE >> 5), 
    (const uint32_t)(0x9E << 27 | 0x9E >> 5), 
    (const uint32_t)(0x54 << 27 | 0x54 >> 5), 
    (const uint32_t)(0x8F << 27 | 0x8F >> 5), 
    (const uint32_t)(0xB << 27 | 0xB >> 5), (const uint32_t)(0x16 << 27 | 0x16 >> 5), 
    (const uint32_t)(0x74 << 27 | 0x74 >> 5), 
    (const uint32_t)(0x31 << 27 | 0x31 >> 5), 
    (const uint32_t)(0x8A << 27 | 0x8A >> 5), 
    (const uint32_t)(0x23 << 27 | 0x23 >> 5), 
    (const uint32_t)(0x17 << 27 | 0x17 >> 5), 
    (const uint32_t)(0x4 << 27 | 0x4 >> 5), (const uint32_t)(0xFA << 27 | 0xFA >> 5), 
    (const uint32_t)(0x79 << 27 | 0x79 >> 5), 
    (const uint32_t)(0x84 << 27 | 0x84 >> 5), 
    (const uint32_t)(0xB1 << 27 | 0xB1 >> 5), 
    (const uint32_t)(0xF5 << 27 | 0xF5 >> 5), 
    (const uint32_t)(0x13 << 27 | 0x13 >> 5), 
    (const uint32_t)(0xAB << 27 | 0xAB >> 5), 
    (const uint32_t)(0xB5 << 27 | 0xB5 >> 5), 
    (const uint32_t)(0x2E << 27 | 0x2E >> 5), 
    (const uint32_t)(0xAA << 27 | 0xAA >> 5), 
    (const uint32_t)(0xC << 27 | 0xC >> 5), (const uint32_t)(0x60 << 27 | 0x60 >> 5), 
    (const uint32_t)(0x6B << 27 | 0x6B >> 5), 
    (const uint32_t)(0x5B << 27 | 0x5B >> 5), 
    (const uint32_t)(0xC4 << 27 | 0xC4 >> 5), 
    (const uint32_t)(0x4B << 27 | 0x4B >> 5), 
    (const uint32_t)(0xBC << 27 | 0xBC >> 5), 
    (const uint32_t)(0xE2 << 27 | 0xE2 >> 5), 
    (const uint32_t)(0xAF << 27 | 0xAF >> 5), 
    (const uint32_t)(0x45 << 27 | 0x45 >> 5), 
    (const uint32_t)(0x73 << 27 | 0x73 >> 5), 
    (const uint32_t)(0xFA << 27 | 0xFA >> 5), 
    (const uint32_t)(0xC9 << 27 | 0xC9 >> 5), 
    (const uint32_t)(0x49 << 27 | 0x49 >> 5), 
    (const uint32_t)(0xCD << 27 | 0xCD >> 5), 
    (const uint32_t)(0x0 << 27 | 0x0 >> 5), (const uint32_t)(0x92 << 27 | 0x92 >> 5), 
    (const uint32_t)(0x7D << 27 | 0x7D >> 5), 
    (const uint32_t)(0x97 << 27 | 0x97 >> 5), 
    (const uint32_t)(0x7A << 27 | 0x7A >> 5), 
    (const uint32_t)(0x18 << 27 | 0x18 >> 5), 
    (const uint32_t)(0x60 << 27 | 0x60 >> 5), 
    (const uint32_t)(0x3D << 27 | 0x3D >> 5), 
    (const uint32_t)(0xCF << 27 | 0xCF >> 5), 
    (const uint32_t)(0x5B << 27 | 0x5B >> 5), 
    (const uint32_t)(0xDE << 27 | 0xDE >> 5), 
    (const uint32_t)(0xC6 << 27 | 0xC6 >> 5), 
    (const uint32_t)(0xE2 << 27 | 0xE2 >> 5), 
    (const uint32_t)(0xE6 << 27 | 0xE6 >> 5), 
    (const uint32_t)(0xBB << 27 | 0xBB >> 5), 
    (const uint32_t)(0x8B << 27 | 0x8B >> 5), 
    (const uint32_t)(0x6 << 27 | 0x6 >> 5), (const uint32_t)(0xDA << 27 | 0xDA >> 5), 
    (const uint32_t)(0x8 << 27 | 0x8 >> 5), (const uint32_t)(0x15 << 27 | 0x15 >> 5), 
    (const uint32_t)(0x1B << 27 | 0x1B >> 5), 
    (const uint32_t)(0x88 << 27 | 0x88 >> 5), 
    (const uint32_t)(0x6A << 27 | 0x6A >> 5), 
    (const uint32_t)(0x17 << 27 | 0x17 >> 5), 
    (const uint32_t)(0x89 << 27 | 0x89 >> 5), 
    (const uint32_t)(0xD0 << 27 | 0xD0 >> 5), 
    (const uint32_t)(0xA9 << 27 | 0xA9 >> 5), 
    (const uint32_t)(0xC1 << 27 | 0xC1 >> 5), 
    (const uint32_t)(0xC9 << 27 | 0xC9 >> 5), 
    (const uint32_t)(0x70 << 27 | 0x70 >> 5), 
    (const uint32_t)(0x6B << 27 | 0x6B >> 5), 
    (const uint32_t)(0xE5 << 27 | 0xE5 >> 5), 
    (const uint32_t)(0x43 << 27 | 0x43 >> 5), 
    (const uint32_t)(0xF4 << 27 | 0xF4 >> 5), 
    (const uint32_t)(0x68 << 27 | 0x68 >> 5), 
    (const uint32_t)(0xC8 << 27 | 0xC8 >> 5), 
    (const uint32_t)(0xD3 << 27 | 0xD3 >> 5), 
    (const uint32_t)(0x84 << 27 | 0x84 >> 5), 
    (const uint32_t)(0x28 << 27 | 0x28 >> 5), 
    (const uint32_t)(0xA << 27 | 0xA >> 5), (const uint32_t)(0x52 << 27 | 0x52 >> 5), 
    (const uint32_t)(0x66 << 27 | 0x66 >> 5), 
    (const uint32_t)(0xA3 << 27 | 0xA3 >> 5), 
    (const uint32_t)(0xCA << 27 | 0xCA >> 5), 
    (const uint32_t)(0xF2 << 27 | 0xF2 >> 5), 
    (const uint32_t)(0xE3 << 27 | 0xE3 >> 5), 
    (const uint32_t)(0x7F << 27 | 0x7F >> 5), 
    (const uint32_t)(0x7A << 27 | 0x7A >> 5), 
    (const uint32_t)(0x31 << 27 | 0x31 >> 5), 
    (const uint32_t)(0xF7 << 27 | 0xF7 >> 5), 
    (const uint32_t)(0x88 << 27 | 0x88 >> 5), 
    (const uint32_t)(0x94 << 27 | 0x94 >> 5), 
    (const uint32_t)(0x5E << 27 | 0x5E >> 5), 
    (const uint32_t)(0x9C << 27 | 0x9C >> 5), 
    (const uint32_t)(0x63 << 27 | 0x63 >> 5), 
    (const uint32_t)(0xD5 << 27 | 0xD5 >> 5), 
    (const uint32_t)(0x24 << 27 | 0x24 >> 5), 
    (const uint32_t)(0x66 << 27 | 0x66 >> 5), 
    (const uint32_t)(0xFC << 27 | 0xFC >> 5), 
    (const uint32_t)(0xB3 << 27 | 0xB3 >> 5), 
    (const uint32_t)(0x57 << 27 | 0x57 >> 5), 
    (const uint32_t)(0x25 << 27 | 0x25 >> 5), 
    (const uint32_t)(0xBE << 27 | 0xBE >> 5), 
    (const uint32_t)(0x89 << 27 | 0x89 >> 5), 
    (const uint32_t)(0x44 << 27 | 0x44 >> 5), 
    (const uint32_t)(0xC4 << 27 | 0xC4 >> 5), 
    (const uint32_t)(0xE0 << 27 | 0xE0 >> 5), 
    (const uint32_t)(0x8F << 27 | 0x8F >> 5), 
    (const uint32_t)(0x23 << 27 | 0x23 >> 5), 
    (const uint32_t)(0x3C << 27 | 0x3C >> 5), 
    (const uint32_t)(0x12 << 27 | 0x12 >> 5), 
    (const uint32_t)(0x52 << 27 | 0x52 >> 5), 
    (const uint32_t)(0xF5 << 27 | 0xF5 >> 5), 
    (const uint32_t)(0x1E << 27 | 0x1E >> 5), 
    (const uint32_t)(0xF4 << 27 | 0xF4 >> 5), 
    (const uint32_t)(0xCB << 27 | 0xCB >> 5), 
    (const uint32_t)(0x18 << 27 | 0x18 >> 5), 
    (const uint32_t)(0x33 << 27 | 0x33 >> 5), 
    (const uint32_t)(0x1F << 27 | 0x1F >> 5), 
    (const uint32_t)(0xF8 << 27 | 0xF8 >> 5), 
    (const uint32_t)(0x69 << 27 | 0x69 >> 5), 
    (const uint32_t)(0x10 << 27 | 0x10 >> 5), 
    (const uint32_t)(0x9D << 27 | 0x9D >> 5), 
    (const uint32_t)(0xD3 << 27 | 0xD3 >> 5), 
    (const uint32_t)(0xF7 << 27 | 0xF7 >> 5), 
    (const uint32_t)(0x28 << 27 | 0x28 >> 5), 
    (const uint32_t)(0xF8 << 27 | 0xF8 >> 5), 
    (const uint32_t)(0x30 << 27 | 0x30 >> 5), 
    (const uint32_t)(0x5 << 27 | 0x5 >> 5), (const uint32_t)(0x5E << 27 | 0x5E >> 5), 
    (const uint32_t)(0x32 << 27 | 0x32 >> 5), 
    (const uint32_t)(0xC0 << 27 | 0xC0 >> 5), 
    (const uint32_t)(0xD5 << 27 | 0xD5 >> 5), 
    (const uint32_t)(0x19 << 27 | 0x19 >> 5), 
    (const uint32_t)(0xBD << 27 | 0xBD >> 5), 
    (const uint32_t)(0x45 << 27 | 0x45 >> 5), 
    (const uint32_t)(0x8B << 27 | 0x8B >> 5), 
    (const uint32_t)(0x5B << 27 | 0x5B >> 5), 
    (const uint32_t)(0xFD << 27 | 0xFD >> 5), 
    (const uint32_t)(0xBC << 27 | 0xBC >> 5), 
    (const uint32_t)(0xE2 << 27 | 0xE2 >> 5), 
    (const uint32_t)(0x5C << 27 | 0x5C >> 5), 
    (const uint32_t)(0xA9 << 27 | 0xA9 >> 5), 
    (const uint32_t)(0x96 << 27 | 0x96 >> 5), 
    (const uint32_t)(0xEF << 27 | 0xEF >> 5), 
    (const uint32_t)(0x70 << 27 | 0x70 >> 5), 
    (const uint32_t)(0xCF << 27 | 0xCF >> 5), 
    (const uint32_t)(0xC2 << 27 | 0xC2 >> 5), 
    (const uint32_t)(0x2A << 27 | 0x2A >> 5), 
    (const uint32_t)(0xB3 << 27 | 0xB3 >> 5), 
    (const uint32_t)(0x61 << 27 | 0x61 >> 5), 
    (const uint32_t)(0xAD << 27 | 0xAD >> 5), 
    (const uint32_t)(0x80 << 27 | 0x80 >> 5), 
    (const uint32_t)(0x48 << 27 | 0x48 >> 5), 
    (const uint32_t)(0x81 << 27 | 0x81 >> 5), 
    (const uint32_t)(0xB7 << 27 | 0xB7 >> 5), 
    (const uint32_t)(0x1D << 27 | 0x1D >> 5), 
    (const uint32_t)(0x43 << 27 | 0x43 >> 5), 
    (const uint32_t)(0xD9 << 27 | 0xD9 >> 5), 
    (const uint32_t)(0xD7 << 27 | 0xD7 >> 5), 
    (const uint32_t)(0x45 << 27 | 0x45 >> 5), 
    (const uint32_t)(0xF0 << 27 | 0xF0 >> 5), 
    (const uint32_t)(0xD8 << 27 | 0xD8 >> 5), 
    (const uint32_t)(0x8A << 27 | 0x8A >> 5), 
    (const uint32_t)(0x59 << 27 | 0x59 >> 5), 
    (const uint32_t)(0x7C << 27 | 0x7C >> 5), 
    (const uint32_t)(0x57 << 27 | 0x57 >> 5), 
    (const uint32_t)(0xC1 << 27 | 0xC1 >> 5), 
    (const uint32_t)(0x79 << 27 | 0x79 >> 5), 
    (const uint32_t)(0xC7 << 27 | 0xC7 >> 5), 
    (const uint32_t)(0x34 << 27 | 0x34 >> 5), 
    (const uint32_t)(0xD6 << 27 | 0xD6 >> 5), 
    (const uint32_t)(0x43 << 27 | 0x43 >> 5), 
    (const uint32_t)(0xDF << 27 | 0xDF >> 5), 
    (const uint32_t)(0xE4 << 27 | 0xE4 >> 5), 
    (const uint32_t)(0x78 << 27 | 0x78 >> 5), 
    (const uint32_t)(0x16 << 27 | 0x16 >> 5), 
    (const uint32_t)(0x6 << 27 | 0x6 >> 5), (const uint32_t)(0xDA << 27 | 0xDA >> 5), 
    (const uint32_t)(0x92 << 27 | 0x92 >> 5), 
    (const uint32_t)(0x76 << 27 | 0x76 >> 5), 
    (const uint32_t)(0x51 << 27 | 0x51 >> 5), 
    (const uint32_t)(0xE1 << 27 | 0xE1 >> 5), 
    (const uint32_t)(0xD4 << 27 | 0xD4 >> 5), 
    (const uint32_t)(0x70 << 27 | 0x70 >> 5), 
    (const uint32_t)(0x3 << 27 | 0x3 >> 5), (const uint32_t)(0xE0 << 27 | 0xE0 >> 5), 
    (const uint32_t)(0x2F << 27 | 0x2F >> 5), 
    (const uint32_t)(0x96 << 27 | 0x96 >> 5), 
    (const uint32_t)(0x91 << 27 | 0x91 >> 5), 
    (const uint32_t)(0x82 << 27 | 0x82 >> 5), 
    (const uint32_t)(0x80 << 27 | 0x80 >> 5) };
// sbox2
// file fcrypt.c line 153
static const uint32_t sbox2[256]={ (const uint32_t)(0xF0 << 11), (const uint32_t)(0x37 << 11), (const uint32_t)(0x24 << 11), (const uint32_t)(0x53 << 11), (const uint32_t)(0x2A << 11), (const uint32_t)(0x3 << 11), (const uint32_t)(0x83 << 11), (const uint32_t)(0x86 << 11), (const uint32_t)(0xD1 << 11), (const uint32_t)(0xEC << 11), (const uint32_t)(0x50 << 11), (const uint32_t)(0xF0 << 11), (const uint32_t)(0x42 << 11), (const uint32_t)(0x78 << 11), (const uint32_t)(0x2F << 11), (const uint32_t)(0x6D << 11), (const uint32_t)(0xBF << 11), (const uint32_t)(0x80 << 11), (const uint32_t)(0x87 << 11), (const uint32_t)(0x27 << 11), (const uint32_t)(0x95 << 11), (const uint32_t)(0xE2 << 11), (const uint32_t)(0xC5 << 11), (const uint32_t)(0x5D << 11), (const uint32_t)(0xF9 << 11), (const uint32_t)(0x6F << 11), (const uint32_t)(0xDB << 11), (const uint32_t)(0xB4 << 11), (const uint32_t)(0x65 << 11), (const uint32_t)(0x6E << 11), (const uint32_t)(0xE7 << 11), (const uint32_t)(0x24 << 11), (const uint32_t)(0xC8 << 11), (const uint32_t)(0x1A << 11), (const uint32_t)(0xBB << 11), (const uint32_t)(0x49 << 11), (const uint32_t)(0xB5 << 11), (const uint32_t)(0xA << 11), (const uint32_t)(0x7D << 11), (const uint32_t)(0xB9 << 11), (const uint32_t)(0xE8 << 11), (const uint32_t)(0xDC << 11), (const uint32_t)(0xB7 << 11), (const uint32_t)(0xD9 << 11), (const uint32_t)(0x45 << 11), (const uint32_t)(0x20 << 11), (const uint32_t)(0x1B << 11), (const uint32_t)(0xCE << 11), (const uint32_t)(0x59 << 11), (const uint32_t)(0x9D << 11), (const uint32_t)(0x6B << 11), (const uint32_t)(0xBD << 11), (const uint32_t)(0xE << 11), (const uint32_t)(0x8F << 11), (const uint32_t)(0xA3 << 11), (const uint32_t)(0xA9 << 11), (const uint32_t)(0xBC << 11), (const uint32_t)(0x74 << 11), (const uint32_t)(0xA6 << 11), (const uint32_t)(0xF6 << 11), (const uint32_t)(0x7F << 11), (const uint32_t)(0x5F << 11), (const uint32_t)(0xB1 << 11), (const uint32_t)(0x68 << 11), (const uint32_t)(0x84 << 11), (const uint32_t)(0xBC << 11), (const uint32_t)(0xA9 << 11), (const uint32_t)(0xFD << 11), (const uint32_t)(0x55 << 11), (const uint32_t)(0x50 << 11), (const uint32_t)(0xE9 << 11), (const uint32_t)(0xB6 << 11), (const uint32_t)(0x13 << 11), (const uint32_t)(0x5E << 11), (const uint32_t)(0x7 << 11), (const uint32_t)(0xB8 << 11), (const uint32_t)(0x95 << 11), (const uint32_t)(0x2 << 11), (const uint32_t)(0xC0 << 11), (const uint32_t)(0xD0 << 11), (const uint32_t)(0x6A << 11), (const uint32_t)(0x1A << 11), (const uint32_t)(0x85 << 11), (const uint32_t)(0xBD << 11), (const uint32_t)(0xB6 << 11), (const uint32_t)(0xFD << 11), (const uint32_t)(0xFE << 11), (const uint32_t)(0x17 << 11), (const uint32_t)(0x3F << 11), (const uint32_t)(0x9 << 11), (const uint32_t)(0xA3 << 11), (const uint32_t)(0x8D << 11), (const uint32_t)(0xFB << 11), (const uint32_t)(0xED << 11), (const uint32_t)(0xDA << 11), (const uint32_t)(0x1D << 11), (const uint32_t)(0x6D << 11), (const uint32_t)(0x1C << 11), (const uint32_t)(0x6C << 11), (const uint32_t)(0x1 << 11), (const uint32_t)(0x5A << 11), (const uint32_t)(0xE5 << 11), (const uint32_t)(0x71 << 11), (const uint32_t)(0x3E << 11), (const uint32_t)(0x8B << 11), (const uint32_t)(0x6B << 11), (const uint32_t)(0xBE << 11), (const uint32_t)(0x29 << 11), (const uint32_t)(0xEB << 11), (const uint32_t)(0x12 << 11), (const uint32_t)(0x19 << 11), (const uint32_t)(0x34 << 11), (const uint32_t)(0xCD << 11), (const uint32_t)(0xB3 << 11), (const uint32_t)(0xBD << 11), (const uint32_t)(0x35 << 11), (const uint32_t)(0xEA << 11), (const uint32_t)(0x4B << 11), (const uint32_t)(0xD5 << 11), (const uint32_t)(0xAE << 11), (const uint32_t)(0x2A << 11), (const uint32_t)(0x79 << 11), (const uint32_t)(0x5A << 11), (const uint32_t)(0xA5 << 11), (const uint32_t)(0x32 << 11), (const uint32_t)(0x12 << 11), (const uint32_t)(0x7B << 11), (const uint32_t)(0xDC << 11), (const uint32_t)(0x2C << 11), (const uint32_t)(0xD0 << 11), (const uint32_t)(0x22 << 11), (const uint32_t)(0x4B << 11), (const uint32_t)(0xB1 << 11), (const uint32_t)(0x85 << 11), (const uint32_t)(0x59 << 11), (const uint32_t)(0x80 << 11), (const uint32_t)(0xC0 << 11), (const uint32_t)(0x30 << 11), (const uint32_t)(0x9F << 11), (const uint32_t)(0x73 << 11), (const uint32_t)(0xD3 << 11), (const uint32_t)(0x14 << 11), (const uint32_t)(0x48 << 11), (const uint32_t)(0x40 << 11), (const uint32_t)(0x7 << 11), (const uint32_t)(0x2D << 11), (const uint32_t)(0x8F << 11), (const uint32_t)(0x80 << 11), (const uint32_t)(0xF << 11), (const uint32_t)(0xCE << 11), (const uint32_t)(0xB << 11), (const uint32_t)(0x5E << 11), (const uint32_t)(0xB7 << 11), (const uint32_t)(0x5E << 11), (const uint32_t)(0xAC << 11), (const uint32_t)(0x24 << 11), (const uint32_t)(0x94 << 11), (const uint32_t)(0x4A << 11), (const uint32_t)(0x18 << 11), (const uint32_t)(0x15 << 11), (const uint32_t)(0x5 << 11), (const uint32_t)(0xE8 << 11), (const uint32_t)(0x2 << 11), (const uint32_t)(0x77 << 11), (const uint32_t)(0xA9 << 11), (const uint32_t)(0xC7 << 11), (const uint32_t)(0x40 << 11), (const uint32_t)(0x45 << 11), (const uint32_t)(0x89 << 11), (const uint32_t)(0xD1 << 11), (const uint32_t)(0xEA << 11), (const uint32_t)(0xDE << 11), (const uint32_t)(0xC << 11), (const uint32_t)(0x79 << 11), (const uint32_t)(0x2A << 11), (const uint32_t)(0x99 << 11), (const uint32_t)(0x6C << 11), (const uint32_t)(0x3E << 11), (const uint32_t)(0x95 << 11), (const uint32_t)(0xDD << 11), (const uint32_t)(0x8C << 11), (const uint32_t)(0x7D << 11), (const uint32_t)(0xAD << 11), (const uint32_t)(0x6F << 11), (const uint32_t)(0xDC << 11), (const uint32_t)(0xFF << 11), (const uint32_t)(0xFD << 11), (const uint32_t)(0x62 << 11), (const uint32_t)(0x47 << 11), (const uint32_t)(0xB3 << 11), (const uint32_t)(0x21 << 11), (const uint32_t)(0x8A << 11), (const uint32_t)(0xEC << 11), (const uint32_t)(0x8E << 11), (const uint32_t)(0x19 << 11), (const uint32_t)(0x18 << 11), (const uint32_t)(0xB4 << 11), (const uint32_t)(0x6E << 11), (const uint32_t)(0x3D << 11), (const uint32_t)(0xFD << 11), (const uint32_t)(0x74 << 11), (const uint32_t)(0x54 << 11), (const uint32_t)(0x1E << 11), (const uint32_t)(0x4 << 11), (const uint32_t)(0x85 << 11), (const uint32_t)(0xD8 << 11), (const uint32_t)(0xBC << 11), (const uint32_t)(0x1F << 11), (const uint32_t)(0x56 << 11), (const uint32_t)(0xE7 << 11), (const uint32_t)(0x3A << 11), (const uint32_t)(0x56 << 11), (const uint32_t)(0x67 << 11), (const uint32_t)(0xD6 << 11), (const uint32_t)(0xC8 << 11), (const uint32_t)(0xA5 << 11), (const uint32_t)(0xF3 << 11), (const uint32_t)(0x8E << 11), (const uint32_t)(0xDE << 11), (const uint32_t)(0xAE << 11), (const uint32_t)(0x37 << 11), (const uint32_t)(0x49 << 11), (const uint32_t)(0xB7 << 11), (const uint32_t)(0xFA << 11), (const uint32_t)(0xC8 << 11), (const uint32_t)(0xF4 << 11), (const uint32_t)(0x1F << 11), (const uint32_t)(0xE0 << 11), (const uint32_t)(0x2A << 11), (const uint32_t)(0x9B << 11), (const uint32_t)(0x15 << 11), (const uint32_t)(0xD1 << 11), (const uint32_t)(0x34 << 11), (const uint32_t)(0xE << 11), (const uint32_t)(0xB5 << 11), (const uint32_t)(0xE0 << 11), (const uint32_t)(0x44 << 11), (const uint32_t)(0x78 << 11), (const uint32_t)(0x84 << 11), (const uint32_t)(0x59 << 11), (const uint32_t)(0x56 << 11), (const uint32_t)(0x68 << 11), (const uint32_t)(0x77 << 11), (const uint32_t)(0xA5 << 11), (const uint32_t)(0x14 << 11), (const uint32_t)(0x6 << 11), (const uint32_t)(0xF5 << 11), (const uint32_t)(0x2F << 11), (const uint32_t)(0x8C << 11), (const uint32_t)(0x8A << 11), (const uint32_t)(0x73 << 11), (const uint32_t)(0x80 << 11), (const uint32_t)(0x76 << 11), (const uint32_t)(0xB4 << 11), (const uint32_t)(0x10 << 11), (const uint32_t)(0x86 << 11) };
// sbox3
// file fcrypt.c line 190
static const uint32_t sbox3[256]={ (const uint32_t)(0xA9 << 19), (const uint32_t)(0x2A << 19), (const uint32_t)(0x48 << 19), (const uint32_t)(0x51 << 19), (const uint32_t)(0x84 << 19), (const uint32_t)(0x7E << 19), (const uint32_t)(0x49 << 19), (const uint32_t)(0xE2 << 19), (const uint32_t)(0xB5 << 19), (const uint32_t)(0xB7 << 19), (const uint32_t)(0x42 << 19), (const uint32_t)(0x33 << 19), (const uint32_t)(0x7D << 19), (const uint32_t)(0x5D << 19), (const uint32_t)(0xA6 << 19), (const uint32_t)(0x12 << 19), (const uint32_t)(0x44 << 19), (const uint32_t)(0x48 << 19), (const uint32_t)(0x6D << 19), (const uint32_t)(0x28 << 19), (const uint32_t)(0xAA << 19), (const uint32_t)(0x20 << 19), (const uint32_t)(0x6D << 19), (const uint32_t)(0x57 << 19), (const uint32_t)(0xD6 << 19), (const uint32_t)(0x6B << 19), (const uint32_t)(0x5D << 19), (const uint32_t)(0x72 << 19), (const uint32_t)(0xF0 << 19), (const uint32_t)(0x92 << 19), (const uint32_t)(0x5A << 19), (const uint32_t)(0x1B << 19), (const uint32_t)(0x53 << 19), (const uint32_t)(0x80 << 19), (const uint32_t)(0x24 << 19), (const uint32_t)(0x70 << 19), (const uint32_t)(0x9A << 19), (const uint32_t)(0xCC << 19), (const uint32_t)(0xA7 << 19), (const uint32_t)(0x66 << 19), (const uint32_t)(0xA1 << 19), (const uint32_t)(0x1 << 19), (const uint32_t)(0xA5 << 19), (const uint32_t)(0x41 << 19), (const uint32_t)(0x97 << 19), (const uint32_t)(0x41 << 19), (const uint32_t)(0x31 << 19), (const uint32_t)(0x82 << 19), (const uint32_t)(0xF1 << 19), (const uint32_t)(0x14 << 19), (const uint32_t)(0xCF << 19), (const uint32_t)(0x53 << 19), (const uint32_t)(0xD << 19), (const uint32_t)(0xA0 << 19), (const uint32_t)(0x10 << 19), (const uint32_t)(0xCC << 19), (const uint32_t)(0x2A << 19), (const uint32_t)(0x7D << 19), (const uint32_t)(0xD2 << 19), (const uint32_t)(0xBF << 19), (const uint32_t)(0x4B << 19), (const uint32_t)(0x1A << 19), (const uint32_t)(0xDB << 19), (const uint32_t)(0x16 << 19), (const uint32_t)(0x47 << 19), (const uint32_t)(0xF6 << 19), (const uint32_t)(0x51 << 19), (const uint32_t)(0x36 << 19), (const uint32_t)(0xED << 19), (const uint32_t)(0xF3 << 19), (const uint32_t)(0xB9 << 19), (const uint32_t)(0x1A << 19), (const uint32_t)(0xA7 << 19), (const uint32_t)(0xDF << 19), (const uint32_t)(0x29 << 19), (const uint32_t)(0x43 << 19), (const uint32_t)(0x1 << 19), (const uint32_t)(0x54 << 19), (const uint32_t)(0x70 << 19), (const uint32_t)(0xA4 << 19), (const uint32_t)(0xBF << 19), (const uint32_t)(0xD4 << 19), (const uint32_t)(0xB << 19), (const uint32_t)(0x53 << 19), (const uint32_t)(0x44 << 19), (const uint32_t)(0x60 << 19), (const uint32_t)(0x9E << 19), (const uint32_t)(0x23 << 19), (const uint32_t)(0xA1 << 19), (const uint32_t)(0x18 << 19), (const uint32_t)(0x68 << 19), (const uint32_t)(0x4F << 19), (const uint32_t)(0xF0 << 19), (const uint32_t)(0x2F << 19), (const uint32_t)(0x82 << 19), (const uint32_t)(0xC2 << 19), (const uint32_t)(0x2A << 19), (const uint32_t)(0x41 << 19), (const uint32_t)(0xB2 << 19), (const uint32_t)(0x42 << 19), (const uint32_t)(0xC << 19), (const uint32_t)(0xED << 19), (const uint32_t)(0xC << 19), (const uint32_t)(0x1D << 19), (const uint32_t)(0x13 << 19), (const uint32_t)(0x3A << 19), (const uint32_t)(0x3C << 19), (const uint32_t)(0x6E << 19), (const uint32_t)(0x35 << 19), (const uint32_t)(0xDC << 19), (const uint32_t)(0x60 << 19), (const uint32_t)(0x65 << 19), (const uint32_t)(0x85 << 19), (const uint32_t)(0xE9 << 19), (const uint32_t)(0x64 << 19), (const uint32_t)(0x2 << 19), (const uint32_t)(0x9A << 19), (const uint32_t)(0x3F << 19), (const uint32_t)(0x9F << 19), (const uint32_t)(0x87 << 19), (const uint32_t)(0x96 << 19), (const uint32_t)(0xDF << 19), (const uint32_t)(0xBE << 19), (const uint32_t)(0xF2 << 19), (const uint32_t)(0xCB << 19), (const uint32_t)(0xE5 << 19), (const uint32_t)(0x6C << 19), (const uint32_t)(0xD4 << 19), (const uint32_t)(0x5A << 19), (const uint32_t)(0x83 << 19), (const uint32_t)(0xBF << 19), (const uint32_t)(0x92 << 19), (const uint32_t)(0x1B << 19), (const uint32_t)(0x94 << 19), (const uint32_t)(0x0 << 19), (const uint32_t)(0x42 << 19), (const uint32_t)(0xCF << 19), (const uint32_t)(0x4B << 19), (const uint32_t)(0x0 << 19), (const uint32_t)(0x75 << 19), (const uint32_t)(0xBA << 19), (const uint32_t)(0x8F << 19), (const uint32_t)(0x76 << 19), (const uint32_t)(0x5F << 19), (const uint32_t)(0x5D << 19), (const uint32_t)(0x3A << 19), (const uint32_t)(0x4D << 19), (const uint32_t)(0x9 << 19), (const uint32_t)(0x12 << 19), (const uint32_t)(0x8 << 19), (const uint32_t)(0x38 << 19), (const uint32_t)(0x95 << 19), (const uint32_t)(0x17 << 19), (const uint32_t)(0xE4 << 19), (const uint32_t)(0x1 << 19), (const uint32_t)(0x1D << 19), (const uint32_t)(0x4C << 19), (const uint32_t)(0xA9 << 19), (const uint32_t)(0xCC << 19), (const uint32_t)(0x85 << 19), (const uint32_t)(0x82 << 19), (const uint32_t)(0x4C << 19), (const uint32_t)(0x9D << 19), (const uint32_t)(0x2F << 19), (const uint32_t)(0x3B << 19), (const uint32_t)(0x66 << 19), (const uint32_t)(0xA1 << 19), (const uint32_t)(0x34 << 19), (const uint32_t)(0x10 << 19), (const uint32_t)(0xCD << 19), (const uint32_t)(0x59 << 19), (const uint32_t)(0x89 << 19), (const uint32_t)(0xA5 << 19), (const uint32_t)(0x31 << 19), (const uint32_t)(0xCF << 19), (const uint32_t)(0x5 << 19), (const uint32_t)(0xC8 << 19), (const uint32_t)(0x84 << 19), (const uint32_t)(0xFA << 19), (const uint32_t)(0xC7 << 19), (const uint32_t)(0xBA << 19), (const uint32_t)(0x4E << 19), (const uint32_t)(0x8B << 19), (const uint32_t)(0x1A << 19), (const uint32_t)(0x19 << 19), (const uint32_t)(0xF1 << 19), (const uint32_t)(0xA1 << 19), (const uint32_t)(0x3B << 19), (const uint32_t)(0x18 << 19), (const uint32_t)(0x12 << 19), (const uint32_t)(0x17 << 19), (const uint32_t)(0xB0 << 19), (const uint32_t)(0x98 << 19), (const uint32_t)(0x8D << 19), (const uint32_t)(0xB << 19), (const uint32_t)(0x23 << 19), (const uint32_t)(0xC3 << 19), (const uint32_t)(0x3A << 19), (const uint32_t)(0x2D << 19), (const uint32_t)(0x20 << 19), (const uint32_t)(0xDF << 19), (const uint32_t)(0x13 << 19), (const uint32_t)(0xA0 << 19), (const uint32_t)(0xA8 << 19), (const uint32_t)(0x4C << 19), (const uint32_t)(0xD << 19), (const uint32_t)(0x6C << 19), (const uint32_t)(0x2F << 19), (const uint32_t)(0x47 << 19), (const uint32_t)(0x13 << 19), (const uint32_t)(0x13 << 19), (const uint32_t)(0x52 << 19), (const uint32_t)(0x1F << 19), (const uint32_t)(0x2D << 19), (const uint32_t)(0xF5 << 19), (const uint32_t)(0x79 << 19), (const uint32_t)(0x3D << 19), (const uint32_t)(0xA2 << 19), (const uint32_t)(0x54 << 19), (const uint32_t)(0xBD << 19), (const uint32_t)(0x69 << 19), (const uint32_t)(0xC8 << 19), (const uint32_t)(0x6B << 19), (const uint32_t)(0xF3 << 19), (const uint32_t)(0x5 << 19), (const uint32_t)(0x28 << 19), (const uint32_t)(0xF1 << 19), (const uint32_t)(0x16 << 19), (const uint32_t)(0x46 << 19), (const uint32_t)(0x40 << 19), (const uint32_t)(0xB0 << 19), (const uint32_t)(0x11 << 19), (const uint32_t)(0xD3 << 19), (const uint32_t)(0xB7 << 19), (const uint32_t)(0x95 << 19), (const uint32_t)(0x49 << 19), (const uint32_t)(0xCF << 19), (const uint32_t)(0xC3 << 19), (const uint32_t)(0x1D << 19), (const uint32_t)(0x8F << 19), (const uint32_t)(0xD8 << 19), (const uint32_t)(0xE1 << 19), (const uint32_t)(0x73 << 19), (const uint32_t)(0xDB << 19), (const uint32_t)(0xAD << 19), (const uint32_t)(0xC8 << 19), (const uint32_t)(0xC9 << 19), (const uint32_t)(0xA9 << 19), (const uint32_t)(0xA1 << 19), (const uint32_t)(0xC2 << 19), (const uint32_t)(0xC5 << 19), (const uint32_t)(0xE3 << 19), (const uint32_t)(0xBA << 19), (const uint32_t)(0xFC << 19), (const uint32_t)(0xE << 19), (const uint32_t)(0x25 << 19) };
// write__return_value
// 
static ssize_t write__return_value;

// main
// file fcrypt.c line 395
signed int main(int argc, char** argv)
{
  uint8_t *fcrypt_encrypt_c;
  uint32_t fcrypt_encrypt_l;
  uint32_t fcrypt_encrypt_Xr;
  uint32_t fcrypt_encrypt_Xl;
  uint32_t *fcrypt_encrypt_Y;
  uint32_t *fcrypt_encrypt_X;
  const uint8_t *fcrypt_encrypt_src;
  uint8_t *fcrypt_encrypt_dst;
  struct fcrypt_ctx *fcrypt_encrypt_ctx;
  uint32_t fcrypt_setkey_t;
  const uint8_t *fcrypt_setkey_tmp_post_key$5;
  const uint8_t *fcrypt_setkey_tmp_post_key$4;
  const uint8_t *fcrypt_setkey_tmp_post_key$3;
  const uint8_t *fcrypt_setkey_tmp_post_key$2;
  const uint8_t *fcrypt_setkey_tmp_post_key$1;
  const uint8_t *fcrypt_setkey_tmp_post_key$0;
  const uint8_t *fcrypt_setkey_tmp_post_key;
  uint32_t fcrypt_setkey_lo;
  uint32_t fcrypt_setkey_hi;
  unsigned int fcrypt_setkey_keylen;
  struct fcrypt_ctx *fcrypt_setkey_ctx;
  const uint8_t *fcrypt_setkey_key;
  struct fcrypt_ctx main_ctx;
  main_ctx = (struct fcrypt_ctx){ .sched={ 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u } };
  read(0, (void *)in_key, 32ul);
  read(0, (void *)in_pub, 64ul);
  /* begin function fcrypt_setkey */
  ;
  fcrypt_setkey_key = in_key;
  fcrypt_setkey_ctx = &main_ctx;
  fcrypt_setkey_keylen = 8u;
  fcrypt_setkey_tmp_post_key = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = (uint32_t)((signed int)*fcrypt_setkey_tmp_post_key >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$0 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$0 >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$1 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$1 >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$2 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$2 >> 1);
  fcrypt_setkey_hi = fcrypt_setkey_lo >> 4;
  fcrypt_setkey_lo = fcrypt_setkey_lo & 15u;
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$3 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$3 >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$4 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$4 >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_tmp_post_key$5 = fcrypt_setkey_key;
  fcrypt_setkey_key = fcrypt_setkey_key + 1;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_tmp_post_key$5 >> 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo << 7;
  fcrypt_setkey_lo = fcrypt_setkey_lo | (unsigned int)((signed int)*fcrypt_setkey_key >> 1);
  fcrypt_setkey_ctx->sched[0x0] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x1] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x2] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x3] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x4] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x5] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x6] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x7] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x8] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0x9] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xA] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xB] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xC] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xD] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xE] = fcrypt_setkey_lo;
  fcrypt_setkey_t = fcrypt_setkey_lo & (unsigned int)((1 << 11) - 1);
  fcrypt_setkey_lo = fcrypt_setkey_lo >> 11 | (fcrypt_setkey_hi & (unsigned int)((1 << 11) - 1)) << 32 - 11;
  fcrypt_setkey_hi = fcrypt_setkey_hi >> 11 | fcrypt_setkey_t << 24 - 11;
  fcrypt_setkey_ctx->sched[0xF] = fcrypt_setkey_lo;
  0;
  /* end function fcrypt_setkey */
  ;
  /* begin function fcrypt_encrypt */
  ;
  fcrypt_encrypt_ctx = &main_ctx;
  fcrypt_encrypt_dst = out;
  fcrypt_encrypt_src = in_pub;
  fcrypt_encrypt_X = (uint32_t *)fcrypt_encrypt_src;
  fcrypt_encrypt_Y = (uint32_t *)fcrypt_encrypt_dst;
  fcrypt_encrypt_Xl = *fcrypt_encrypt_X;
  fcrypt_encrypt_Xr = fcrypt_encrypt_X[1];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x0] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x1] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x2] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x3] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x4] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x5] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x6] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x7] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x8] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0x9] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xA] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xB] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xC] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xD] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xE] ^ fcrypt_encrypt_Xr;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xl = fcrypt_encrypt_Xl ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  fcrypt_encrypt_l = fcrypt_encrypt_ctx->sched[0xF] ^ fcrypt_encrypt_Xl;
  fcrypt_encrypt_c = (uint8_t *)&fcrypt_encrypt_l;
  fcrypt_encrypt_Xr = fcrypt_encrypt_Xr ^ sbox0[(signed int)fcrypt_encrypt_c[0]] ^ sbox1[(signed int)fcrypt_encrypt_c[1]] ^ sbox2[(signed int)fcrypt_encrypt_c[2]] ^ sbox3[(signed int)fcrypt_encrypt_c[3]];
  *fcrypt_encrypt_Y = fcrypt_encrypt_Xl;
  fcrypt_encrypt_Y[1] = fcrypt_encrypt_Xr;
  /* end function fcrypt_encrypt */
  ;
  write(1, (const void *)&main_ctx, (size_t)sizeof(struct fcrypt_ctx) /*64ul*/ );
  write(1, (const void *)out, 64ul);
  main__return_value = 0;
}

