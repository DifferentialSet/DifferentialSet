#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-_des_ctx
// file des.c line 182
struct _des_ctx;


typedef struct _des_ctx des_ctx;





// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// buf_get_be32
// file des.c line 129
static inline uint32_t buf_get_be32(const void *_buf);
// buf_put_be32
// file des.c line 137
static inline void buf_put_be32(void *_buf, uint32_t val);
// des_ecb_crypt
// file des.c line 664
static signed int des_ecb_crypt(struct _des_ctx *ctx, const uint8_t *from, uint8_t *to, signed int mode);
// des_key_schedule
// file des.c line 536
static inline void des_key_schedule(const uint8_t *rawkey, uint32_t *subkey);
// des_setkey
// file des.c line 629
static signed int des_setkey(const uint8_t *key, struct _des_ctx *ctx);

struct _des_ctx
{
  // encrypt_subkeys
  uint32_t encrypt_subkeys[32];
  // decrypt_subkeys
  uint32_t decrypt_subkeys[32];
};


// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// buf_get_be32__return_value
// 
static uint32_t buf_get_be32__return_value;
// des_ecb_crypt__return_value
// 
static signed int des_ecb_crypt__return_value;
// des_setkey__return_value
// 
static signed int des_setkey__return_value;
// encrypt_rotate_tab
// file des.c line 354
static uint8_t encrypt_rotate_tab[16]={ 1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1 };
// in_pub
// file des.c line 1478
static uint8_t in_pub[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// leftkey_swap
// file des.c line 330
static uint32_t leftkey_swap[16]={ 0u, 1u, 256u, 257u, 65536u, 65537u, 65792u, 65793u, 16777216u, 16777217u, 16777472u, 16777473u, 16842752u, 16842753u, 16843008u, 16843009u };
// main__return_value
// 
static signed int main__return_value;
// out
// file des.c line 1479
static uint8_t out[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// read__return_value
// 
static ssize_t read__return_value;
// rightkey_swap
// file des.c line 338
static uint32_t rightkey_swap[16]={ 0u, 16777216u, 65536u, 16842752u, 256u, 16777472u, 65792u, 16843008u, 1u, 16777217u, 65537u, 16842753u, 257u, 16777473u, 65793u, 16843009u };
// sbox1
// file des.c line 229
static uint32_t sbox1[64]={ 16843776u, 0u, 65536u, 16843780u, 16842756u, 66564u, 4u, 65536u, 1024u, 16843776u, 16843780u, 1024u, 16778244u, 16842756u, 16777216u, 4u, 1028u, 16778240u, 16778240u, 66560u, 66560u, 16842752u, 16842752u, 16778244u, 65540u, 16777220u, 16777220u, 65540u, 0u, 1028u, 66564u, 16777216u, 65536u, 16843780u, 4u, 16842752u, 16843776u, 16777216u, 16777216u, 1024u, 16842756u, 65536u, 66560u, 16777220u, 1024u, 4u, 16778244u, 66564u, 16843780u, 65540u, 16842752u, 16778244u, 16777220u, 1028u, 66564u, 16843776u, 1028u, 16778240u, 16778240u, 0u, 65540u, 66560u, 0u, 16842756u };
// sbox2
// file des.c line 241
static uint32_t sbox2[64]={ 0x80108020u, 0x80008000u, 32768u, 1081376u, 1048576u, 32u, 0x80100020u, 0x80008020u, 0x80000020u, 0x80108020u, 0x80108000u, 0x80000000u, 0x80008000u, 1048576u, 32u, 0x80100020u, 1081344u, 1048608u, 0x80008020u, 0u, 0x80000000u, 32768u, 1081376u, 0x80100000u, 1048608u, 0x80000020u, 0u, 1081344u, 32800u, 0x80108000u, 0x80100000u, 32800u, 0u, 1081376u, 0x80100020u, 1048576u, 0x80008020u, 0x80100000u, 0x80108000u, 32768u, 0x80100000u, 0x80008000u, 32u, 0x80108020u, 1081376u, 32u, 32768u, 0x80000000u, 32800u, 0x80108000u, 1048576u, 0x80000020u, 1048608u, 0x80008020u, 0x80000020u, 1048608u, 1081344u, 0u, 0x80008000u, 32800u, 0x80000000u, 0x80100020u, 0x80108020u, 1081344u };
// sbox3
// file des.c line 253
static uint32_t sbox3[64]={ 520u, 134349312u, 0u, 134348808u, 134218240u, 0u, 131592u, 134218240u, 131080u, 134217736u, 134217736u, 131072u, 134349320u, 131080u, 134348800u, 520u, 134217728u, 8u, 134349312u, 512u, 131584u, 134348800u, 134348808u, 131592u, 134218248u, 131584u, 131072u, 134218248u, 8u, 134349320u, 512u, 134217728u, 134349312u, 134217728u, 131080u, 520u, 131072u, 134349312u, 134218240u, 0u, 512u, 131080u, 134349320u, 134218240u, 134217736u, 512u, 0u, 134348808u, 134218248u, 131072u, 134217728u, 134349320u, 8u, 131592u, 131584u, 134217736u, 134348800u, 134218248u, 520u, 134348800u, 131592u, 8u, 134348808u, 131584u };
// sbox4
// file des.c line 265
static uint32_t sbox4[64]={ 8396801u, 8321u, 8321u, 128u, 8396928u, 8388737u, 8388609u, 8193u, 0u, 8396800u, 8396800u, 8396929u, 129u, 0u, 8388736u, 8388609u, 1u, 8192u, 8388608u, 8396801u, 128u, 8388608u, 8193u, 8320u, 8388737u, 1u, 8320u, 8388736u, 8192u, 8396928u, 8396929u, 129u, 8388736u, 8388609u, 8396800u, 8396929u, 129u, 0u, 0u, 8396800u, 8320u, 8388736u, 8388737u, 1u, 8396801u, 8321u, 8321u, 128u, 8396929u, 129u, 1u, 8192u, 8388609u, 8193u, 8396928u, 8388737u, 8193u, 8320u, 8388608u, 8396801u, 128u, 8388608u, 8192u, 8396928u };
// sbox5
// file des.c line 277
static uint32_t sbox5[64]={ 256u, 34078976u, 34078720u, 1107296512u, 524288u, 256u, 1073741824u, 34078720u, 1074266368u, 524288u, 33554688u, 1074266368u, 1107296512u, 1107820544u, 524544u, 1073741824u, 33554432u, 1074266112u, 1074266112u, 0u, 1073742080u, 1107820800u, 1107820800u, 33554688u, 1107820544u, 1073742080u, 0u, 1107296256u, 34078976u, 33554432u, 1107296256u, 524544u, 524288u, 1107296512u, 256u, 33554432u, 1073741824u, 34078720u, 1107296512u, 1074266368u, 33554688u, 1073741824u, 1107820544u, 34078976u, 1074266368u, 256u, 33554432u, 1107820544u, 1107820800u, 524544u, 1107296256u, 1107820800u, 34078720u, 0u, 1074266112u, 1107296256u, 524544u, 33554688u, 1073742080u, 524288u, 0u, 1074266112u, 34078976u, 1073742080u };
// sbox6
// file des.c line 289
static uint32_t sbox6[64]={ 536870928u, 541065216u, 16384u, 541081616u, 541065216u, 16u, 541081616u, 4194304u, 536887296u, 4210704u, 4194304u, 536870928u, 4194320u, 536887296u, 536870912u, 16400u, 0u, 4194320u, 536887312u, 16384u, 4210688u, 536887312u, 16u, 541065232u, 541065232u, 0u, 4210704u, 541081600u, 16400u, 4210688u, 541081600u, 536870912u, 536887296u, 16u, 541065232u, 4210688u, 541081616u, 4194304u, 16400u, 536870928u, 4194304u, 536887296u, 536870912u, 16400u, 536870928u, 541081616u, 4210688u, 541065216u, 4210704u, 541081600u, 0u, 541065232u, 16u, 16384u, 541065216u, 4210704u, 16384u, 4194320u, 536887312u, 0u, 541081600u, 536870912u, 4194320u, 536887312u };
// sbox7
// file des.c line 301
static uint32_t sbox7[64]={ 2097152u, 69206018u, 67110914u, 0u, 2048u, 67110914u, 2099202u, 69208064u, 69208066u, 2097152u, 0u, 67108866u, 2u, 67108864u, 69206018u, 2050u, 67110912u, 2099202u, 2097154u, 67110912u, 67108866u, 69206016u, 69208064u, 2097154u, 69206016u, 2048u, 2050u, 69208066u, 2099200u, 2u, 67108864u, 2099200u, 67108864u, 2099200u, 2097152u, 67110914u, 67110914u, 69206018u, 69206018u, 2u, 2097154u, 67108864u, 67110912u, 2097152u, 69208064u, 2050u, 2099202u, 69208064u, 2050u, 67108866u, 69208066u, 69206016u, 2099200u, 0u, 2u, 69208066u, 0u, 2099202u, 69206016u, 2048u, 67108866u, 67110912u, 2048u, 2097154u };
// sbox8
// file des.c line 313
static uint32_t sbox8[64]={ 268439616u, 4096u, 262144u, 268701760u, 268435456u, 268439616u, 64u, 268435456u, 262208u, 268697600u, 268701760u, 266240u, 268701696u, 266304u, 4096u, 64u, 268697600u, 268435520u, 268439552u, 4160u, 266240u, 262208u, 268697664u, 268701696u, 4160u, 0u, 0u, 268697664u, 268435520u, 268439552u, 266304u, 262144u, 266304u, 262144u, 268701696u, 4096u, 64u, 268697664u, 4096u, 266304u, 268439552u, 64u, 268435520u, 268697600u, 268697664u, 268435456u, 262144u, 268439616u, 0u, 268701760u, 262208u, 268435520u, 268697600u, 268439552u, 268439616u, 0u, 268701760u, 266240u, 266240u, 4160u, 4160u, 262208u, 268435456u, 268701696u };
// write__return_value
// 
static ssize_t write__return_value;

// main
// file des.c line 1481
signed int main(int argc, char** argv)
{
  uint8_t *buf_put_be32_out;
  uint32_t buf_put_be32_val;
  void *buf_put_be32__buf;
  uint32_t *des_ecb_crypt_tmp_post_keys$30;
  uint32_t *des_ecb_crypt_tmp_post_keys$29;
  uint32_t *des_ecb_crypt_tmp_post_keys$28;
  uint32_t *des_ecb_crypt_tmp_post_keys$27;
  uint32_t *des_ecb_crypt_tmp_post_keys$26;
  uint32_t *des_ecb_crypt_tmp_post_keys$25;
  uint32_t *des_ecb_crypt_tmp_post_keys$24;
  uint32_t *des_ecb_crypt_tmp_post_keys$23;
  uint32_t *des_ecb_crypt_tmp_post_keys$22;
  uint32_t *des_ecb_crypt_tmp_post_keys$21;
  uint32_t *des_ecb_crypt_tmp_post_keys$20;
  uint32_t *des_ecb_crypt_tmp_post_keys$19;
  uint32_t *des_ecb_crypt_tmp_post_keys$18;
  uint32_t *des_ecb_crypt_tmp_post_keys$17;
  uint32_t *des_ecb_crypt_tmp_post_keys$16;
  uint32_t *des_ecb_crypt_tmp_post_keys$15;
  uint32_t *des_ecb_crypt_tmp_post_keys$14;
  uint32_t *des_ecb_crypt_tmp_post_keys$13;
  uint32_t *des_ecb_crypt_tmp_post_keys$12;
  uint32_t *des_ecb_crypt_tmp_post_keys$11;
  uint32_t *des_ecb_crypt_tmp_post_keys$10;
  uint32_t *des_ecb_crypt_tmp_post_keys$9;
  uint32_t *des_ecb_crypt_tmp_post_keys$8;
  uint32_t *des_ecb_crypt_tmp_post_keys$7;
  uint32_t *des_ecb_crypt_tmp_post_keys$6;
  uint32_t *des_ecb_crypt_tmp_post_keys$5;
  uint32_t *des_ecb_crypt_tmp_post_keys$4;
  uint32_t *des_ecb_crypt_tmp_post_keys$3;
  uint32_t *des_ecb_crypt_tmp_post_keys$2;
  uint32_t *des_ecb_crypt_tmp_post_keys$1;
  uint32_t *des_ecb_crypt_tmp_post_keys$0;
  uint32_t *des_ecb_crypt_tmp_post_keys;
  uint32_t *des_ecb_crypt_tmp_if_expr;
  uint32_t *des_ecb_crypt_keys;
  uint32_t des_ecb_crypt_work;
  uint32_t des_ecb_crypt_right;
  uint32_t des_ecb_crypt_left;
  signed int des_ecb_crypt_mode;
  uint8_t *des_ecb_crypt_to;
  const uint8_t *des_ecb_crypt_from;
  struct _des_ctx *des_ecb_crypt_ctx;
  uint32_t *des_key_schedule_tmp_post_subkey$0;
  uint32_t *des_key_schedule_tmp_post_subkey;
  const uint8_t *buf_get_be32_in;
  const void *buf_get_be32__buf;
  signed int des_key_schedule_round;
  uint32_t des_key_schedule_work;
  uint32_t des_key_schedule_right;
  uint32_t des_key_schedule_left;
  uint32_t *des_key_schedule_subkey;
  const uint8_t *des_key_schedule_rawkey;
  signed int des_setkey_i;
  struct _des_ctx *des_setkey_ctx;
  const uint8_t *des_setkey_key;
  des_ctx main_ctx;
  uint8_t main_in_key[24];
  read(0, (void *)main_in_key, 24ul);
  read(0, (void *)in_pub, 64ul);
  /* begin function des_setkey */
  ;
  des_setkey_key = main_in_key;
  des_setkey_ctx = &main_ctx;
  /* begin function des_key_schedule */
  ;
  des_key_schedule_rawkey = des_setkey_key;
  des_key_schedule_subkey = des_setkey_ctx->encrypt_subkeys;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(des_key_schedule_rawkey + 0);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  des_key_schedule_left = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(des_key_schedule_rawkey + 4);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  des_key_schedule_right = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  des_key_schedule_work = (des_key_schedule_right >> 4 ^ des_key_schedule_left) & 252645135u;
  des_key_schedule_left = des_key_schedule_left ^ des_key_schedule_work;
  des_key_schedule_right = des_key_schedule_right ^ des_key_schedule_work << 4;
  des_key_schedule_work = (des_key_schedule_right >> 0 ^ des_key_schedule_left) & 269488144u;
  des_key_schedule_left = des_key_schedule_left ^ des_key_schedule_work;
  des_key_schedule_right = des_key_schedule_right ^ des_key_schedule_work << 0;
  des_key_schedule_left = leftkey_swap[(signed int)(des_key_schedule_left >> 0 & 15u)] << 3 | leftkey_swap[(signed int)(des_key_schedule_left >> 8 & 15u)] << 2 | leftkey_swap[(signed int)(des_key_schedule_left >> 16 & 15u)] << 1 | leftkey_swap[(signed int)(des_key_schedule_left >> 24 & 15u)] | leftkey_swap[(signed int)(des_key_schedule_left >> 5 & 15u)] << 7 | leftkey_swap[(signed int)(des_key_schedule_left >> 13 & 15u)] << 6 | leftkey_swap[(signed int)(des_key_schedule_left >> 21 & 15u)] << 5 | leftkey_swap[(signed int)(des_key_schedule_left >> 29 & 15u)] << 4;
  des_key_schedule_left = des_key_schedule_left & 268435455u;
  des_key_schedule_right = rightkey_swap[(signed int)(des_key_schedule_right >> 1 & 15u)] << 3 | rightkey_swap[(signed int)(des_key_schedule_right >> 9 & 15u)] << 2 | rightkey_swap[(signed int)(des_key_schedule_right >> 17 & 15u)] << 1 | rightkey_swap[(signed int)(des_key_schedule_right >> 25 & 15u)] | rightkey_swap[(signed int)(des_key_schedule_right >> 4 & 15u)] << 7 | rightkey_swap[(signed int)(des_key_schedule_right >> 12 & 15u)] << 6 | rightkey_swap[(signed int)(des_key_schedule_right >> 20 & 15u)] << 5 | rightkey_swap[(signed int)(des_key_schedule_right >> 28 & 15u)] << 4;
  des_key_schedule_right = des_key_schedule_right & 268435455u;
  des_key_schedule_round = 0;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  des_key_schedule_left = (des_key_schedule_left << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_left >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_right = (des_key_schedule_right << (signed int)encrypt_rotate_tab[des_key_schedule_round] | des_key_schedule_right >> 28 - (signed int)encrypt_rotate_tab[des_key_schedule_round]) & 268435455u;
  des_key_schedule_tmp_post_subkey = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey = des_key_schedule_left << 4 & 603979776u | des_key_schedule_left << 28 & 268435456u | des_key_schedule_left << 14 & 134217728u | des_key_schedule_left << 18 & 34078720u | des_key_schedule_left << 6 & 16777216u | des_key_schedule_left << 9 & 2097152u | des_key_schedule_left >> 1 & 1048576u | des_key_schedule_left << 10 & 262144u | des_key_schedule_left << 2 & 131072u | des_key_schedule_left >> 10 & 65536u | des_key_schedule_right >> 13 & 8192u | des_key_schedule_right >> 4 & 4096u | des_key_schedule_right << 6 & 2048u | des_key_schedule_right >> 1 & 1024u | des_key_schedule_right >> 14 & 512u | des_key_schedule_right & 256u | des_key_schedule_right >> 5 & 32u | des_key_schedule_right >> 10 & 16u | des_key_schedule_right >> 3 & 8u | des_key_schedule_right >> 18 & 4u | des_key_schedule_right >> 26 & 2u | des_key_schedule_right >> 24 & 1u;
  des_key_schedule_tmp_post_subkey$0 = des_key_schedule_subkey;
  des_key_schedule_subkey = des_key_schedule_subkey + 1;
  *des_key_schedule_tmp_post_subkey$0 = des_key_schedule_left << 15 & 536870912u | des_key_schedule_left << 17 & 268435456u | des_key_schedule_left << 10 & 134217728u | des_key_schedule_left << 22 & 67108864u | des_key_schedule_left >> 2 & 33554432u | des_key_schedule_left << 1 & 16777216u | des_key_schedule_left << 16 & 2097152u | des_key_schedule_left << 11 & 1048576u | des_key_schedule_left << 3 & 524288u | des_key_schedule_left >> 6 & 262144u | des_key_schedule_left << 15 & 131072u | des_key_schedule_left >> 4 & 65536u | des_key_schedule_right >> 2 & 8192u | des_key_schedule_right << 8 & 4096u | des_key_schedule_right >> 14 & 2056u | des_key_schedule_right >> 9 & 1024u | des_key_schedule_right & 512u | des_key_schedule_right << 7 & 256u | des_key_schedule_right >> 7 & 32u | des_key_schedule_right >> 3 & 17u | des_key_schedule_right << 2 & 4u | des_key_schedule_right >> 21 & 2u;
  des_key_schedule_round = des_key_schedule_round + 1;
  /* end function des_key_schedule */
  ;
  des_setkey_i = 0;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  des_setkey_ctx->decrypt_subkeys[des_setkey_i] = des_setkey_ctx->encrypt_subkeys[30 - des_setkey_i];
  des_setkey_ctx->decrypt_subkeys[des_setkey_i + 1] = des_setkey_ctx->encrypt_subkeys[31 - des_setkey_i];
  des_setkey_i = des_setkey_i + 2;
  0;
  /* end function des_setkey */
  ;
  /* begin function des_ecb_crypt */
  ;
  des_ecb_crypt_ctx = &main_ctx;
  des_ecb_crypt_from = in_pub;
  des_ecb_crypt_to = out;
  des_ecb_crypt_mode = 0;
  if(!(des_ecb_crypt_mode == 0))
    des_ecb_crypt_tmp_if_expr = des_ecb_crypt_ctx->decrypt_subkeys;

  else
    des_ecb_crypt_tmp_if_expr = des_ecb_crypt_ctx->encrypt_subkeys;
  des_ecb_crypt_keys = des_ecb_crypt_tmp_if_expr;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(des_ecb_crypt_from + 0);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  des_ecb_crypt_left = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(des_ecb_crypt_from + 4);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  des_ecb_crypt_right = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  des_ecb_crypt_work = (des_ecb_crypt_left >> 4 ^ des_ecb_crypt_right) & 252645135u;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work << 4;
  des_ecb_crypt_work = (des_ecb_crypt_left >> 16 ^ des_ecb_crypt_right) & 65535u;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work << 16;
  des_ecb_crypt_work = (des_ecb_crypt_right >> 2 ^ des_ecb_crypt_left) & 858993459u;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work << 2;
  des_ecb_crypt_work = (des_ecb_crypt_right >> 8 ^ des_ecb_crypt_left) & 16711935u;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work << 8;
  des_ecb_crypt_right = des_ecb_crypt_right << 1 | des_ecb_crypt_right >> 31;
  des_ecb_crypt_work = (des_ecb_crypt_left ^ des_ecb_crypt_right) & 0xAAAAAAAAu;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left << 1 | des_ecb_crypt_left >> 31;
  des_ecb_crypt_tmp_post_keys = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$0 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$0;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$1 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$1;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$2 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$2;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$3 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$3;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$4 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$4;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$5 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$5;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$6 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$6;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$7 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$7;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$8 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$8;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$9 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$9;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$10 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$10;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$11 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$11;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$12 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$12;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$13 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$13;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$14 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$14;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$15 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$15;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$16 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$16;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$17 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$17;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$18 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$18;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$19 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$19;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$20 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$20;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$21 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$21;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$22 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$22;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$23 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$23;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$24 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$24;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$25 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$25;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$26 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$26;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$27 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_right ^ *des_ecb_crypt_tmp_post_keys$27;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$28 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_right << 28 | des_ecb_crypt_right >> 4) ^ *des_ecb_crypt_tmp_post_keys$28;
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_left = des_ecb_crypt_left ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$29 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = des_ecb_crypt_left ^ *des_ecb_crypt_tmp_post_keys$29;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox8[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox6[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox4[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox2[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_tmp_post_keys$30 = des_ecb_crypt_keys;
  des_ecb_crypt_keys = des_ecb_crypt_keys + 1;
  des_ecb_crypt_work = (des_ecb_crypt_left << 28 | des_ecb_crypt_left >> 4) ^ *des_ecb_crypt_tmp_post_keys$30;
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox7[(signed int)(des_ecb_crypt_work & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox5[(signed int)(des_ecb_crypt_work >> 8 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox3[(signed int)(des_ecb_crypt_work >> 16 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right ^ sbox1[(signed int)(des_ecb_crypt_work >> 24 & 63u)];
  des_ecb_crypt_right = des_ecb_crypt_right << 31 | des_ecb_crypt_right >> 1;
  des_ecb_crypt_work = (des_ecb_crypt_right ^ des_ecb_crypt_left) & 0xAAAAAAAAu;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left << 31 | des_ecb_crypt_left >> 1;
  des_ecb_crypt_work = (des_ecb_crypt_left >> 8 ^ des_ecb_crypt_right) & 16711935u;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work << 8;
  des_ecb_crypt_work = (des_ecb_crypt_left >> 2 ^ des_ecb_crypt_right) & 858993459u;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work << 2;
  des_ecb_crypt_work = (des_ecb_crypt_right >> 16 ^ des_ecb_crypt_left) & 65535u;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work << 16;
  des_ecb_crypt_work = (des_ecb_crypt_right >> 4 ^ des_ecb_crypt_left) & 252645135u;
  des_ecb_crypt_left = des_ecb_crypt_left ^ des_ecb_crypt_work;
  des_ecb_crypt_right = des_ecb_crypt_right ^ des_ecb_crypt_work << 4;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)(des_ecb_crypt_to + 0);
  buf_put_be32_val = des_ecb_crypt_right;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)(des_ecb_crypt_to + 4);
  buf_put_be32_val = des_ecb_crypt_left;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  0;
  /* end function des_ecb_crypt */
  ;
  write(1, (const void *)out, 64ul);
  main__return_value = 0;
}

