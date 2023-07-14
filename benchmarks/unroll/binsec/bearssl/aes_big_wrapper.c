#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-#anon#ST[*{cSYMbr_block_cbcenc_class_#0={ST[U64'context_size'|U32'block_size'|U32'log_block_size'|*{V(*{*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{cV}$cV$|U64)->V}$V(*{*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{cV}$cV$|U64)->V$'init'|*{V(*{c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{V}$V$|*{V}$V$|U64)->V}$V(*{c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$}$c*{cSYMbr_block_cbcenc_class_#0}$cSYMbr_block_cbcenc_class_#0$$|*{V}$V$|*{V}$V$|U64)->V$'run']}}$cSYMbr_block_cbcenc_class_#0$'vtable'|ARR60{U32}$U32$'skey'|U32'num_rounds']
// file ../inc/bearssl_block.h line 709
struct anonymous;

// tag-br_block_cbcenc_class_
// file ../inc/bearssl_block.h line 393
struct br_block_cbcenc_class_;


typedef unsigned int __CPROVER_size_t;
typedef struct anonymous br_aes_big_cbcenc_keys;
typedef struct br_block_cbcenc_class_ br_block_cbcenc_class;





// __builtin___memcpy_chk
// file <builtin-architecture-strings> line 20

// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// br_aes_big_cbcenc_init
// file aes_big_wrapper.c line 47
void br_aes_big_cbcenc_init(br_aes_big_cbcenc_keys *ctx, const void *key, size_t len);
// br_aes_big_cbcenc_run
// file aes_big_wrapper.c line 58
void br_aes_big_cbcenc_run(const br_aes_big_cbcenc_keys *ctx, uint32_t *skey, void *iv, void *data, size_t len);
// br_aes_big_encrypt
// file aes_big_wrapper.c line 164
void br_aes_big_encrypt(unsigned int num_rounds, const uint32_t *skey, void *data);
// br_dec32be
// file aes_big_wrapper.c line 20
static inline uint32_t br_dec32be(const void *src);
// br_enc32be
// file aes_big_wrapper.c line 32
static inline void br_enc32be(void *dst, uint32_t x);
// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26
static inline void * memcpy(void * restrict __dest, const void * restrict __src, size_t __len);
// rotr
// file aes_big_wrapper.c line 151
static inline uint32_t rotr(uint32_t x, signed int n);

