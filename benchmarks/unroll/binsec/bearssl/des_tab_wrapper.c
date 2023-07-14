#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-#anon#ST[*{cSYMbr_block_cbcenc_class_#0={ST[U64'context_size'|U32'block_size'|U32'log_block_size'|*{V(*{*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{cV}$cV$|U64)->V}$V(*{*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{cV}$cV$|U64)->V$'init'|*{V(*{c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{V}$V$|*{V}$V$|U64)->V}$V(*{c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{V}$V$|*{V}$V$|U64)->V$'run']}}$cSYMbr_block_cbcenc_class_#0$'vtable'|ARR96{U32}$U32$'skey'|U32'num_rounds']
// file ../inc/bearssl_block.h line 2224
struct anonymous;

// tag-br_block_cbcenc_class_
// file ../inc/bearssl_block.h line 393
struct br_block_cbcenc_class_;


typedef unsigned int __CPROVER_size_t;
typedef struct br_block_cbcenc_class_ br_block_cbcenc_class;
typedef struct anonymous br_des_tab_cbcenc_keys;




// Fconf
// file des_tab_wrapper.c line 168
static inline uint32_t Fconf(uint32_t r0, uint32_t skl, uint32_t skr);
// __builtin___memcpy_chk
// file <builtin-architecture-strings> line 20

// br_dec32be
// file des_tab_wrapper.c line 266
static inline uint32_t br_dec32be(const void *src);
// br_des_do_IP
// file des_tab_wrapper.c line 205
void br_des_do_IP(uint32_t *xl, uint32_t *xr);
// br_des_do_invIP
// file des_tab_wrapper.c line 237
void br_des_do_invIP(uint32_t *xl, uint32_t *xr);
// br_des_tab_cbcenc_run
// file des_tab_wrapper.c line 313
void br_des_tab_cbcenc_run(const br_des_tab_cbcenc_keys *ctx, void *iv, void *data, size_t len);
// br_des_tab_process_block
// file des_tab_wrapper.c line 291
void br_des_tab_process_block(unsigned int num_rounds, const uint32_t *skey, void *block);
// br_enc32be
// file des_tab_wrapper.c line 278
static inline void br_enc32be(void *dst, uint32_t x);
// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26
static inline void * memcpy(void * restrict __dest, const void * restrict __src, size_t __len);
// process_block_unit
// file des_tab_wrapper.c line 185
static void process_block_unit(uint32_t *pl, uint32_t *pr, const uint32_t *skey);

struct anonymous
{
  // vtable
  const br_block_cbcenc_class *vtable;
  // skey
  uint32_t skey[96];
  // num_rounds
  unsigned int num_rounds;
};

struct br_block_cbcenc_class_
{
  // context_size
  size_t context_size;
  // block_size
  unsigned int block_size;
  // log_block_size
  unsigned int log_block_size;
  // init
  void (*init)(const br_block_cbcenc_class **, const void *, size_t);
  // run
  void (*run)(const br_block_cbcenc_class * const *, void *, void *, size_t);
};


