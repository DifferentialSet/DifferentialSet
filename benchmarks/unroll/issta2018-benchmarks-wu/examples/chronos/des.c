#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-des_ctx
// file des.c line 62
struct des_ctx;


typedef unsigned long int size_t;
typedef signed long int ssize_t;



// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// des_decrypt
// file des.c line 840
void des_decrypt(struct des_ctx *ctx, uint8_t *dst, const uint8_t *src);
// des_ekey
// file des.c line 666
unsigned long int des_ekey(const uint8_t *k, uint32_t *pe);
// des_encrypt
// file des.c line 816
void des_encrypt(struct des_ctx *ctx, uint8_t *dst, const uint8_t *src);
// dkey
// file des.c line 748
void dkey(const uint8_t *k, uint32_t *pe);

struct des_ctx
{
  // expkey
  uint32_t expkey[32];
};


// S1
// file des.c line 404
static const uint32_t S1[64]={ 16843776u, 0u, 65536u, 16843780u, 16842756u, 66564u, 4u, 65536u, 1024u, 16843776u, 16843780u, 1024u, 16778244u, 16842756u, 16777216u, 4u, 1028u, 16778240u, 16778240u, 66560u, 66560u, 16842752u, 16842752u, 16778244u, 65540u, 16777220u, 16777220u, 65540u, 0u, 1028u, 66564u, 16777216u, 65536u, 16843780u, 4u, 16842752u, 16843776u, 16777216u, 16777216u, 1024u, 16842756u, 65536u, 66560u, 16777220u, 1024u, 4u, 16778244u, 66564u, 16843780u, 65540u, 16842752u, 16778244u, 16777220u, 1028u, 66564u, 16843776u, 1028u, 16778240u, 16778240u, 0u, 65540u, 66560u, 0u, 16842756u };
// S2
// file des.c line 423
static const uint32_t S2[64]={ 0x80108020u, 0x80008000u, 32768u, 1081376u, 1048576u, 32u, 0x80100020u, 0x80008020u, 0x80000020u, 0x80108020u, 0x80108000u, 0x80000000u, 0x80008000u, 1048576u, 32u, 0x80100020u, 1081344u, 1048608u, 0x80008020u, 0u, 0x80000000u, 32768u, 1081376u, 0x80100000u, 1048608u, 0x80000020u, 0u, 1081344u, 32800u, 0x80108000u, 0x80100000u, 32800u, 0u, 1081376u, 0x80100020u, 1048576u, 0x80008020u, 0x80100000u, 0x80108000u, 32768u, 0x80100000u, 0x80008000u, 32u, 0x80108020u, 1081376u, 32u, 32768u, 0x80000000u, 32800u, 0x80108000u, 1048576u, 0x80000020u, 1048608u, 0x80008020u, 0x80000020u, 1048608u, 1081344u, 0u, 0x80008000u, 32800u, 0x80000000u, 0x80100020u, 0x80108020u, 1081344u };
// S3
// file des.c line 442
static const uint32_t S3[64]={ 520u, 134349312u, 0u, 134348808u, 134218240u, 0u, 131592u, 134218240u, 131080u, 134217736u, 134217736u, 131072u, 134349320u, 131080u, 134348800u, 520u, 134217728u, 8u, 134349312u, 512u, 131584u, 134348800u, 134348808u, 131592u, 134218248u, 131584u, 131072u, 134218248u, 8u, 134349320u, 512u, 134217728u, 134349312u, 134217728u, 131080u, 520u, 131072u, 134349312u, 134218240u, 0u, 512u, 131080u, 134349320u, 134218240u, 134217736u, 512u, 0u, 134348808u, 134218248u, 131072u, 134217728u, 134349320u, 8u, 131592u, 131584u, 134217736u, 134348800u, 134218248u, 520u, 134348800u, 131592u, 8u, 134348808u, 131584u };
// S4
// file des.c line 461
static const uint32_t S4[64]={ 8396801u, 8321u, 8321u, 128u, 8396928u, 8388737u, 8388609u, 8193u, 0u, 8396800u, 8396800u, 8396929u, 129u, 0u, 8388736u, 8388609u, 1u, 8192u, 8388608u, 8396801u, 128u, 8388608u, 8193u, 8320u, 8388737u, 1u, 8320u, 8388736u, 8192u, 8396928u, 8396929u, 129u, 8388736u, 8388609u, 8396800u, 8396929u, 129u, 0u, 0u, 8396800u, 8320u, 8388736u, 8388737u, 1u, 8396801u, 8321u, 8321u, 128u, 8396929u, 129u, 1u, 8192u, 8388609u, 8193u, 8396928u, 8388737u, 8193u, 8320u, 8388608u, 8396801u, 128u, 8388608u, 8192u, 8396928u };
// S5
// file des.c line 480
static const uint32_t S5[64]={ 256u, 34078976u, 34078720u, 1107296512u, 524288u, 256u, 1073741824u, 34078720u, 1074266368u, 524288u, 33554688u, 1074266368u, 1107296512u, 1107820544u, 524544u, 1073741824u, 33554432u, 1074266112u, 1074266112u, 0u, 1073742080u, 1107820800u, 1107820800u, 33554688u, 1107820544u, 1073742080u, 0u, 1107296256u, 34078976u, 33554432u, 1107296256u, 524544u, 524288u, 1107296512u, 256u, 33554432u, 1073741824u, 34078720u, 1107296512u, 1074266368u, 33554688u, 1073741824u, 1107820544u, 34078976u, 1074266368u, 256u, 33554432u, 1107820544u, 1107820800u, 524544u, 1107296256u, 1107820800u, 34078720u, 0u, 1074266112u, 1107296256u, 524544u, 33554688u, 1073742080u, 524288u, 0u, 1074266112u, 34078976u, 1073742080u };
// S6
// file des.c line 499
static const uint32_t S6[64]={ 536870928u, 541065216u, 16384u, 541081616u, 541065216u, 16u, 541081616u, 4194304u, 536887296u, 4210704u, 4194304u, 536870928u, 4194320u, 536887296u, 536870912u, 16400u, 0u, 4194320u, 536887312u, 16384u, 4210688u, 536887312u, 16u, 541065232u, 541065232u, 0u, 4210704u, 541081600u, 16400u, 4210688u, 541081600u, 536870912u, 536887296u, 16u, 541065232u, 4210688u, 541081616u, 4194304u, 16400u, 536870928u, 4194304u, 536887296u, 536870912u, 16400u, 536870928u, 541081616u, 4210688u, 541065216u, 4210704u, 541081600u, 0u, 541065232u, 16u, 16384u, 541065216u, 4210704u, 16384u, 4194320u, 536887312u, 0u, 541081600u, 536870912u, 4194320u, 536887312u };
// S7
// file des.c line 518
static const uint32_t S7[64]={ 2097152u, 69206018u, 67110914u, 0u, 2048u, 67110914u, 2099202u, 69208064u, 69208066u, 2097152u, 0u, 67108866u, 2u, 67108864u, 69206018u, 2050u, 67110912u, 2099202u, 2097154u, 67110912u, 67108866u, 69206016u, 69208064u, 2097154u, 69206016u, 2048u, 2050u, 69208066u, 2099200u, 2u, 67108864u, 2099200u, 67108864u, 2099200u, 2097152u, 67110914u, 67110914u, 69206018u, 69206018u, 2u, 2097154u, 67108864u, 67110912u, 2097152u, 69208064u, 2050u, 2099202u, 69208064u, 2050u, 67108866u, 69208066u, 69206016u, 2099200u, 0u, 2u, 69208066u, 0u, 2099202u, 69206016u, 2048u, 67108866u, 67110912u, 2048u, 2097154u };
// S8
// file des.c line 537
static const uint32_t S8[64]={ 268439616u, 4096u, 262144u, 268701760u, 268435456u, 268439616u, 64u, 268435456u, 262208u, 268697600u, 268701760u, 266240u, 268701696u, 266304u, 4096u, 64u, 268697600u, 268435520u, 268439552u, 4160u, 266240u, 262208u, 268697664u, 268701696u, 4160u, 0u, 0u, 268697664u, 268435520u, 268439552u, 266304u, 262144u, 266304u, 262144u, 268701696u, 4096u, 64u, 268697664u, 4096u, 266304u, 268439552u, 64u, 268435520u, 268697600u, 268697664u, 268435456u, 262144u, 268439616u, 0u, 268701760u, 262208u, 268435520u, 268697600u, 268439552u, 268439616u, 0u, 268701760u, 266240u, 266240u, 4160u, 4160u, 262208u, 268435456u, 268701696u };
// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// des_ekey__return_value
// 
static unsigned long int des_ekey__return_value;
// in_key
// file des.c line 865
static uint8_t in_key[32]={ 158, 129, 54, 187, 32, 114, 26, 16, 82, 145, 246, 49, 17, 87, 72, 11, 124, 64, 2, 177, 44, 54, 235, 162, 241, 9, 69, 100, 36, 208, 166, 211 };
// in_pub
// file des.c line 866
static uint8_t in_pub[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// main__return_value
// 
static signed int main__return_value;
// out
// file des.c line 867
static uint8_t out[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// pc1
// file des.c line 72
static const uint8_t pc1[256]={ 0, 0, 64, 4, 16, 16, 80, 20, 4, 64, 68, 68, 20, 80, 84, 84, 2, 2, 66, 6, 18, 18, 82, 22, 6, 66, 70, 70, 22, 82, 86, 86, 128, 8, 192, 12, 144, 24, 208, 28, 132, 72, 196, 76, 148, 88, 212, 92, 130, 10, 194, 14, 146, 26, 210, 30, 134, 74, 198, 78, 150, 90, 214, 94, 32, 32, 96, 36, 48, 48, 112, 52, 36, 96, 100, 100, 52, 112, 116, 116, 34, 34, 98, 38, 50, 50, 114, 54, 38, 98, 102, 102, 54, 114, 118, 118, 160, 40, 224, 44, 176, 56, 240, 60, 164, 104, 228, 108, 180, 120, 244, 124, 162, 42, 226, 46, 178, 58, 242, 62, 166, 106, 230, 110, 182, 122, 246, 126, 8, 128, 72, 132, 24, 144, 88, 148, 12, 192, 76, 196, 28, 208, 92, 212, 10, 130, 74, 134, 26, 146, 90, 150, 14, 194, 78, 198, 30, 210, 94, 214, 136, 136, 200, 140, 152, 152, 216, 156, 140, 200, 204, 204, 156, 216, 220, 220, 138, 138, 202, 142, 154, 154, 218, 158, 142, 202, 206, 206, 158, 218, 222, 222, 40, 160, 104, 164, 56, 176, 120, 180, 44, 224, 108, 228, 60, 240, 124, 244, 42, 162, 106, 166, 58, 178, 122, 182, 46, 226, 110, 230, 62, 242, 126, 246, 168, 168, 232, 172, 184, 184, 248, 188, 172, 232, 236, 236, 188, 248, 252, 252, 170, 170, 234, 174, 186, 186, 250, 190, 174, 234, 238, 238, 190, 250, 254, 254 };
// pc2
// file des.c line 142
static const uint32_t pc2[1024]={ 0u, 0u, 0u, 0u, 262144u, 0u, 67108864u, 1048576u, 4194304u, 8u, 2048u, 1073741824u, 4456448u, 8u, 67110912u, 1074790400u, 1024u, 32u, 134217728u, 256u, 263168u, 32u, 201326592u, 1048832u, 4195328u, 40u, 134219776u, 1073742080u, 4457472u, 40u, 201328640u, 1074790656u, 0x80000000u, 16u, 0u, 8388608u, 0x80040000u, 16u, 67108864u, 9437184u, 0x80400000u, 24u, 2048u, 1082130432u, 0x80440000u, 24u, 67110912u, 1083179008u, 0x80000400u, 48u, 134217728u, 8388864u, 0x80040400u, 48u, 201326592u, 9437440u, 0x80400400u, 56u, 134219776u, 1082130688u, 0x80440400u, 56u, 201328640u, 1083179264u, 268435456u, 0u, 2097152u, 4096u, 268697600u, 0u, 69206016u, 1052672u, 272629760u, 8u, 2099200u, 1073745920u, 272891904u, 8u, 69208064u, 1074794496u, 268436480u, 32u, 136314880u, 4352u, 268698624u, 32u, 203423744u, 1052928u, 272630784u, 40u, 136316928u, 1073746176u, 272892928u, 40u, 203425792u, 1074794752u, 0x90000000u, 16u, 2097152u, 8392704u, 0x90040000u, 16u, 69206016u, 9441280u, 0x90400000u, 24u, 2099200u, 1082134528u, 0x90440000u, 24u, 69208064u, 1083183104u, 0x90000400u, 48u, 136314880u, 8392960u, 0x90040400u, 48u, 203423744u, 9441536u, 0x90400400u, 56u, 136316928u, 1082134784u, 0x90440400u, 56u, 203425792u, 1083183360u, 512u, 524288u, 0u, 4u, 262656u, 524288u, 67108864u, 1048580u, 4194816u, 524296u, 2048u, 1073741828u, 4456960u, 524296u, 67110912u, 1074790404u, 1536u, 524320u, 134217728u, 260u, 263680u, 524320u, 201326592u, 1048836u, 4195840u, 524328u, 134219776u, 1073742084u, 4457984u, 524328u, 201328640u, 1074790660u, 0x80000200u, 524304u, 0u, 8388612u, 0x80040200u, 524304u, 67108864u, 9437188u, 0x80400200u, 524312u, 2048u, 1082130436u, 0x80440200u, 524312u, 67110912u, 1083179012u, 0x80000600u, 524336u, 134217728u, 8388868u, 0x80040600u, 524336u, 201326592u, 9437444u, 0x80400600u, 524344u, 134219776u, 1082130692u, 0x80440600u, 524344u, 201328640u, 1083179268u, 268435968u, 524288u, 2097152u, 4100u, 268698112u, 524288u, 69206016u, 1052676u, 272630272u, 524296u, 2099200u, 1073745924u, 272892416u, 524296u, 69208064u, 1074794500u, 268436992u, 524320u, 136314880u, 4356u, 268699136u, 524320u, 203423744u, 1052932u, 272631296u, 524328u, 136316928u, 1073746180u, 272893440u, 524328u, 203425792u, 1074794756u, 0x90000200u, 524304u, 2097152u, 8392708u, 0x90040200u, 524304u, 69206016u, 9441284u, 0x90400200u, 524312u, 2099200u, 1082134532u, 0x90440200u, 524312u, 69208064u, 1083183108u, 0x90000600u, 524336u, 136314880u, 8392964u, 0x90040600u, 524336u, 203423744u, 9441540u, 0x90400600u, 524344u, 136316928u, 1082134788u, 0x90440600u, 524344u, 203425792u, 1083183364u, 2u, 8192u, 536870912u, 1u, 262146u, 8192u, 603979776u, 1048577u, 4194306u, 8200u, 536872960u, 1073741825u, 4456450u, 8200u, 603981824u, 1074790401u, 1026u, 8224u, 671088640u, 257u, 263170u, 8224u, 738197504u, 1048833u, 4195330u, 8232u, 671090688u, 1073742081u, 4457474u, 8232u, 738199552u, 1074790657u, 0x80000002u, 8208u, 536870912u, 8388609u, 0x80040002u, 8208u, 603979776u, 9437185u, 0x80400002u, 8216u, 536872960u, 1082130433u, 0x80440002u, 8216u, 603981824u, 1083179009u, 0x80000402u, 8240u, 671088640u, 8388865u, 0x80040402u, 8240u, 738197504u, 9437441u, 0x80400402u, 8248u, 671090688u, 1082130689u, 0x80440402u, 8248u, 738199552u, 1083179265u, 268435458u, 8192u, 538968064u, 4097u, 268697602u, 8192u, 606076928u, 1052673u, 272629762u, 8200u, 538970112u, 1073745921u, 272891906u, 8200u, 606078976u, 1074794497u, 268436482u, 8224u, 673185792u, 4353u, 268698626u, 8224u, 740294656u, 1052929u, 272630786u, 8232u, 673187840u, 1073746177u, 272892930u, 8232u, 740296704u, 1074794753u, 0x90000002u, 8208u, 538968064u, 8392705u, 0x90040002u, 8208u, 606076928u, 9441281u, 0x90400002u, 8216u, 538970112u, 1082134529u, 0x90440002u, 8216u, 606078976u, 1083183105u, 0x90000402u, 8240u, 673185792u, 8392961u, 0x90040402u, 8240u, 740294656u, 9441537u, 0x90400402u, 8248u, 673187840u, 1082134785u, 0x90440402u, 8248u, 740296704u, 1083183361u, 514u, 532480u, 536870912u, 5u, 262658u, 532480u, 603979776u, 1048581u, 4194818u, 532488u, 536872960u, 1073741829u, 4456962u, 532488u, 603981824u, 1074790405u, 1538u, 532512u, 671088640u, 261u, 263682u, 532512u, 738197504u, 1048837u, 4195842u, 532520u, 671090688u, 1073742085u, 4457986u, 532520u, 738199552u, 1074790661u, 0x80000202u, 532496u, 536870912u, 8388613u, 0x80040202u, 532496u, 603979776u, 9437189u, 0x80400202u, 532504u, 536872960u, 1082130437u, 0x80440202u, 532504u, 603981824u, 1083179013u, 0x80000602u, 532528u, 671088640u, 8388869u, 0x80040602u, 532528u, 738197504u, 9437445u, 0x80400602u, 532536u, 671090688u, 1082130693u, 0x80440602u, 532536u, 738199552u, 1083179269u, 268435970u, 532480u, 538968064u, 4101u, 268698114u, 532480u, 606076928u, 1052677u, 272630274u, 532488u, 538970112u, 1073745925u, 272892418u, 532488u, 606078976u, 1074794501u, 268436994u, 532512u, 673185792u, 4357u, 268699138u, 532512u, 740294656u, 1052933u, 272631298u, 532520u, 673187840u, 1073746181u, 272893442u, 532520u, 740296704u, 1074794757u, 0x90000202u, 532496u, 538968064u, 8392709u, 0x90040202u, 532496u, 606076928u, 9441285u, 0x90400202u, 532504u, 538970112u, 1082134533u, 0x90440202u, 532504u, 606078976u, 1083183109u, 0x90000602u, 532528u, 673185792u, 8392965u, 0x90040602u, 532528u, 740294656u, 9441541u, 0x90400602u, 532536u, 673187840u, 1082134789u, 0x90440602u, 532536u, 740296704u, 1083183365u, 0u, 0u, 0u, 0u, 0u, 8u, 524288u, 268435456u, 33554432u, 0u, 128u, 4096u, 33554432u, 8u, 524416u, 268439552u, 16384u, 0u, 64u, 262144u, 16384u, 8u, 524352u, 268697600u, 33570816u, 0u, 192u, 266240u, 33570816u, 8u, 524480u, 268701696u, 131072u, 32768u, 134217728u, 2097152u, 131072u, 32776u, 134742016u, 270532608u, 33685504u, 32768u, 134217856u, 2101248u, 33685504u, 32776u, 134742144u, 270536704u, 147456u, 32768u, 134217792u, 2359296u, 147456u, 32776u, 134742080u, 270794752u, 33701888u, 32768u, 134217920u, 2363392u, 33701888u, 32776u, 134742208u, 270798848u, 0u, 16777216u, 8192u, 32u, 0u, 16777224u, 532480u, 268435488u, 33554432u, 16777216u, 8320u, 4128u, 33554432u, 16777224u, 532608u, 268439584u, 16384u, 16777216u, 8256u, 262176u, 16384u, 16777224u, 532544u, 268697632u, 33570816u, 16777216u, 8384u, 266272u, 33570816u, 16777224u, 532672u, 268701728u, 131072u, 16809984u, 134225920u, 2097184u, 131072u, 16809992u, 134750208u, 270532640u, 33685504u, 16809984u, 134226048u, 2101280u, 33685504u, 16809992u, 134750336u, 270536736u, 147456u, 16809984u, 134225984u, 2359328u, 147456u, 16809992u, 134750272u, 270794784u, 33701888u, 16809984u, 134226112u, 2363424u, 33701888u, 16809992u, 134750400u, 270798880u, 1024u, 67108864u, 1048576u, 4u, 1024u, 67108872u, 1572864u, 268435460u, 33555456u, 67108864u, 1048704u, 4100u, 33555456u, 67108872u, 1572992u, 268439556u, 17408u, 67108864u, 1048640u, 262148u, 17408u, 67108872u, 1572928u, 268697604u, 33571840u, 67108864u, 1048768u, 266244u, 33571840u, 67108872u, 1573056u, 268701700u, 132096u, 67141632u, 135266304u, 2097156u, 132096u, 67141640u, 135790592u, 270532612u, 33686528u, 67141632u, 135266432u, 2101252u, 33686528u, 67141640u, 135790720u, 270536708u, 148480u, 67141632u, 135266368u, 2359300u, 148480u, 67141640u, 135790656u, 270794756u, 33702912u, 67141632u, 135266496u, 2363396u, 33702912u, 67141640u, 135790784u, 270798852u, 1024u, 83886080u, 1056768u, 36u, 1024u, 83886088u, 1581056u, 268435492u, 33555456u, 83886080u, 1056896u, 4132u, 33555456u, 83886088u, 1581184u, 268439588u, 17408u, 83886080u, 1056832u, 262180u, 17408u, 83886088u, 1581120u, 268697636u, 33571840u, 83886080u, 1056960u, 266276u, 33571840u, 83886088u, 1581248u, 268701732u, 132096u, 83918848u, 135274496u, 2097188u, 132096u, 83918856u, 135798784u, 270532644u, 33686528u, 83918848u, 135274624u, 2101284u, 33686528u, 83918856u, 135798912u, 270536740u, 148480u, 83918848u, 135274560u, 2359332u, 148480u, 83918856u, 135798848u, 270794788u, 33702912u, 83918848u, 135274688u, 2363428u, 33702912u, 83918856u, 135798976u, 270798884u, 2048u, 65536u, 536870912u, 16u, 2048u, 65544u, 537395200u, 268435472u, 33556480u, 65536u, 536871040u, 4112u, 33556480u, 65544u, 537395328u, 268439568u, 18432u, 65536u, 536870976u, 262160u, 18432u, 65544u, 537395264u, 268697616u, 33572864u, 65536u, 536871104u, 266256u, 33572864u, 65544u, 537395392u, 268701712u, 133120u, 98304u, 671088640u, 2097168u, 133120u, 98312u, 671612928u, 270532624u, 33687552u, 98304u, 671088768u, 2101264u, 33687552u, 98312u, 671613056u, 270536720u, 149504u, 98304u, 671088704u, 2359312u, 149504u, 98312u, 671612992u, 270794768u, 33703936u, 98304u, 671088832u, 2363408u, 33703936u, 98312u, 671613120u, 270798864u, 2048u, 16842752u, 536879104u, 48u, 2048u, 16842760u, 537403392u, 268435504u, 33556480u, 16842752u, 536879232u, 4144u, 33556480u, 16842760u, 537403520u, 268439600u, 18432u, 16842752u, 536879168u, 262192u, 18432u, 16842760u, 537403456u, 268697648u, 33572864u, 16842752u, 536879296u, 266288u, 33572864u, 16842760u, 537403584u, 268701744u, 133120u, 16875520u, 671096832u, 2097200u, 133120u, 16875528u, 671621120u, 270532656u, 33687552u, 16875520u, 671096960u, 2101296u, 33687552u, 16875528u, 671621248u, 270536752u, 149504u, 16875520u, 671096896u, 2359344u, 149504u, 16875528u, 671621184u, 270794800u, 33703936u, 16875520u, 671097024u, 2363440u, 33703936u, 16875528u, 671621312u, 270798896u, 3072u, 67174400u, 537919488u, 20u, 3072u, 67174408u, 538443776u, 268435476u, 33557504u, 67174400u, 537919616u, 4116u, 33557504u, 67174408u, 538443904u, 268439572u, 19456u, 67174400u, 537919552u, 262164u, 19456u, 67174408u, 538443840u, 268697620u, 33573888u, 67174400u, 537919680u, 266260u, 33573888u, 67174408u, 538443968u, 268701716u, 134144u, 67207168u, 672137216u, 2097172u, 134144u, 67207176u, 672661504u, 270532628u, 33688576u, 67207168u, 672137344u, 2101268u, 33688576u, 67207176u, 672661632u, 270536724u, 150528u, 67207168u, 672137280u, 2359316u, 150528u, 67207176u, 672661568u, 270794772u, 33704960u, 67207168u, 672137408u, 2363412u, 33704960u, 67207176u, 672661696u, 270798868u, 3072u, 83951616u, 537927680u, 52u, 3072u, 83951624u, 538451968u, 268435508u, 33557504u, 83951616u, 537927808u, 4148u, 33557504u, 83951624u, 538452096u, 268439604u, 19456u, 83951616u, 537927744u, 262196u, 19456u, 83951624u, 538452032u, 268697652u, 33573888u, 83951616u, 537927872u, 266292u, 33573888u, 83951624u, 538452160u, 268701748u, 134144u, 83984384u, 672145408u, 2097204u, 134144u, 83984392u, 672669696u, 270532660u, 33688576u, 83984384u, 672145536u, 2101300u, 33688576u, 83984392u, 672669824u, 270536756u, 150528u, 83984384u, 672145472u, 2359348u, 150528u, 83984392u, 672669760u, 270794804u, 33704960u, 83984384u, 672145600u, 2363444u, 33704960u, 83984392u, 672669888u, 270798900u };
// read__return_value
// 
static ssize_t read__return_value;
// rs
// file des.c line 107
static const uint8_t rs[256]={ 0, 0, 128, 128, 2, 2, 130, 130, 4, 4, 132, 132, 6, 6, 134, 134, 8, 8, 136, 136, 10, 10, 138, 138, 12, 12, 140, 140, 14, 14, 142, 142, 16, 16, 144, 144, 18, 18, 146, 146, 20, 20, 148, 148, 22, 22, 150, 150, 24, 24, 152, 152, 26, 26, 154, 154, 28, 28, 156, 156, 30, 30, 158, 158, 32, 32, 160, 160, 34, 34, 162, 162, 36, 36, 164, 164, 38, 38, 166, 166, 40, 40, 168, 168, 42, 42, 170, 170, 44, 44, 172, 172, 46, 46, 174, 174, 48, 48, 176, 176, 50, 50, 178, 178, 52, 52, 180, 180, 54, 54, 182, 182, 56, 56, 184, 184, 58, 58, 186, 186, 60, 60, 188, 188, 62, 62, 190, 190, 64, 64, 192, 192, 66, 66, 194, 194, 68, 68, 196, 196, 70, 70, 198, 198, 72, 72, 200, 200, 74, 74, 202, 202, 76, 76, 204, 204, 78, 78, 206, 206, 80, 80, 208, 208, 82, 82, 210, 210, 84, 84, 212, 212, 86, 86, 214, 214, 88, 88, 216, 216, 90, 90, 218, 218, 92, 92, 220, 220, 94, 94, 222, 222, 96, 96, 224, 224, 98, 98, 226, 226, 100, 100, 228, 228, 102, 102, 230, 230, 104, 104, 232, 232, 106, 106, 234, 234, 108, 108, 236, 236, 110, 110, 238, 238, 112, 112, 240, 240, 114, 114, 242, 242, 116, 116, 244, 244, 118, 118, 246, 246, 120, 120, 248, 248, 122, 122, 250, 250, 124, 124, 252, 252, 126, 126, 254, 254 };
// write__return_value
// 
static ssize_t write__return_value;

// main
// file des.c line 868
signed int main()
{
  signed int des_encrypt_i;
  uint32_t des_encrypt_B;
  uint32_t des_encrypt_A;
  uint32_t des_encrypt_R;
  uint32_t des_encrypt_L;
  uint32_t *des_encrypt_d;
  const uint32_t *des_encrypt_s;
  const uint32_t *des_encrypt_K;
  const uint8_t *des_encrypt_src;
  uint8_t *des_encrypt_dst;
  struct des_ctx *des_encrypt_ctx;
  const uint32_t *des_ekey_pt;
  unsigned long int des_ekey_w;
  unsigned long int des_ekey_d;
  unsigned long int des_ekey_c;
  unsigned long int des_ekey_b;
  unsigned long int des_ekey_a;
  uint32_t *des_ekey_pe;
  const uint8_t *des_ekey_k;
  struct des_ctx main_ctx;
  main_ctx = (struct des_ctx){ .expkey={ 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u } };
  read(0, (void *)in_key, 32ul);
  read(0, (void *)in_pub, 64ul);
  /* begin function des_ekey */
  ;
  des_ekey_k = in_key;
  des_ekey_pe = main_ctx.expkey;
  des_ekey_pt = pc2;
  des_ekey_d = (unsigned long int)des_ekey_k[4];
  des_ekey_d = des_ekey_d & 14ul;
  des_ekey_d = des_ekey_d << 4;
  des_ekey_d = des_ekey_d | (unsigned long int)((signed int)des_ekey_k[0] & 0x1E);
  des_ekey_d = (unsigned long int)pc1[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)des_ekey_k[5];
  des_ekey_c = des_ekey_c & 14ul;
  des_ekey_c = des_ekey_c << 4;
  des_ekey_c = des_ekey_c | (unsigned long int)((signed int)des_ekey_k[1] & 0x1E);
  des_ekey_c = (unsigned long int)pc1[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)des_ekey_k[6];
  des_ekey_b = des_ekey_b & 14ul;
  des_ekey_b = des_ekey_b << 4;
  des_ekey_b = des_ekey_b | (unsigned long int)((signed int)des_ekey_k[2] & 0x1E);
  des_ekey_b = (unsigned long int)pc1[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)des_ekey_k[7];
  des_ekey_a = des_ekey_a & 14ul;
  des_ekey_a = des_ekey_a << 4;
  des_ekey_a = des_ekey_a | (unsigned long int)((signed int)des_ekey_k[3] & 0x1E);
  des_ekey_a = (unsigned long int)pc1[(signed int)des_ekey_a];
  des_ekey_pe[15 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[14 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[13 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[12 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[11 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[10 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[9 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[8 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[7 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[6 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[5 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[4 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[3 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[2 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[1 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[0 * 2 + 0] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_w = des_ekey_a ^ des_ekey_c | des_ekey_b ^ des_ekey_d | (unsigned long int)rs[(signed int)des_ekey_a] ^ des_ekey_c | des_ekey_b ^ (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pt = des_ekey_pt + 512;
  des_ekey_d = (unsigned long int)des_ekey_k[0];
  des_ekey_d = des_ekey_d & 224ul;
  des_ekey_d = des_ekey_d >> 4;
  des_ekey_d = des_ekey_d | (unsigned long int)((signed int)des_ekey_k[4] & 0xF0);
  des_ekey_d = (unsigned long int)pc1[(signed int)(des_ekey_d + 1ul)];
  des_ekey_c = (unsigned long int)des_ekey_k[1];
  des_ekey_c = des_ekey_c & 224ul;
  des_ekey_c = des_ekey_c >> 4;
  des_ekey_c = des_ekey_c | (unsigned long int)((signed int)des_ekey_k[5] & 0xF0);
  des_ekey_c = (unsigned long int)pc1[(signed int)(des_ekey_c + 1ul)];
  des_ekey_b = (unsigned long int)des_ekey_k[2];
  des_ekey_b = des_ekey_b & 224ul;
  des_ekey_b = des_ekey_b >> 4;
  des_ekey_b = des_ekey_b | (unsigned long int)((signed int)des_ekey_k[6] & 0xF0);
  des_ekey_b = (unsigned long int)pc1[(signed int)(des_ekey_b + 1ul)];
  des_ekey_a = (unsigned long int)des_ekey_k[3];
  des_ekey_a = des_ekey_a & 224ul;
  des_ekey_a = des_ekey_a >> 4;
  des_ekey_a = des_ekey_a | (unsigned long int)((signed int)des_ekey_k[7] & 0xF0);
  des_ekey_a = (unsigned long int)pc1[(signed int)(des_ekey_a + 1ul)];
  des_ekey_w = des_ekey_w | des_ekey_a ^ des_ekey_c | des_ekey_b ^ des_ekey_d | (unsigned long int)rs[(signed int)des_ekey_a] ^ des_ekey_c | des_ekey_b ^ (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[15 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[14 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[13 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[12 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[11 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[10 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[9 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_pe[8 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_c + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 0ul)];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[7 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[6 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[5 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[4 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[3 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_a = (unsigned long int)rs[(signed int)des_ekey_a];
  des_ekey_pe[2 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_d + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 0ul)];
  des_ekey_d = (unsigned long int)rs[(signed int)des_ekey_d];
  des_ekey_c = (unsigned long int)rs[(signed int)des_ekey_c];
  des_ekey_pe[1 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_b + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_a + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 0ul)];
  des_ekey_b = (unsigned long int)rs[(signed int)des_ekey_b];
  des_ekey_pe[0 * 2 + 1] = des_ekey_pt[(signed int)(2ul * des_ekey_a + 3ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_d + 2ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_c + 1ul)] | des_ekey_pt[(signed int)(2ul * des_ekey_b + 0ul)];
  des_ekey_d = 0ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_a = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d)];
  des_ekey_b = (unsigned long int)des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)];
  des_ekey_c = des_ekey_a ^ des_ekey_b;
  des_ekey_c = des_ekey_c & 4294901760ul;
  des_ekey_a = des_ekey_a ^ des_ekey_c;
  des_ekey_b = des_ekey_b ^ des_ekey_c;
  des_ekey_b = des_ekey_b << 18 | des_ekey_b >> 32 - 18;
  des_ekey_pe[(signed int)(2ul * des_ekey_d)] = (uint32_t)des_ekey_a;
  des_ekey_pe[(signed int)(2ul * des_ekey_d + 1ul)] = (uint32_t)des_ekey_b;
  des_ekey_d = des_ekey_d + 1ul;
  des_ekey_w;
  /* end function des_ekey */
  ;
  /* begin function des_encrypt */
  ;
  des_encrypt_ctx = &main_ctx;
  des_encrypt_dst = out;
  des_encrypt_src = in_pub;
  des_encrypt_K = des_encrypt_ctx->expkey;
  des_encrypt_s = (const uint32_t *)des_encrypt_src;
  des_encrypt_d = (uint32_t *)des_encrypt_dst;
  des_encrypt_L = des_encrypt_s[0];
  des_encrypt_R = des_encrypt_s[1];
  des_encrypt_R = des_encrypt_R << 4 | des_encrypt_R >> 32 - 4;
  des_encrypt_A = des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_L = des_encrypt_L & 0xF0F0F0F0u;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_A;
  des_encrypt_R = des_encrypt_R << 12 | des_encrypt_R >> 32 - 12;
  des_encrypt_A = des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_L = des_encrypt_L & 0xFFFF0000u;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_A;
  des_encrypt_R = des_encrypt_R >> 14 | des_encrypt_R << 32 - 14;
  des_encrypt_A = des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_L = des_encrypt_L & 0xCCCCCCCCu;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_A;
  des_encrypt_R = des_encrypt_R << 6 | des_encrypt_R >> 32 - 6;
  des_encrypt_A = des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_L = des_encrypt_L & 0xFF00FF00u;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_A;
  des_encrypt_R = des_encrypt_R >> 7 | des_encrypt_R << 32 - 7;
  des_encrypt_A = des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_L = des_encrypt_L & 0xAAAAAAAAu;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L << 1 | des_encrypt_L >> 32 - 1;
  des_encrypt_i = 0;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_R;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_R;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_L = des_encrypt_L ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_L = des_encrypt_L ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_L = des_encrypt_L ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_L = des_encrypt_L ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_L = des_encrypt_L ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_L = des_encrypt_L ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_L = des_encrypt_L ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_B = des_encrypt_K[0];
  des_encrypt_A = des_encrypt_K[1];
  des_encrypt_K = des_encrypt_K + 2;
  des_encrypt_B = des_encrypt_B ^ des_encrypt_L;
  des_encrypt_A = des_encrypt_A ^ des_encrypt_L;
  des_encrypt_B = des_encrypt_B & 1061109567u;
  des_encrypt_A = des_encrypt_A >> 4 | des_encrypt_A << 32 - 4;
  des_encrypt_R = des_encrypt_R ^ S8[(signed int)(255u & des_encrypt_B)];
  des_encrypt_A = des_encrypt_A & 1061109567u;
  des_encrypt_R = des_encrypt_R ^ S6[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_B = des_encrypt_B >> 16;
  des_encrypt_R = des_encrypt_R ^ S7[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S5[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_A = des_encrypt_A >> 16;
  des_encrypt_R = des_encrypt_R ^ S4[(signed int)(255u & des_encrypt_B)];
  des_encrypt_R = des_encrypt_R ^ S2[(signed int)(255u & des_encrypt_B >> 8)];
  des_encrypt_R = des_encrypt_R ^ S3[(signed int)(255u & des_encrypt_A)];
  des_encrypt_R = des_encrypt_R ^ S1[(signed int)(255u & des_encrypt_A >> 8)];
  des_encrypt_i = des_encrypt_i + 1;
  des_encrypt_R = des_encrypt_R >> 1 | des_encrypt_R << 32 - 1;
  des_encrypt_A = des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_R = des_encrypt_R & 0xAAAAAAAAu;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L << 7 | des_encrypt_L >> 32 - 7;
  des_encrypt_A = des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_R = des_encrypt_R & 0xFF00FF00u;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L >> 6 | des_encrypt_L << 32 - 6;
  des_encrypt_A = des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_R = des_encrypt_R & 0xCCCCCCCCu;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L << 14 | des_encrypt_L >> 32 - 14;
  des_encrypt_A = des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_R = des_encrypt_R & 0xFFFF0000u;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L >> 12 | des_encrypt_L << 32 - 12;
  des_encrypt_A = des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_L;
  des_encrypt_R = des_encrypt_R & 0xF0F0F0F0u;
  des_encrypt_L = des_encrypt_L ^ des_encrypt_R;
  des_encrypt_R = des_encrypt_R ^ des_encrypt_A;
  des_encrypt_L = des_encrypt_L >> 4 | des_encrypt_L << 32 - 4;
  des_encrypt_d[0] = des_encrypt_R;
  des_encrypt_d[1] = des_encrypt_L;
  /* end function des_encrypt */
  ;
  write(1, (const void *)out, 64ul);
  main__return_value = 0;
}