struct anonymous
{
  // vtable
  const br_block_cbcenc_class *vtable;
  // skey
  uint32_t skey[60];
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


// Ssm0
// file aes_big_wrapper.c line 104
static const uint32_t Ssm0[256]={ 0xC66363A5u, 0xF87C7C84u, 0xEE777799u, 0xF67B7B8Du, 0xFFF2F20Du, 0xD66B6BBDu, 0xDE6F6FB1u, 0x91C5C554u, 1613770832u, 33620227u, 0xCE6767A9u, 1445669757u, 0xE7FEFE19u, 0xB5D7D762u, 1303096294u, 0xEC76769Au, 0x8FCACA45u, 528646813u, 0x89C9C940u, 0xFA7D7D87u, 0xEFFAFA15u, 0xB25959EBu, 0x8E4747C9u, 0xFBF0F00Bu, 1101901292u, 0xB3D4D467u, 1604494077u, 1169141738u, 597466303u, 1403299063u, 0xE4727296u, 0x9BC0C05Bu, 1974974402u, 0xE1FDFD1Cu, 1033081774u, 1277568618u, 1815492186u, 2118074177u, 0xF5F7F702u, 0x83CCCC4Fu, 1748251740u, 1369810420u, 0xD1E5E534u, 0xF9F1F108u, 0xE2717193u, 0xABD8D873u, 1647391059u, 706024767u, 134480908u, 0x95C7C752u, 1176707941u, 0x9DC3C35Eu, 806885416u, 932615841u, 168101135u, 798661301u, 235341577u, 605164086u, 461406363u, 0xDFE2E23Du, 0xCDEBEB26u, 1311188841u, 2142417613u, 0xEA75759Fu, 302582043u, 495158174u, 1479289972u, 874125870u, 907746093u, 0xDC6E6EB2u, 0xB45A5AEEu, 1537253627u, 0xA45252F6u, 1983593293u, 0xB7D6D661u, 2108928974u, 1378429307u, 0xDDE3E33Eu, 1580150641u, 327451799u, 0xA65353F5u, 0xB9D1D168u, 0u, 0xC1EDED2Cu, 1075847264u, 0xE3FCFC1Fu, 2041688520u, 0xB65B5BEDu, 0xD46A6ABEu, 0x8DCBCB46u, 1740553945u, 1916352843u, 0x944A4ADEu, 0x984C4CD4u, 0xB05858E8u, 0x85CFCF4Au, 0xBBD0D06Bu, 0xC5EFEF2Au, 1336584933u, 0xEDFBFB16u, 0x864343C5u, 0x9A4D4DD7u, 1714631509u, 293963156u, 0x8A4545CFu, 0xE9F9F910u, 67240454u, 0xFE7F7F81u, 0xA05050F0u, 2017213508u, 631218106u, 1269344483u, 0xA25151F3u, 1571005438u, 0x804040C0u, 93294474u, 1066570413u, 563977660u, 1882732616u, 0xF1F5F504u, 1673313503u, 2008463041u, 0xAFDADA75u, 1109467491u, 537923632u, 0xE5FFFF1Au, 0xFDF3F30Eu, 0xBFD2D26Du, 0x81CDCD4Cu, 403442708u, 638784309u, 0xC3ECEC2Fu, 0xBE5F5FE1u, 899127202u, 0x884444CCu, 773265209u, 0x93C4C457u, 1437050866u, 0xFC7E7E82u, 2050833735u, 0xC86464ACu, 0xBA5D5DE7u, 840505643u, 0xE6737395u, 0xC06060A0u, 427917720u, 0x9E4F4FD1u, 0xA3DCDC7Fu, 1143087718u, 1412049534u, 999329963u, 193497219u, 0x8C4646CAu, 0xC7EEEE29u, 1807268051u, 672404540u, 0xA7DEDE79u, 0xBC5E5EE2u, 369822493u, 0xADDBDB76u, 0xDBE0E03Bu, 1681011286u, 1949973070u, 336202270u, 0x924949DBu, 201721354u, 1210328172u, 0xB85C5CE4u, 0x9FC2C25Du, 0xBDD3D36Eu, 1135389935u, 0xC46262A6u, 965841320u, 831886756u, 0xD3E4E437u, 0xF279798Bu, 0xD5E7E732u, 0x8BC8C843u, 1849112409u, 0xDA6D6DB7u, 26054028u, 0xB1D5D564u, 0x9C4E4ED2u, 1235855840u, 0xD86C6CB4u, 0xAC5656FAu, 0xF3F4F407u, 0xCFEAEA25u, 0xCA6565AFu, 0xF47A7A8Eu, 1202630377u, 268961816u, 1874508501u, 0xF0787888u, 1243948399u, 1546530418u, 941366308u, 1470539505u, 1941222599u, 0x97C6C651u, 0xCBE8E823u, 0xA1DDDD7Cu, 0xE874749Cu, 1042226977u, 0x964B4BDDu, 1639824860u, 227249030u, 260737669u, 0xE0707090u, 2084453954u, 1907733956u, 0xCC6666AAu, 0x904848D8u, 100860677u, 0xF7F6F601u, 470683154u, 0xC26161A3u, 1781871967u, 0xAE5757F9u, 1773779408u, 394692241u, 0x99C1C158u, 974986535u, 664706745u, 0xD9E1E138u, 0xEBF8F813u, 731420851u, 571543859u, 0xD26969BBu, 0xA9D9D970u, 126783113u, 865375399u, 765172662u, 1008606754u, 361203602u, 0xC9E9E920u, 0x87CECE49u, 0xAA5555FFu, 1344809080u, 0xA5DFDF7Au, 59542671u, 1503764984u, 160008576u, 437062935u, 1707065306u, 0xD7E6E631u, 0x844242C6u, 0xD06868B8u, 0x824141C3u, 697932208u, 1512910199u, 504303377u, 2075177163u, 0xA85454FCu, 1841019862u, 739644986u };
// __builtin___memcpy_chk__return_value
// 

// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// br_aes_S
// file aes_big_wrapper.c line 78
const unsigned char br_aes_S[256]={ 99, 124, 119, 123, 242, 107, 111, 197, 48, 1, 103, 43, 254, 215, 171, 118, 202, 130, 201, 125, 250, 89, 71, 240, 173, 212, 162, 175, 156, 164, 114, 192, 183, 253, 147, 38, 54, 63, 247, 204, 52, 165, 229, 241, 113, 216, 49, 21, 4, 199, 35, 195, 24, 150, 5, 154, 7, 18, 128, 226, 235, 39, 178, 117, 9, 131, 44, 26, 27, 110, 90, 160, 82, 59, 214, 179, 41, 227, 47, 132, 83, 209, 0, 237, 32, 252, 177, 91, 106, 203, 190, 57, 74, 76, 88, 207, 208, 239, 170, 251, 67, 77, 51, 133, 69, 249, 2, 127, 80, 60, 159, 168, 81, 163, 64, 143, 146, 157, 56, 245, 188, 182, 218, 33, 16, 255, 243, 210, 205, 12, 19, 236, 95, 151, 68, 23, 196, 167, 126, 61, 100, 93, 25, 115, 96, 129, 79, 220, 34, 42, 144, 136, 70, 238, 184, 20, 222, 94, 11, 219, 224, 50, 58, 10, 73, 6, 36, 92, 194, 211, 172, 98, 145, 149, 228, 121, 231, 200, 55, 109, 141, 213, 78, 169, 108, 86, 244, 234, 101, 122, 174, 8, 186, 120, 37, 46, 28, 166, 180, 198, 232, 221, 116, 31, 75, 189, 139, 138, 112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, 134, 193, 29, 158, 225, 248, 152, 17, 105, 217, 142, 148, 155, 30, 135, 233, 206, 85, 40, 223, 140, 161, 137, 13, 191, 230, 66, 104, 65, 153, 45, 15, 176, 84, 187, 22 };
// br_dec32be__return_value
// 
static uint32_t br_dec32be__return_value;
// data
// file aes_big_wrapper.c line 235
uint8_t data[32];
// iv
// file aes_big_wrapper.c line 234
uint8_t iv[16];
// main__return_value
// 
static signed int main__return_value;
// memcpy__return_value
// 
static void *memcpy__return_value;
// read__return_value
// 
static ssize_t read__return_value;
// rotr__return_value
// 
static uint32_t rotr__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file aes_big_wrapper.c line 237
signed int main(int argc, char** argv)
{
  unsigned char *br_enc32be_buf;
  uint32_t br_enc32be_x;
  void *br_enc32be_dst;
  uint32_t br_aes_big_encrypt_return_value_rotr$10;
  uint32_t br_aes_big_encrypt_return_value_rotr$9;
  uint32_t br_aes_big_encrypt_return_value_rotr$8;
  uint32_t br_aes_big_encrypt_return_value_rotr$7;
  uint32_t br_aes_big_encrypt_return_value_rotr$6;
  uint32_t br_aes_big_encrypt_return_value_rotr$5;
  uint32_t br_aes_big_encrypt_return_value_rotr$4;
  uint32_t br_aes_big_encrypt_return_value_rotr$3;
  uint32_t br_aes_big_encrypt_return_value_rotr$2;
  uint32_t br_aes_big_encrypt_return_value_rotr$1;
  uint32_t br_aes_big_encrypt_return_value_rotr$0;
  signed int rotr_n;
  uint32_t rotr_x;
  uint32_t br_aes_big_encrypt_return_value_rotr;
  uint32_t br_aes_big_encrypt_v3;
  uint32_t br_aes_big_encrypt_v2;
  uint32_t br_aes_big_encrypt_v1;
  uint32_t br_aes_big_encrypt_v0;
  const unsigned char *br_dec32be_buf;
  const void *br_dec32be_src;
  unsigned int br_aes_big_encrypt_u;
  uint32_t br_aes_big_encrypt_t3;
  uint32_t br_aes_big_encrypt_t2;
  uint32_t br_aes_big_encrypt_t1;
  uint32_t br_aes_big_encrypt_t0;
  uint32_t br_aes_big_encrypt_s3;
  uint32_t br_aes_big_encrypt_s2;
  uint32_t br_aes_big_encrypt_s1;
  uint32_t br_aes_big_encrypt_s0;
  unsigned char *br_aes_big_encrypt_buf;
  void *br_aes_big_encrypt_data;
  const uint32_t *br_aes_big_encrypt_skey;
  unsigned int br_aes_big_encrypt_num_rounds;
  signed int br_aes_big_cbcenc_run_i;
  unsigned char *br_aes_big_cbcenc_run_ivbuf;
  unsigned char *br_aes_big_cbcenc_run_buf;
  size_t br_aes_big_cbcenc_run_len;
  void *br_aes_big_cbcenc_run_data;
  void *br_aes_big_cbcenc_run_iv;
  uint32_t *br_aes_big_cbcenc_run_skey;
  const br_aes_big_cbcenc_keys *br_aes_big_cbcenc_run_ctx;
  uint32_t main_skey[60];
  br_aes_big_cbcenc_keys main_ctx;
  main_ctx.num_rounds = 2u;
  read(0, (void *)main_skey, 240ul);
  read(0, (void *)data, 32ul);
  /* begin function br_aes_big_cbcenc_run */
  ;
  br_aes_big_cbcenc_run_ctx = &main_ctx;
  br_aes_big_cbcenc_run_skey = (uint32_t *)&main_skey;
  br_aes_big_cbcenc_run_iv = (void *)iv;
  br_aes_big_cbcenc_run_data = (void *)data;
  br_aes_big_cbcenc_run_len = 32ul;
  br_aes_big_cbcenc_run_ivbuf = (unsigned char *)br_aes_big_cbcenc_run_iv;
  br_aes_big_cbcenc_run_buf = (unsigned char *)br_aes_big_cbcenc_run_data;
  br_aes_big_cbcenc_run_i = 0;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  /* begin function br_aes_big_encrypt */
  ;
  br_aes_big_encrypt_num_rounds = br_aes_big_cbcenc_run_ctx->num_rounds;
  br_aes_big_encrypt_skey = br_aes_big_cbcenc_run_skey;
  br_aes_big_encrypt_data = (void *)br_aes_big_cbcenc_run_buf;
  br_aes_big_encrypt_buf = (unsigned char *)br_aes_big_encrypt_data;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)br_aes_big_encrypt_buf;
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s0 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 4);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s1 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 8);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s2 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 12);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s3 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[0];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[1];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[2];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[3];
  br_aes_big_encrypt_u = 1u;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$0 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$1 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v0 = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 24)] ^ br_aes_big_encrypt_return_value_rotr ^ br_aes_big_encrypt_return_value_rotr$0 ^ br_aes_big_encrypt_return_value_rotr$1;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$2 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$3 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$4 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v1 = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$2 ^ br_aes_big_encrypt_return_value_rotr$3 ^ br_aes_big_encrypt_return_value_rotr$4;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$5 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$6 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$7 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v2 = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$5 ^ br_aes_big_encrypt_return_value_rotr$6 ^ br_aes_big_encrypt_return_value_rotr$7;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$8 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$9 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$10 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v3 = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$8 ^ br_aes_big_encrypt_return_value_rotr$9 ^ br_aes_big_encrypt_return_value_rotr$10;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_v0;
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_v1;
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_v2;
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_v3;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_u << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 3u)];
  br_aes_big_encrypt_u = br_aes_big_encrypt_u + 1u;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$0 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$1 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v0 = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 24)] ^ br_aes_big_encrypt_return_value_rotr ^ br_aes_big_encrypt_return_value_rotr$0 ^ br_aes_big_encrypt_return_value_rotr$1;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$2 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$3 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$4 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v1 = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$2 ^ br_aes_big_encrypt_return_value_rotr$3 ^ br_aes_big_encrypt_return_value_rotr$4;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$5 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$6 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$7 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v2 = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$5 ^ br_aes_big_encrypt_return_value_rotr$6 ^ br_aes_big_encrypt_return_value_rotr$7;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$8 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$9 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$10 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v3 = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$8 ^ br_aes_big_encrypt_return_value_rotr$9 ^ br_aes_big_encrypt_return_value_rotr$10;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_v0;
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_v1;
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_v2;
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_v3;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_u << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 3u)];
  br_aes_big_encrypt_u = br_aes_big_encrypt_u + 1u;
  br_aes_big_encrypt_t0 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  br_aes_big_encrypt_t1 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  br_aes_big_encrypt_t2 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  br_aes_big_encrypt_t3 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_t0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_num_rounds << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_t1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_t2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_t3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 3u)];
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)br_aes_big_encrypt_buf;
  br_enc32be_x = br_aes_big_encrypt_s0;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 4);
  br_enc32be_x = br_aes_big_encrypt_s1;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 8);
  br_enc32be_x = br_aes_big_encrypt_s2;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 12);
  br_enc32be_x = br_aes_big_encrypt_s3;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* end function br_aes_big_encrypt */
  ;
  memcpy((void *)br_aes_big_cbcenc_run_ivbuf, (const void *)br_aes_big_cbcenc_run_buf, 16ul);
  br_aes_big_cbcenc_run_buf = br_aes_big_cbcenc_run_buf + 16;
  br_aes_big_cbcenc_run_len = br_aes_big_cbcenc_run_len - 16ul;
  br_aes_big_cbcenc_run_i = 0;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] = (unsigned char)((signed int)br_aes_big_cbcenc_run_buf[br_aes_big_cbcenc_run_i] ^ (signed int)br_aes_big_cbcenc_run_ivbuf[br_aes_big_cbcenc_run_i]);
  br_aes_big_cbcenc_run_i = br_aes_big_cbcenc_run_i + 1;
  /* begin function br_aes_big_encrypt */
  ;
  br_aes_big_encrypt_num_rounds = br_aes_big_cbcenc_run_ctx->num_rounds;
  br_aes_big_encrypt_skey = br_aes_big_cbcenc_run_skey;
  br_aes_big_encrypt_data = (void *)br_aes_big_cbcenc_run_buf;
  br_aes_big_encrypt_buf = (unsigned char *)br_aes_big_encrypt_data;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)br_aes_big_encrypt_buf;
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s0 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 4);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s1 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 8);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s2 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  /* begin function br_dec32be */
  ;
  br_dec32be_src = (const void *)(br_aes_big_encrypt_buf + 12);
  br_dec32be_buf = (const unsigned char *)br_dec32be_src;
  br_aes_big_encrypt_s3 = (uint32_t)br_dec32be_buf[0] << 24 | (uint32_t)br_dec32be_buf[1] << 16 | (uint32_t)br_dec32be_buf[2] << 8 | (uint32_t)br_dec32be_buf[3];
  /* end function br_dec32be */
  ;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[0];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[1];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[2];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[3];
  br_aes_big_encrypt_u = 1u;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$0 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$1 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v0 = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 24)] ^ br_aes_big_encrypt_return_value_rotr ^ br_aes_big_encrypt_return_value_rotr$0 ^ br_aes_big_encrypt_return_value_rotr$1;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$2 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$3 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$4 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v1 = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$2 ^ br_aes_big_encrypt_return_value_rotr$3 ^ br_aes_big_encrypt_return_value_rotr$4;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$5 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$6 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$7 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v2 = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$5 ^ br_aes_big_encrypt_return_value_rotr$6 ^ br_aes_big_encrypt_return_value_rotr$7;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$8 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$9 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$10 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v3 = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$8 ^ br_aes_big_encrypt_return_value_rotr$9 ^ br_aes_big_encrypt_return_value_rotr$10;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_v0;
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_v1;
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_v2;
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_v3;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_u << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 3u)];
  br_aes_big_encrypt_u = br_aes_big_encrypt_u + 1u;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$0 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$1 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v0 = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 24)] ^ br_aes_big_encrypt_return_value_rotr ^ br_aes_big_encrypt_return_value_rotr$0 ^ br_aes_big_encrypt_return_value_rotr$1;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$2 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$3 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$4 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v1 = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$2 ^ br_aes_big_encrypt_return_value_rotr$3 ^ br_aes_big_encrypt_return_value_rotr$4;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$5 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$6 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$7 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v2 = Ssm0[(signed int)(br_aes_big_encrypt_s2 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$5 ^ br_aes_big_encrypt_return_value_rotr$6 ^ br_aes_big_encrypt_return_value_rotr$7;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)];
  rotr_n = 8;
  br_aes_big_encrypt_return_value_rotr$8 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)];
  rotr_n = 16;
  br_aes_big_encrypt_return_value_rotr$9 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  /* begin function rotr */
  ;
  rotr_x = Ssm0[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  rotr_n = 24;
  br_aes_big_encrypt_return_value_rotr$10 = rotr_x << 32 - rotr_n | rotr_x >> rotr_n;
  /* end function rotr */
  ;
  br_aes_big_encrypt_v3 = Ssm0[(signed int)(br_aes_big_encrypt_s3 >> 24)] ^ br_aes_big_encrypt_return_value_rotr$8 ^ br_aes_big_encrypt_return_value_rotr$9 ^ br_aes_big_encrypt_return_value_rotr$10;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_v0;
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_v1;
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_v2;
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_v3;
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_s0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_u << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_s1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_s2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_s3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_u << 2) + 3u)];
  br_aes_big_encrypt_u = br_aes_big_encrypt_u + 1u;
  br_aes_big_encrypt_t0 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 & 255u)];
  br_aes_big_encrypt_t1 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 & 255u)];
  br_aes_big_encrypt_t2 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 & 255u)];
  br_aes_big_encrypt_t3 = (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s3 >> 24)] << 24 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s0 >> 16 & 255u)] << 16 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s1 >> 8 & 255u)] << 8 | (uint32_t)br_aes_S[(signed int)(br_aes_big_encrypt_s2 & 255u)];
  br_aes_big_encrypt_s0 = br_aes_big_encrypt_t0 ^ br_aes_big_encrypt_skey[(signed int)(br_aes_big_encrypt_num_rounds << 2)];
  br_aes_big_encrypt_s1 = br_aes_big_encrypt_t1 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 1u)];
  br_aes_big_encrypt_s2 = br_aes_big_encrypt_t2 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 2u)];
  br_aes_big_encrypt_s3 = br_aes_big_encrypt_t3 ^ br_aes_big_encrypt_skey[(signed int)((br_aes_big_encrypt_num_rounds << 2) + 3u)];
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)br_aes_big_encrypt_buf;
  br_enc32be_x = br_aes_big_encrypt_s0;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 4);
  br_enc32be_x = br_aes_big_encrypt_s1;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 8);
  br_enc32be_x = br_aes_big_encrypt_s2;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* begin function br_enc32be */
  ;
  br_enc32be_dst = (void *)(br_aes_big_encrypt_buf + 12);
  br_enc32be_x = br_aes_big_encrypt_s3;
  br_enc32be_buf = (unsigned char *)br_enc32be_dst;
  br_enc32be_buf[0] = (unsigned char)(br_enc32be_x >> 24);
  br_enc32be_buf[1] = (unsigned char)(br_enc32be_x >> 16);
  br_enc32be_buf[2] = (unsigned char)(br_enc32be_x >> 8);
  br_enc32be_buf[3] = (unsigned char)br_enc32be_x;
  /* end function br_enc32be */
  ;
  /* end function br_aes_big_encrypt */
  ;
  memcpy((void *)br_aes_big_cbcenc_run_ivbuf, (const void *)br_aes_big_cbcenc_run_buf, 16ul);
  br_aes_big_cbcenc_run_buf = br_aes_big_cbcenc_run_buf + 16;
  br_aes_big_cbcenc_run_len = br_aes_big_cbcenc_run_len - 16ul;
  /* end function br_aes_big_cbcenc_run */
  ;
  write(1, (const void *)data, 32ul);
  main__return_value = 0;
}

// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26