// Fconf__return_value
// 
static uint32_t Fconf__return_value;
// S1
// file des_tab_wrapper.c line 14
static const uint32_t S1[64]={ 8421888u, 0u, 32768u, 8421890u, 8421378u, 33282u, 2u, 32768u, 512u, 8421888u, 8421890u, 512u, 8389122u, 8421378u, 8388608u, 2u, 514u, 8389120u, 8389120u, 33280u, 33280u, 8421376u, 8421376u, 8389122u, 32770u, 8388610u, 8388610u, 32770u, 0u, 514u, 33282u, 8388608u, 32768u, 8421890u, 2u, 8421376u, 8421888u, 8388608u, 8388608u, 512u, 8421378u, 32768u, 33280u, 8388610u, 512u, 2u, 8389122u, 33282u, 8421890u, 32770u, 8421376u, 8389122u, 8388610u, 514u, 33282u, 8421888u, 514u, 8389120u, 8389120u, 0u, 32770u, 33280u, 0u, 8421378u };
// S2
// file des_tab_wrapper.c line 33
static const uint32_t S2[64]={ 1074282512u, 1073758208u, 16384u, 540688u, 524288u, 16u, 1074266128u, 1073758224u, 1073741840u, 1074282512u, 1074282496u, 1073741824u, 1073758208u, 524288u, 16u, 1074266128u, 540672u, 524304u, 1073758224u, 0u, 1073741824u, 16384u, 540688u, 1074266112u, 524304u, 1073741840u, 0u, 540672u, 16400u, 1074282496u, 1074266112u, 16400u, 0u, 540688u, 1074266128u, 524288u, 1073758224u, 1074266112u, 1074282496u, 16384u, 1074266112u, 1073758208u, 16u, 1074282512u, 540688u, 16u, 16384u, 1073741824u, 16400u, 1074282496u, 524288u, 1073741840u, 524304u, 1073758224u, 1073741840u, 524304u, 540672u, 0u, 1073758208u, 16400u, 1073741824u, 1074266128u, 1074282512u, 540672u };
// S3
// file des_tab_wrapper.c line 52
static const uint32_t S3[64]={ 260u, 67174656u, 0u, 67174404u, 67109120u, 0u, 65796u, 67109120u, 65540u, 67108868u, 67108868u, 65536u, 67174660u, 65540u, 67174400u, 260u, 67108864u, 4u, 67174656u, 256u, 65792u, 67174400u, 67174404u, 65796u, 67109124u, 65792u, 65536u, 67109124u, 4u, 67174660u, 256u, 67108864u, 67174656u, 67108864u, 65540u, 260u, 65536u, 67174656u, 67109120u, 0u, 256u, 65540u, 67174660u, 67109120u, 67108868u, 256u, 0u, 67174404u, 67109124u, 65536u, 67108864u, 67174660u, 4u, 65796u, 65792u, 67108868u, 67174400u, 67109124u, 260u, 67174400u, 65796u, 4u, 67174404u, 65792u };
// S4
// file des_tab_wrapper.c line 71
static const uint32_t S4[64]={ 0x80401000u, 0x80001040u, 0x80001040u, 64u, 4198464u, 0x80400040u, 0x80400000u, 0x80001000u, 0u, 4198400u, 4198400u, 0x80401040u, 0x80000040u, 0u, 4194368u, 0x80400000u, 0x80000000u, 4096u, 4194304u, 0x80401000u, 64u, 4194304u, 0x80001000u, 4160u, 0x80400040u, 0x80000000u, 4160u, 4194368u, 4096u, 4198464u, 0x80401040u, 0x80000040u, 4194368u, 0x80400000u, 4198400u, 0x80401040u, 0x80000040u, 0u, 0u, 4198400u, 4160u, 4194368u, 0x80400040u, 0x80000000u, 0x80401000u, 0x80001040u, 0x80001040u, 64u, 0x80401040u, 0x80000040u, 0x80000000u, 4096u, 0x80400000u, 0x80001000u, 4198464u, 0x80400040u, 0x80001000u, 4160u, 4194304u, 0x80401000u, 64u, 4194304u, 4096u, 4198464u };
// S5
// file des_tab_wrapper.c line 90
static const uint32_t S5[64]={ 128u, 17039488u, 17039360u, 553648256u, 262144u, 128u, 536870912u, 17039360u, 537133184u, 262144u, 16777344u, 537133184u, 553648256u, 553910272u, 262272u, 536870912u, 16777216u, 537133056u, 537133056u, 0u, 536871040u, 553910400u, 553910400u, 16777344u, 553910272u, 536871040u, 0u, 553648128u, 17039488u, 16777216u, 553648128u, 262272u, 262144u, 553648256u, 128u, 16777216u, 536870912u, 17039360u, 553648256u, 537133184u, 16777344u, 536870912u, 553910272u, 17039488u, 537133184u, 128u, 16777216u, 553910272u, 553910400u, 262272u, 553648128u, 553910400u, 17039360u, 0u, 537133056u, 553648128u, 262272u, 16777344u, 536871040u, 262144u, 0u, 537133056u, 17039488u, 536871040u };
// S6
// file des_tab_wrapper.c line 109
static const uint32_t S6[64]={ 268435464u, 270532608u, 8192u, 270540808u, 270532608u, 8u, 270540808u, 2097152u, 268443648u, 2105352u, 2097152u, 268435464u, 2097160u, 268443648u, 268435456u, 8200u, 0u, 2097160u, 268443656u, 8192u, 2105344u, 268443656u, 8u, 270532616u, 270532616u, 0u, 2105352u, 270540800u, 8200u, 2105344u, 270540800u, 268435456u, 268443648u, 8u, 270532616u, 2105344u, 270540808u, 2097152u, 8200u, 268435464u, 2097152u, 268443648u, 268435456u, 8200u, 268435464u, 270540808u, 2105344u, 270532608u, 2105352u, 270540800u, 0u, 270532616u, 8u, 8192u, 270532608u, 2105352u, 8192u, 2097160u, 268443656u, 0u, 270540800u, 268435456u, 2097160u, 268443656u };
// S7
// file des_tab_wrapper.c line 128
static const uint32_t S7[64]={ 1048576u, 34603009u, 33555457u, 0u, 1024u, 33555457u, 1049601u, 34604032u, 34604033u, 1048576u, 0u, 33554433u, 1u, 33554432u, 34603009u, 1025u, 33555456u, 1049601u, 1048577u, 33555456u, 33554433u, 34603008u, 34604032u, 1048577u, 34603008u, 1024u, 1025u, 34604033u, 1049600u, 1u, 33554432u, 1049600u, 33554432u, 1049600u, 1048576u, 33555457u, 33555457u, 34603009u, 34603009u, 1u, 1048577u, 33554432u, 33555456u, 1048576u, 34604032u, 1025u, 1049601u, 34604032u, 1025u, 33554433u, 34604033u, 34603008u, 1049600u, 0u, 1u, 34604033u, 0u, 1049601u, 34603008u, 1024u, 33554433u, 33555456u, 1024u, 1048577u };
// S8
// file des_tab_wrapper.c line 147
static const uint32_t S8[64]={ 134219808u, 2048u, 131072u, 134350880u, 134217728u, 134219808u, 32u, 134217728u, 131104u, 134348800u, 134350880u, 133120u, 134350848u, 133152u, 2048u, 32u, 134348800u, 134217760u, 134219776u, 2080u, 133120u, 131104u, 134348832u, 134350848u, 2080u, 0u, 0u, 134348832u, 134217760u, 134219776u, 133152u, 131072u, 133152u, 131072u, 134350848u, 2048u, 32u, 134348832u, 2048u, 133152u, 134219776u, 32u, 134217760u, 134348800u, 134348832u, 134217728u, 131072u, 134219808u, 0u, 134350880u, 131104u, 134217760u, 134348800u, 134219776u, 134219808u, 0u, 134350880u, 133120u, 133120u, 2080u, 2080u, 131104u, 134217728u, 134350848u };
// __builtin___memcpy_chk__return_value
// 

// br_dec32be__return_value
// 
static uint32_t br_dec32be__return_value;
// data
// file des_tab_wrapper.c line 336
uint8_t data[16];
// iv
// file des_tab_wrapper.c line 335
uint8_t iv[8];
// main__return_value
// 
static signed int main__return_value;
// memcpy__return_value
// 
static void *memcpy__return_value;
// read__return_value
// 
static signed int read__return_value;
// write__return_value
// 
static signed int write__return_value;

// main
// file des_tab_wrapper.c line 338
signed int main(int argc, char** argv)
{
  unsigned char *br_enc32be_buf;
  uint32_t br_enc32be_x;
  void *br_enc32be_dst;
  uint32_t br_des_do_invIP_t;
  uint32_t br_des_do_invIP_r;
  uint32_t br_des_do_invIP_l;
  uint32_t *br_des_do_invIP_xr;
  uint32_t *br_des_do_invIP_xl;
  uint32_t Fconf_r1;
  uint32_t Fconf_skr;
  uint32_t Fconf_skl;
  uint32_t Fconf_r0;
  uint32_t process_block_unit_return_value_Fconf;
  uint32_t process_block_unit_t;
  uint32_t process_block_unit_r;
  uint32_t process_block_unit_l;
  signed int process_block_unit_i;
  const uint32_t *process_block_unit_skey;
  uint32_t *process_block_unit_pr;
  uint32_t *process_block_unit_pl;
  uint32_t br_des_do_IP_t;
  uint32_t br_des_do_IP_r;
  uint32_t br_des_do_IP_l;
  uint32_t *br_des_do_IP_xr;
  uint32_t *br_des_do_IP_xl;
  const unsigned char *br_dec32be_buf;
  const void *br_dec32be_src;
  uint32_t br_des_tab_process_block_r;
  uint32_t br_des_tab_process_block_l;
  unsigned char *br_des_tab_process_block_buf;
  void *br_des_tab_process_block_block;
  const uint32_t *br_des_tab_process_block_skey;
  unsigned int br_des_tab_process_block_num_rounds;
  signed int br_des_tab_cbcenc_run_i;
  unsigned char *br_des_tab_cbcenc_run_ivbuf;
  unsigned char *br_des_tab_cbcenc_run_buf;
  size_t br_des_tab_cbcenc_run_len;
  void *br_des_tab_cbcenc_run_data;
  void *br_des_tab_cbcenc_run_iv;
  const br_des_tab_cbcenc_keys *br_des_tab_cbcenc_run_ctx;
  br_des_tab_cbcenc_keys main_ctx;
  main_ctx.num_rounds = 2u;
  read(0, (const void *)data, 16);
  /* begin function br_des_tab_cbcenc_run */
  ;
  br_des_tab_cbcenc_run_ctx = &main_ctx;
  br_des_tab_cbcenc_run_iv = (void *)iv;
  br_des_tab_cbcenc_run_data = (void *)data;
  br_des_tab_cbcenc_run_len = 16ul;
  br_des_tab_cbcenc_run_ivbuf = (unsigned char *)br_des_tab_cbcenc_run_iv;
  br_des_tab_cbcenc_run_buf = (unsigned char *)br_des_tab_cbcenc_run_data;
  br_des_tab_cbcenc_run_i = 0;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  /* begin function br_des_tab_process_block */
  ;
  br_des_tab_process_block_num_rounds = br_des_tab_cbcenc_run_ctx->num_rounds;
  br_des_tab_process_block_skey = br_des_tab_cbcenc_run_ctx->skey;
  br_des_tab_process_block_block = (void *)br_des_tab_cbcenc_run_buf;
  br_des_tab_process_block_buf = (unsigned char *)br_des_tab_process_block_block;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)br_des_tab_process_block_buf;
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_des_tab_process_block_l = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_des_tab_process_block_buf + 4);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_des_tab_process_block_r = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_des_do_IP */
  ;
  br_des_do_IP_xl = &br_des_tab_process_block_l;
  br_des_do_IP_xr = &br_des_tab_process_block_r;
  br_des_do_IP_l = *br_des_do_IP_xl;
  br_des_do_IP_r = *br_des_do_IP_xr;
  br_des_do_IP_t = (br_des_do_IP_l >> 4 ^ br_des_do_IP_r) & 252645135u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 4;
  br_des_do_IP_t = (br_des_do_IP_l >> 16 ^ br_des_do_IP_r) & 65535u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 16;
  br_des_do_IP_t = (br_des_do_IP_r >> 2 ^ br_des_do_IP_l) & 858993459u;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t << 2;
  br_des_do_IP_t = (br_des_do_IP_r >> 8 ^ br_des_do_IP_l) & 16711935u;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t << 8;
  br_des_do_IP_t = (br_des_do_IP_l >> 1 ^ br_des_do_IP_r) & 1431655765u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 1;
  *br_des_do_IP_xl = br_des_do_IP_l;
  *br_des_do_IP_xr = br_des_do_IP_r;
  /* end function br_des_do_IP */
  ;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function process_block_unit */
  ;
  process_block_unit_pl = &br_des_tab_process_block_l;
  process_block_unit_pr = &br_des_tab_process_block_r;
  process_block_unit_skey = br_des_tab_process_block_skey;
  process_block_unit_l = *process_block_unit_pl;
  process_block_unit_r = *process_block_unit_pr;
  process_block_unit_i = 0;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  *process_block_unit_pl = process_block_unit_r;
  *process_block_unit_pr = process_block_unit_l;
  /* end function process_block_unit */
  ;
  br_des_tab_process_block_skey = br_des_tab_process_block_skey + 32;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function process_block_unit */
  ;
  process_block_unit_pl = &br_des_tab_process_block_l;
  process_block_unit_pr = &br_des_tab_process_block_r;
  process_block_unit_skey = br_des_tab_process_block_skey;
  process_block_unit_l = *process_block_unit_pl;
  process_block_unit_r = *process_block_unit_pr;
  process_block_unit_i = 0;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  *process_block_unit_pl = process_block_unit_r;
  *process_block_unit_pr = process_block_unit_l;
  /* end function process_block_unit */
  ;
  br_des_tab_process_block_skey = br_des_tab_process_block_skey + 32;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function br_des_do_invIP */
  ;
  br_des_do_invIP_xl = &br_des_tab_process_block_l;
  br_des_do_invIP_xr = &br_des_tab_process_block_r;
  br_des_do_invIP_l = *br_des_do_invIP_xl;
  br_des_do_invIP_r = *br_des_do_invIP_xr;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 1 ^ br_des_do_invIP_r) & 1431655765u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 1;
  br_des_do_invIP_t = (br_des_do_invIP_r >> 8 ^ br_des_do_invIP_l) & 16711935u;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t << 8;
  br_des_do_invIP_t = (br_des_do_invIP_r >> 2 ^ br_des_do_invIP_l) & 858993459u;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t << 2;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 16 ^ br_des_do_invIP_r) & 65535u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 16;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 4 ^ br_des_do_invIP_r) & 252645135u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 4;
  *br_des_do_invIP_xl = br_des_do_invIP_l;
  *br_des_do_invIP_xr = br_des_do_invIP_r;
  /* end function br_des_do_invIP */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)br_des_tab_process_block_buf;
  br_enc32be_x = br_des_tab_process_block_l;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_des_tab_process_block_buf + 4);
  br_enc32be_x = br_des_tab_process_block_r;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* end function br_des_tab_process_block */
  ;
  memcpy((void *)br_des_tab_cbcenc_run_ivbuf, (const void *)br_des_tab_cbcenc_run_buf, 8ul);
  br_des_tab_cbcenc_run_buf = br_des_tab_cbcenc_run_buf + 8;
  br_des_tab_cbcenc_run_len = br_des_tab_cbcenc_run_len - 8ul;
  br_des_tab_cbcenc_run_i = 0;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] = (unsigned char)((signed int)br_des_tab_cbcenc_run_buf[br_des_tab_cbcenc_run_i] ^ (signed int)br_des_tab_cbcenc_run_ivbuf[br_des_tab_cbcenc_run_i]);
  br_des_tab_cbcenc_run_i = br_des_tab_cbcenc_run_i + 1;
  /* begin function br_des_tab_process_block */
  ;
  br_des_tab_process_block_num_rounds = br_des_tab_cbcenc_run_ctx->num_rounds;
  br_des_tab_process_block_skey = br_des_tab_cbcenc_run_ctx->skey;
  br_des_tab_process_block_block = (void *)br_des_tab_cbcenc_run_buf;
  br_des_tab_process_block_buf = (unsigned char *)br_des_tab_process_block_block;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)br_des_tab_process_block_buf;
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_des_tab_process_block_l = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_des_tab_process_block_buf + 4);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_des_tab_process_block_r = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_des_do_IP */
  ;
  br_des_do_IP_xl = &br_des_tab_process_block_l;
  br_des_do_IP_xr = &br_des_tab_process_block_r;
  br_des_do_IP_l = *br_des_do_IP_xl;
  br_des_do_IP_r = *br_des_do_IP_xr;
  br_des_do_IP_t = (br_des_do_IP_l >> 4 ^ br_des_do_IP_r) & 252645135u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 4;
  br_des_do_IP_t = (br_des_do_IP_l >> 16 ^ br_des_do_IP_r) & 65535u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 16;
  br_des_do_IP_t = (br_des_do_IP_r >> 2 ^ br_des_do_IP_l) & 858993459u;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t << 2;
  br_des_do_IP_t = (br_des_do_IP_r >> 8 ^ br_des_do_IP_l) & 16711935u;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t << 8;
  br_des_do_IP_t = (br_des_do_IP_l >> 1 ^ br_des_do_IP_r) & 1431655765u;
  br_des_do_IP_r = br_des_do_IP_r ^ br_des_do_IP_t;
  br_des_do_IP_l = br_des_do_IP_l ^ br_des_do_IP_t << 1;
  *br_des_do_IP_xl = br_des_do_IP_l;
  *br_des_do_IP_xr = br_des_do_IP_r;
  /* end function br_des_do_IP */
  ;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function process_block_unit */
  ;
  process_block_unit_pl = &br_des_tab_process_block_l;
  process_block_unit_pr = &br_des_tab_process_block_r;
  process_block_unit_skey = br_des_tab_process_block_skey;
  process_block_unit_l = *process_block_unit_pl;
  process_block_unit_r = *process_block_unit_pr;
  process_block_unit_i = 0;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  *process_block_unit_pl = process_block_unit_r;
  *process_block_unit_pr = process_block_unit_l;
  /* end function process_block_unit */
  ;
  br_des_tab_process_block_skey = br_des_tab_process_block_skey + 32;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function process_block_unit */
  ;
  process_block_unit_pl = &br_des_tab_process_block_l;
  process_block_unit_pr = &br_des_tab_process_block_r;
  process_block_unit_skey = br_des_tab_process_block_skey;
  process_block_unit_l = *process_block_unit_pl;
  process_block_unit_r = *process_block_unit_pr;
  process_block_unit_i = 0;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  /* begin function Fconf */
  ;
  Fconf_r0 = process_block_unit_r;
  Fconf_skl = process_block_unit_skey[(process_block_unit_i << 1) + 0];
  Fconf_skr = process_block_unit_skey[(process_block_unit_i << 1) + 1];
  Fconf_r1 = Fconf_r0 << 16 | Fconf_r0 >> 16;
  process_block_unit_return_value_Fconf = S1[(signed int)((Fconf_r1 >> 11 ^ Fconf_skl >> 18) & 63u)] | S2[(signed int)((Fconf_r0 >> 23 ^ Fconf_skl >> 12) & 63u)] | S3[(signed int)((Fconf_r0 >> 19 ^ Fconf_skl >> 6) & 63u)] | S4[(signed int)((Fconf_r0 >> 15 ^ Fconf_skl) & 63u)] | S5[(signed int)((Fconf_r0 >> 11 ^ Fconf_skr >> 18) & 63u)] | S6[(signed int)((Fconf_r0 >> 7 ^ Fconf_skr >> 12) & 63u)] | S7[(signed int)((Fconf_r0 >> 3 ^ Fconf_skr >> 6) & 63u)] | S8[(signed int)((Fconf_r1 >> 15 ^ Fconf_skr) & 63u)];
  /* end function Fconf */
  ;
  process_block_unit_t = process_block_unit_l ^ process_block_unit_return_value_Fconf;
  process_block_unit_l = process_block_unit_r;
  process_block_unit_r = process_block_unit_t;
  process_block_unit_i = process_block_unit_i + 1;
  *process_block_unit_pl = process_block_unit_r;
  *process_block_unit_pr = process_block_unit_l;
  /* end function process_block_unit */
  ;
  br_des_tab_process_block_skey = br_des_tab_process_block_skey + 32;
  br_des_tab_process_block_num_rounds = br_des_tab_process_block_num_rounds - 1u;
  /* begin function br_des_do_invIP */
  ;
  br_des_do_invIP_xl = &br_des_tab_process_block_l;
  br_des_do_invIP_xr = &br_des_tab_process_block_r;
  br_des_do_invIP_l = *br_des_do_invIP_xl;
  br_des_do_invIP_r = *br_des_do_invIP_xr;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 1 ^ br_des_do_invIP_r) & 1431655765u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 1;
  br_des_do_invIP_t = (br_des_do_invIP_r >> 8 ^ br_des_do_invIP_l) & 16711935u;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t << 8;
  br_des_do_invIP_t = (br_des_do_invIP_r >> 2 ^ br_des_do_invIP_l) & 858993459u;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t << 2;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 16 ^ br_des_do_invIP_r) & 65535u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 16;
  br_des_do_invIP_t = (br_des_do_invIP_l >> 4 ^ br_des_do_invIP_r) & 252645135u;
  br_des_do_invIP_r = br_des_do_invIP_r ^ br_des_do_invIP_t;
  br_des_do_invIP_l = br_des_do_invIP_l ^ br_des_do_invIP_t << 4;
  *br_des_do_invIP_xl = br_des_do_invIP_l;
  *br_des_do_invIP_xr = br_des_do_invIP_r;
  /* end function br_des_do_invIP */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)br_des_tab_process_block_buf;
  br_enc32be_x = br_des_tab_process_block_l;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_des_tab_process_block_buf + 4);
  br_enc32be_x = br_des_tab_process_block_r;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* end function br_des_tab_process_block */
  ;
  memcpy((void *)br_des_tab_cbcenc_run_ivbuf, (const void *)br_des_tab_cbcenc_run_buf, 8ul);
  br_des_tab_cbcenc_run_buf = br_des_tab_cbcenc_run_buf + 8;
  br_des_tab_cbcenc_run_len = br_des_tab_cbcenc_run_len - 8ul;
  /* end function br_des_tab_cbcenc_run */
  ;
  write(1, (const void *)data, 16);
  main__return_value = 0;
}

// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26

