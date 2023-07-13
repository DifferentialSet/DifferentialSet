#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-anubis_ctx
// file anubis.c line 53
struct anubis_ctx;


typedef unsigned long int size_t;
typedef signed long int ssize_t;



// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// anubis_crypt
// file anubis.c line 625
void anubis_crypt(uint32_t (*roundKey)[4], uint8_t *ciphertext, const uint8_t *plaintext);
// anubis_setkey
// file anubis.c line 470
signed int anubis_setkey(const uint8_t *in_key, struct anubis_ctx *ctx, unsigned int key_len);

struct anubis_ctx
{
  // key_len
  signed int key_len;
  // R
  signed int R;
  // E
  uint32_t E[19][4];
  // D
  uint32_t D[19][4];
};


// T0
// file anubis.c line 60
static const uint32_t T0[256]={ 0xBA69D2BBu, 0x54A84DE5u, 0x2F5EBCE2u, 0x74E8CD25u, 0x53A651F7u, 0xD3BB6BD0u, 0xD2B96FD6u, 0x4D9A29B3u, 0x50A05DFDu, 0xAC458ACFu, 0x8D070E09u, 0xBF63C6A5u, 0x70E0DD3Du, 0x52A455F1u, 0x9A29527Bu, 0x4C982DB5u, 0xEAC98F46u, 0xD5B773C4u, 0x97336655u, 0xD1BF63DCu, 0x3366CCAAu, 0x51A259FBu, 0x5BB671C7u, 0xA651A2F3u, 0xDEA15FFEu, 0x48903DADu, 0xA84D9AD7u, 0x992F5E71u, 0xDBAB4BE0u, 0x3264C8ACu, 0xB773E695u, 0xFCE5D732u, 0xE3DBAB70u, 0x9E214263u, 0x913F7E41u, 0x9B2B567Du, 0xE2D9AF76u, 0xBB6BD6BDu, 0x4182199Bu, 0x6EDCA579u, 0xA557AEF9u, 0xCB8B0B80u, 0x6BD6B167u, 0x95376E59u, 0xA15FBEE1u, 0xF3FBEB10u, 0xB17FFE81u, 0x204080Cu, 0xCC851792u, 0xC49537A2u, 0x1D3A744Eu, 0x14285078u, 0xC39B2BB0u, 0x63C69157u, 0xDAA94FE6u, 0x5DBA69D3u, 0x5FBE61DFu, 0xDCA557F2u, 0x7DFAE913u, 0xCD871394u, 0x7FFEE11Fu, 0x5AB475C1u, 0x6CD8AD75u, 0x5CB86DD5u, 0xF7F3FB08u, 0x264C98D4u, 0xFFE3DB38u, 0xEDC79354u, 0xE8CD874Au, 0x9D274E69u, 0x6FDEA17Fu, 0x8E010203u, 0x19326456u, 0xA05DBAE7u, 0xF0FDE71Au, 0x890F1E11u, 0xF1E3C22u, 0x70E1C12u, 0xAF4386C5u, 0xFBEBCB20u, 0x8102030u, 0x152A547Eu, 0xD1A342Eu, 0x4081018u, 0x1020406u, 0x64C88D45u, 0xDFA35BF8u, 0x76ECC529u, 0x79F2F90Bu, 0xDDA753F4u, 0x3D7AF48Eu, 0x162C5874u, 0x3F7EFC82u, 0x376EDCB2u, 0x6DDAA973u, 0x3870E090u, 0xB96FDEB1u, 0x73E6D137u, 0xE9CF834Cu, 0x356AD4BEu, 0x55AA49E3u, 0x71E2D93Bu, 0x7BF6F107u, 0x8C050A0Fu, 0x72E4D531u, 0x880D1A17u, 0xF6F1FF0Eu, 0x2A54A8FCu, 0x3E7CF884u, 0x5EBC65D9u, 0x274E9CD2u, 0x468C0589u, 0xC183028u, 0x65CA8943u, 0x68D0BD6Du, 0x61C2995Bu, 0x3060C0Au, 0xC19F23BCu, 0x57AE41EFu, 0xD6B17FCEu, 0xD9AF43ECu, 0x58B07DCDu, 0xD8AD47EAu, 0x66CC8549u, 0xD7B37BC8u, 0x3A74E89Cu, 0xC88D078Au, 0x3C78F088u, 0xFAE9CF26u, 0x96316253u, 0xA753A6F5u, 0x982D5A77u, 0xECC59752u, 0xB86DDAB7u, 0xC7933BA8u, 0xAE4182C3u, 0x69D2B96Bu, 0x4B9631A7u, 0xAB4B96DDu, 0xA94F9ED1u, 0x67CE814Fu, 0xA14283Cu, 0x478E018Fu, 0xF2F9EF16u, 0xB577EE99u, 0x224488CCu, 0xE5D7B364u, 0xEEC19F5Eu, 0xBE61C2A3u, 0x2B56ACFAu, 0x811F3E21u, 0x1224486Cu, 0x831B362Du, 0x1B366C5Au, 0xE1C3824u, 0x23468CCAu, 0xF5F7F304u, 0x458A0983u, 0x214284C6u, 0xCE811F9Eu, 0x499239ABu, 0x2C58B0E8u, 0xF9EFC32Cu, 0xE6D1BF6Eu, 0xB671E293u, 0x2850A0F0u, 0x172E5C72u, 0x8219322Bu, 0x1A34685Cu, 0x8B0B161Du, 0xFEE1DF3Eu, 0x8A09121Bu, 0x9122436u, 0xC98F038Cu, 0x87132635u, 0x4E9C25B9u, 0xE1DFA37Cu, 0x2E5CB8E4u, 0xE4D5B762u, 0xE0DDA77Au, 0xEBCB8B40u, 0x903D7A47u, 0xA455AAFFu, 0x1E3C7844u, 0x85172E39u, 0x60C09D5Du, 0x0u, 0x254A94DEu, 0xF4F5F702u, 0xF1FFE31Cu, 0x94356A5Fu, 0xB162C3Au, 0xE7D3BB68u, 0x75EAC923u, 0xEFC39B58u, 0x3468D0B8u, 0x3162C4A6u, 0xD4B577C2u, 0xD0BD67DAu, 0x86112233u, 0x7EFCE519u, 0xAD478EC9u, 0xFDE7D334u, 0x2952A4F6u, 0x3060C0A0u, 0x3B76EC9Au, 0x9F234665u, 0xF8EDC72Au, 0xC6913FAEu, 0x13264C6Au, 0x60C1814u, 0x50A141Eu, 0xC59733A4u, 0x11224466u, 0x77EEC12Fu, 0x7CF8ED15u, 0x7AF4F501u, 0x78F0FD0Du, 0x366CD8B4u, 0x1C387048u, 0x3972E496u, 0x59B279CBu, 0x18306050u, 0x56AC45E9u, 0xB37BF68Du, 0xB07DFA87u, 0x244890D8u, 0x204080C0u, 0xB279F28Bu, 0x9239724Bu, 0xA35BB6EDu, 0xC09D27BAu, 0x44880D85u, 0x62C49551u, 0x10204060u, 0xB475EA9Fu, 0x84152A3Fu, 0x43861197u, 0x933B764Du, 0xC2992FB6u, 0x4A9435A1u, 0xBD67CEA9u, 0x8F030605u, 0x2D5AB4EEu, 0xBC65CAAFu, 0x9C254A6Fu, 0x6AD4B561u, 0x40801D9Du, 0xCF831B98u, 0xA259B2EBu, 0x801D3A27u, 0x4F9E21BFu, 0x1F3E7C42u, 0xCA890F86u, 0xAA4992DBu, 0x42841591u };
// T1
// file anubis.c line 127
static const uint32_t T1[256]={ 0x69BABBD2u, 0xA854E54Du, 0x5E2FE2BCu, 0xE87425CDu, 0xA653F751u, 0xBBD3D06Bu, 0xB9D2D66Fu, 0x9A4DB329u, 0xA050FD5Du, 0x45ACCF8Au, 0x78D090Eu, 0x63BFA5C6u, 0xE0703DDDu, 0xA452F155u, 0x299A7B52u, 0x984CB52Du, 0xC9EA468Fu, 0xB7D5C473u, 0x33975566u, 0xBFD1DC63u, 0x6633AACCu, 0xA251FB59u, 0xB65BC771u, 0x51A6F3A2u, 0xA1DEFE5Fu, 0x9048AD3Du, 0x4DA8D79Au, 0x2F99715Eu, 0xABDBE04Bu, 0x6432ACC8u, 0x73B795E6u, 0xE5FC32D7u, 0xDBE370ABu, 0x219E6342u, 0x3F91417Eu, 0x2B9B7D56u, 0xD9E276AFu, 0x6BBBBDD6u, 0x82419B19u, 0xDC6E79A5u, 0x57A5F9AEu, 0x8BCB800Bu, 0xD66B67B1u, 0x3795596Eu, 0x5FA1E1BEu, 0xFBF310EBu, 0x7FB181FEu, 0x4020C08u, 0x85CC9217u, 0x95C4A237u, 0x3A1D4E74u, 0x28147850u, 0x9BC3B02Bu, 0xC6635791u, 0xA9DAE64Fu, 0xBA5DD369u, 0xBE5FDF61u, 0xA5DCF257u, 0xFA7D13E9u, 0x87CD9413u, 0xFE7F1FE1u, 0xB45AC175u, 0xD86C75ADu, 0xB85CD56Du, 0xF3F708FBu, 0x4C26D498u, 0xE3FF38DBu, 0xC7ED5493u, 0xCDE84A87u, 0x279D694Eu, 0xDE6F7FA1u, 0x18E0302u, 0x32195664u, 0x5DA0E7BAu, 0xFDF01AE7u, 0xF89111Eu, 0x1E0F223Cu, 0xE07121Cu, 0x43AFC586u, 0xEBFB20CBu, 0x10083020u, 0x2A157E54u, 0x1A0D2E34u, 0x8041810u, 0x2010604u, 0xC864458Du, 0xA3DFF85Bu, 0xEC7629C5u, 0xF2790BF9u, 0xA7DDF453u, 0x7A3D8EF4u, 0x2C167458u, 0x7E3F82FCu, 0x6E37B2DCu, 0xDA6D73A9u, 0x703890E0u, 0x6FB9B1DEu, 0xE67337D1u, 0xCFE94C83u, 0x6A35BED4u, 0xAA55E349u, 0xE2713BD9u, 0xF67B07F1u, 0x58C0F0Au, 0xE47231D5u, 0xD88171Au, 0xF1F60EFFu, 0x542AFCA8u, 0x7C3E84F8u, 0xBC5ED965u, 0x4E27D29Cu, 0x8C468905u, 0x180C2830u, 0xCA654389u, 0xD0686DBDu, 0xC2615B99u, 0x6030A0Cu, 0x9FC1BC23u, 0xAE57EF41u, 0xB1D6CE7Fu, 0xAFD9EC43u, 0xB058CD7Du, 0xADD8EA47u, 0xCC664985u, 0xB3D7C87Bu, 0x743A9CE8u, 0x8DC88A07u, 0x783C88F0u, 0xE9FA26CFu, 0x31965362u, 0x53A7F5A6u, 0x2D98775Au, 0xC5EC5297u, 0x6DB8B7DAu, 0x93C7A83Bu, 0x41AEC382u, 0xD2696BB9u, 0x964BA731u, 0x4BABDD96u, 0x4FA9D19Eu, 0xCE674F81u, 0x140A3C28u, 0x8E478F01u, 0xF9F216EFu, 0x77B599EEu, 0x4422CC88u, 0xD7E564B3u, 0xC1EE5E9Fu, 0x61BEA3C2u, 0x562BFAACu, 0x1F81213Eu, 0x24126C48u, 0x1B832D36u, 0x361B5A6Cu, 0x1C0E2438u, 0x4623CA8Cu, 0xF7F504F3u, 0x8A458309u, 0x4221C684u, 0x81CE9E1Fu, 0x9249AB39u, 0x582CE8B0u, 0xEFF92CC3u, 0xD1E66EBFu, 0x71B693E2u, 0x5028F0A0u, 0x2E17725Cu, 0x19822B32u, 0x341A5C68u, 0xB8B1D16u, 0xE1FE3EDFu, 0x98A1B12u, 0x12093624u, 0x8FC98C03u, 0x13873526u, 0x9C4EB925u, 0xDFE17CA3u, 0x5C2EE4B8u, 0xD5E462B7u, 0xDDE07AA7u, 0xCBEB408Bu, 0x3D90477Au, 0x55A4FFAAu, 0x3C1E4478u, 0x1785392Eu, 0xC0605D9Du, 0x0u, 0x4A25DE94u, 0xF5F402F7u, 0xFFF11CE3u, 0x35945F6Au, 0x160B3A2Cu, 0xD3E768BBu, 0xEA7523C9u, 0xC3EF589Bu, 0x6834B8D0u, 0x6231A6C4u, 0xB5D4C277u, 0xBDD0DA67u, 0x11863322u, 0xFC7E19E5u, 0x47ADC98Eu, 0xE7FD34D3u, 0x5229F6A4u, 0x6030A0C0u, 0x763B9AECu, 0x239F6546u, 0xEDF82AC7u, 0x91C6AE3Fu, 0x26136A4Cu, 0xC061418u, 0xA051E14u, 0x97C5A433u, 0x22116644u, 0xEE772FC1u, 0xF87C15EDu, 0xF47A01F5u, 0xF0780DFDu, 0x6C36B4D8u, 0x381C4870u, 0x723996E4u, 0xB259CB79u, 0x30185060u, 0xAC56E945u, 0x7BB38DF6u, 0x7DB087FAu, 0x4824D890u, 0x4020C080u, 0x79B28BF2u, 0x39924B72u, 0x5BA3EDB6u, 0x9DC0BA27u, 0x8844850Du, 0xC4625195u, 0x20106040u, 0x75B49FEAu, 0x15843F2Au, 0x86439711u, 0x3B934D76u, 0x99C2B62Fu, 0x944AA135u, 0x67BDA9CEu, 0x38F0506u, 0x5A2DEEB4u, 0x65BCAFCAu, 0x259C6F4Au, 0xD46A61B5u, 0x80409D1Du, 0x83CF981Bu, 0x59A2EBB2u, 0x1D80273Au, 0x9E4FBF21u, 0x3E1F427Cu, 0x89CA860Fu, 0x49AADB92u, 0x84429115u };
// T2
// file anubis.c line 194
static const uint32_t T2[256]={ 0xD2BBBA69u, 0x4DE554A8u, 0xBCE22F5Eu, 0xCD2574E8u, 0x51F753A6u, 0x6BD0D3BBu, 0x6FD6D2B9u, 0x29B34D9Au, 0x5DFD50A0u, 0x8ACFAC45u, 0xE098D07u, 0xC6A5BF63u, 0xDD3D70E0u, 0x55F152A4u, 0x527B9A29u, 0x2DB54C98u, 0x8F46EAC9u, 0x73C4D5B7u, 0x66559733u, 0x63DCD1BFu, 0xCCAA3366u, 0x59FB51A2u, 0x71C75BB6u, 0xA2F3A651u, 0x5FFEDEA1u, 0x3DAD4890u, 0x9AD7A84Du, 0x5E71992Fu, 0x4BE0DBABu, 0xC8AC3264u, 0xE695B773u, 0xD732FCE5u, 0xAB70E3DBu, 0x42639E21u, 0x7E41913Fu, 0x567D9B2Bu, 0xAF76E2D9u, 0xD6BDBB6Bu, 0x199B4182u, 0xA5796EDCu, 0xAEF9A557u, 0xB80CB8Bu, 0xB1676BD6u, 0x6E599537u, 0xBEE1A15Fu, 0xEB10F3FBu, 0xFE81B17Fu, 0x80C0204u, 0x1792CC85u, 0x37A2C495u, 0x744E1D3Au, 0x50781428u, 0x2BB0C39Bu, 0x915763C6u, 0x4FE6DAA9u, 0x69D35DBAu, 0x61DF5FBEu, 0x57F2DCA5u, 0xE9137DFAu, 0x1394CD87u, 0xE11F7FFEu, 0x75C15AB4u, 0xAD756CD8u, 0x6DD55CB8u, 0xFB08F7F3u, 0x98D4264Cu, 0xDB38FFE3u, 0x9354EDC7u, 0x874AE8CDu, 0x4E699D27u, 0xA17F6FDEu, 0x2038E01u, 0x64561932u, 0xBAE7A05Du, 0xE71AF0FDu, 0x1E11890Fu, 0x3C220F1Eu, 0x1C12070Eu, 0x86C5AF43u, 0xCB20FBEBu, 0x20300810u, 0x547E152Au, 0x342E0D1Au, 0x10180408u, 0x4060102u, 0x8D4564C8u, 0x5BF8DFA3u, 0xC52976ECu, 0xF90B79F2u, 0x53F4DDA7u, 0xF48E3D7Au, 0x5874162Cu, 0xFC823F7Eu, 0xDCB2376Eu, 0xA9736DDAu, 0xE0903870u, 0xDEB1B96Fu, 0xD13773E6u, 0x834CE9CFu, 0xD4BE356Au, 0x49E355AAu, 0xD93B71E2u, 0xF1077BF6u, 0xA0F8C05u, 0xD53172E4u, 0x1A17880Du, 0xFF0EF6F1u, 0xA8FC2A54u, 0xF8843E7Cu, 0x65D95EBCu, 0x9CD2274Eu, 0x589468Cu, 0x30280C18u, 0x894365CAu, 0xBD6D68D0u, 0x995B61C2u, 0xC0A0306u, 0x23BCC19Fu, 0x41EF57AEu, 0x7FCED6B1u, 0x43ECD9AFu, 0x7DCD58B0u, 0x47EAD8ADu, 0x854966CCu, 0x7BC8D7B3u, 0xE89C3A74u, 0x78AC88Du, 0xF0883C78u, 0xCF26FAE9u, 0x62539631u, 0xA6F5A753u, 0x5A77982Du, 0x9752ECC5u, 0xDAB7B86Du, 0x3BA8C793u, 0x82C3AE41u, 0xB96B69D2u, 0x31A74B96u, 0x96DDAB4Bu, 0x9ED1A94Fu, 0x814F67CEu, 0x283C0A14u, 0x18F478Eu, 0xEF16F2F9u, 0xEE99B577u, 0x88CC2244u, 0xB364E5D7u, 0x9F5EEEC1u, 0xC2A3BE61u, 0xACFA2B56u, 0x3E21811Fu, 0x486C1224u, 0x362D831Bu, 0x6C5A1B36u, 0x38240E1Cu, 0x8CCA2346u, 0xF304F5F7u, 0x983458Au, 0x84C62142u, 0x1F9ECE81u, 0x39AB4992u, 0xB0E82C58u, 0xC32CF9EFu, 0xBF6EE6D1u, 0xE293B671u, 0xA0F02850u, 0x5C72172Eu, 0x322B8219u, 0x685C1A34u, 0x161D8B0Bu, 0xDF3EFEE1u, 0x121B8A09u, 0x24360912u, 0x38CC98Fu, 0x26358713u, 0x25B94E9Cu, 0xA37CE1DFu, 0xB8E42E5Cu, 0xB762E4D5u, 0xA77AE0DDu, 0x8B40EBCBu, 0x7A47903Du, 0xAAFFA455u, 0x78441E3Cu, 0x2E398517u, 0x9D5D60C0u, 0x0u, 0x94DE254Au, 0xF702F4F5u, 0xE31CF1FFu, 0x6A5F9435u, 0x2C3A0B16u, 0xBB68E7D3u, 0xC92375EAu, 0x9B58EFC3u, 0xD0B83468u, 0xC4A63162u, 0x77C2D4B5u, 0x67DAD0BDu, 0x22338611u, 0xE5197EFCu, 0x8EC9AD47u, 0xD334FDE7u, 0xA4F62952u, 0xC0A03060u, 0xEC9A3B76u, 0x46659F23u, 0xC72AF8EDu, 0x3FAEC691u, 0x4C6A1326u, 0x1814060Cu, 0x141E050Au, 0x33A4C597u, 0x44661122u, 0xC12F77EEu, 0xED157CF8u, 0xF5017AF4u, 0xFD0D78F0u, 0xD8B4366Cu, 0x70481C38u, 0xE4963972u, 0x79CB59B2u, 0x60501830u, 0x45E956ACu, 0xF68DB37Bu, 0xFA87B07Du, 0x90D82448u, 0x80C02040u, 0xF28BB279u, 0x724B9239u, 0xB6EDA35Bu, 0x27BAC09Du, 0xD854488u, 0x955162C4u, 0x40601020u, 0xEA9FB475u, 0x2A3F8415u, 0x11974386u, 0x764D933Bu, 0x2FB6C299u, 0x35A14A94u, 0xCEA9BD67u, 0x6058F03u, 0xB4EE2D5Au, 0xCAAFBC65u, 0x4A6F9C25u, 0xB5616AD4u, 0x1D9D4080u, 0x1B98CF83u, 0xB2EBA259u, 0x3A27801Du, 0x21BF4F9Eu, 0x7C421F3Eu, 0xF86CA89u, 0x92DBAA49u, 0x15914284u };
// T3
// file anubis.c line 261
static const uint32_t T3[256]={ 0xBBD269BAu, 0xE54DA854u, 0xE2BC5E2Fu, 0x25CDE874u, 0xF751A653u, 0xD06BBBD3u, 0xD66FB9D2u, 0xB3299A4Du, 0xFD5DA050u, 0xCF8A45ACu, 0x90E078Du, 0xA5C663BFu, 0x3DDDE070u, 0xF155A452u, 0x7B52299Au, 0xB52D984Cu, 0x468FC9EAu, 0xC473B7D5u, 0x55663397u, 0xDC63BFD1u, 0xAACC6633u, 0xFB59A251u, 0xC771B65Bu, 0xF3A251A6u, 0xFE5FA1DEu, 0xAD3D9048u, 0xD79A4DA8u, 0x715E2F99u, 0xE04BABDBu, 0xACC86432u, 0x95E673B7u, 0x32D7E5FCu, 0x70ABDBE3u, 0x6342219Eu, 0x417E3F91u, 0x7D562B9Bu, 0x76AFD9E2u, 0xBDD66BBBu, 0x9B198241u, 0x79A5DC6Eu, 0xF9AE57A5u, 0x800B8BCBu, 0x67B1D66Bu, 0x596E3795u, 0xE1BE5FA1u, 0x10EBFBF3u, 0x81FE7FB1u, 0xC080402u, 0x921785CCu, 0xA23795C4u, 0x4E743A1Du, 0x78502814u, 0xB02B9BC3u, 0x5791C663u, 0xE64FA9DAu, 0xD369BA5Du, 0xDF61BE5Fu, 0xF257A5DCu, 0x13E9FA7Du, 0x941387CDu, 0x1FE1FE7Fu, 0xC175B45Au, 0x75ADD86Cu, 0xD56DB85Cu, 0x8FBF3F7u, 0xD4984C26u, 0x38DBE3FFu, 0x5493C7EDu, 0x4A87CDE8u, 0x694E279Du, 0x7FA1DE6Fu, 0x302018Eu, 0x56643219u, 0xE7BA5DA0u, 0x1AE7FDF0u, 0x111E0F89u, 0x223C1E0Fu, 0x121C0E07u, 0xC58643AFu, 0x20CBEBFBu, 0x30201008u, 0x7E542A15u, 0x2E341A0Du, 0x18100804u, 0x6040201u, 0x458DC864u, 0xF85BA3DFu, 0x29C5EC76u, 0xBF9F279u, 0xF453A7DDu, 0x8EF47A3Du, 0x74582C16u, 0x82FC7E3Fu, 0xB2DC6E37u, 0x73A9DA6Du, 0x90E07038u, 0xB1DE6FB9u, 0x37D1E673u, 0x4C83CFE9u, 0xBED46A35u, 0xE349AA55u, 0x3BD9E271u, 0x7F1F67Bu, 0xF0A058Cu, 0x31D5E472u, 0x171A0D88u, 0xEFFF1F6u, 0xFCA8542Au, 0x84F87C3Eu, 0xD965BC5Eu, 0xD29C4E27u, 0x89058C46u, 0x2830180Cu, 0x4389CA65u, 0x6DBDD068u, 0x5B99C261u, 0xA0C0603u, 0xBC239FC1u, 0xEF41AE57u, 0xCE7FB1D6u, 0xEC43AFD9u, 0xCD7DB058u, 0xEA47ADD8u, 0x4985CC66u, 0xC87BB3D7u, 0x9CE8743Au, 0x8A078DC8u, 0x88F0783Cu, 0x26CFE9FAu, 0x53623196u, 0xF5A653A7u, 0x775A2D98u, 0x5297C5ECu, 0xB7DA6DB8u, 0xA83B93C7u, 0xC38241AEu, 0x6BB9D269u, 0xA731964Bu, 0xDD964BABu, 0xD19E4FA9u, 0x4F81CE67u, 0x3C28140Au, 0x8F018E47u, 0x16EFF9F2u, 0x99EE77B5u, 0xCC884422u, 0x64B3D7E5u, 0x5E9FC1EEu, 0xA3C261BEu, 0xFAAC562Bu, 0x213E1F81u, 0x6C482412u, 0x2D361B83u, 0x5A6C361Bu, 0x24381C0Eu, 0xCA8C4623u, 0x4F3F7F5u, 0x83098A45u, 0xC6844221u, 0x9E1F81CEu, 0xAB399249u, 0xE8B0582Cu, 0x2CC3EFF9u, 0x6EBFD1E6u, 0x93E271B6u, 0xF0A05028u, 0x725C2E17u, 0x2B321982u, 0x5C68341Au, 0x1D160B8Bu, 0x3EDFE1FEu, 0x1B12098Au, 0x36241209u, 0x8C038FC9u, 0x35261387u, 0xB9259C4Eu, 0x7CA3DFE1u, 0xE4B85C2Eu, 0x62B7D5E4u, 0x7AA7DDE0u, 0x408BCBEBu, 0x477A3D90u, 0xFFAA55A4u, 0x44783C1Eu, 0x392E1785u, 0x5D9DC060u, 0x0u, 0xDE944A25u, 0x2F7F5F4u, 0x1CE3FFF1u, 0x5F6A3594u, 0x3A2C160Bu, 0x68BBD3E7u, 0x23C9EA75u, 0x589BC3EFu, 0xB8D06834u, 0xA6C46231u, 0xC277B5D4u, 0xDA67BDD0u, 0x33221186u, 0x19E5FC7Eu, 0xC98E47ADu, 0x34D3E7FDu, 0xF6A45229u, 0xA0C06030u, 0x9AEC763Bu, 0x6546239Fu, 0x2AC7EDF8u, 0xAE3F91C6u, 0x6A4C2613u, 0x14180C06u, 0x1E140A05u, 0xA43397C5u, 0x66442211u, 0x2FC1EE77u, 0x15EDF87Cu, 0x1F5F47Au, 0xDFDF078u, 0xB4D86C36u, 0x4870381Cu, 0x96E47239u, 0xCB79B259u, 0x50603018u, 0xE945AC56u, 0x8DF67BB3u, 0x87FA7DB0u, 0xD8904824u, 0xC0804020u, 0x8BF279B2u, 0x4B723992u, 0xEDB65BA3u, 0xBA279DC0u, 0x850D8844u, 0x5195C462u, 0x60402010u, 0x9FEA75B4u, 0x3F2A1584u, 0x97118643u, 0x4D763B93u, 0xB62F99C2u, 0xA135944Au, 0xA9CE67BDu, 0x506038Fu, 0xEEB45A2Du, 0xAFCA65BCu, 0x6F4A259Cu, 0x61B5D46Au, 0x9D1D8040u, 0x981B83CFu, 0xEBB259A2u, 0x273A1D80u, 0xBF219E4Fu, 0x427C3E1Fu, 0x860F89CAu, 0xDB9249AAu, 0x91158442u };
// T4
// file anubis.c line 328
static const uint32_t T4[256]={ 0xBABABABAu, 0x54545454u, 0x2F2F2F2Fu, 0x74747474u, 0x53535353u, 0xD3D3D3D3u, 0xD2D2D2D2u, 0x4D4D4D4Du, 0x50505050u, 0xACACACACu, 0x8D8D8D8Du, 0xBFBFBFBFu, 0x70707070u, 0x52525252u, 0x9A9A9A9Au, 0x4C4C4C4Cu, 0xEAEAEAEAu, 0xD5D5D5D5u, 0x97979797u, 0xD1D1D1D1u, 0x33333333u, 0x51515151u, 0x5B5B5B5Bu, 0xA6A6A6A6u, 0xDEDEDEDEu, 0x48484848u, 0xA8A8A8A8u, 0x99999999u, 0xDBDBDBDBu, 0x32323232u, 0xB7B7B7B7u, 0xFCFCFCFCu, 0xE3E3E3E3u, 0x9E9E9E9Eu, 0x91919191u, 0x9B9B9B9Bu, 0xE2E2E2E2u, 0xBBBBBBBBu, 0x41414141u, 0x6E6E6E6Eu, 0xA5A5A5A5u, 0xCBCBCBCBu, 0x6B6B6B6Bu, 0x95959595u, 0xA1A1A1A1u, 0xF3F3F3F3u, 0xB1B1B1B1u, 0x2020202u, 0xCCCCCCCCu, 0xC4C4C4C4u, 0x1D1D1D1Du, 0x14141414u, 0xC3C3C3C3u, 0x63636363u, 0xDADADADAu, 0x5D5D5D5Du, 0x5F5F5F5Fu, 0xDCDCDCDCu, 0x7D7D7D7Du, 0xCDCDCDCDu, 0x7F7F7F7Fu, 0x5A5A5A5Au, 0x6C6C6C6Cu, 0x5C5C5C5Cu, 0xF7F7F7F7u, 0x26262626u, 0xFFFFFFFFu, 0xEDEDEDEDu, 0xE8E8E8E8u, 0x9D9D9D9Du, 0x6F6F6F6Fu, 0x8E8E8E8Eu, 0x19191919u, 0xA0A0A0A0u, 0xF0F0F0F0u, 0x89898989u, 0xF0F0F0Fu, 0x7070707u, 0xAFAFAFAFu, 0xFBFBFBFBu, 0x8080808u, 0x15151515u, 0xD0D0D0Du, 0x4040404u, 0x1010101u, 0x64646464u, 0xDFDFDFDFu, 0x76767676u, 0x79797979u, 0xDDDDDDDDu, 0x3D3D3D3Du, 0x16161616u, 0x3F3F3F3Fu, 0x37373737u, 0x6D6D6D6Du, 0x38383838u, 0xB9B9B9B9u, 0x73737373u, 0xE9E9E9E9u, 0x35353535u, 0x55555555u, 0x71717171u, 0x7B7B7B7Bu, 0x8C8C8C8Cu, 0x72727272u, 0x88888888u, 0xF6F6F6F6u, 0x2A2A2A2Au, 0x3E3E3E3Eu, 0x5E5E5E5Eu, 0x27272727u, 0x46464646u, 0xC0C0C0Cu, 0x65656565u, 0x68686868u, 0x61616161u, 0x3030303u, 0xC1C1C1C1u, 0x57575757u, 0xD6D6D6D6u, 0xD9D9D9D9u, 0x58585858u, 0xD8D8D8D8u, 0x66666666u, 0xD7D7D7D7u, 0x3A3A3A3Au, 0xC8C8C8C8u, 0x3C3C3C3Cu, 0xFAFAFAFAu, 0x96969696u, 0xA7A7A7A7u, 0x98989898u, 0xECECECECu, 0xB8B8B8B8u, 0xC7C7C7C7u, 0xAEAEAEAEu, 0x69696969u, 0x4B4B4B4Bu, 0xABABABABu, 0xA9A9A9A9u, 0x67676767u, 0xA0A0A0Au, 0x47474747u, 0xF2F2F2F2u, 0xB5B5B5B5u, 0x22222222u, 0xE5E5E5E5u, 0xEEEEEEEEu, 0xBEBEBEBEu, 0x2B2B2B2Bu, 0x81818181u, 0x12121212u, 0x83838383u, 0x1B1B1B1Bu, 0xE0E0E0Eu, 0x23232323u, 0xF5F5F5F5u, 0x45454545u, 0x21212121u, 0xCECECECEu, 0x49494949u, 0x2C2C2C2Cu, 0xF9F9F9F9u, 0xE6E6E6E6u, 0xB6B6B6B6u, 0x28282828u, 0x17171717u, 0x82828282u, 0x1A1A1A1Au, 0x8B8B8B8Bu, 0xFEFEFEFEu, 0x8A8A8A8Au, 0x9090909u, 0xC9C9C9C9u, 0x87878787u, 0x4E4E4E4Eu, 0xE1E1E1E1u, 0x2E2E2E2Eu, 0xE4E4E4E4u, 0xE0E0E0E0u, 0xEBEBEBEBu, 0x90909090u, 0xA4A4A4A4u, 0x1E1E1E1Eu, 0x85858585u, 0x60606060u, 0x0u, 0x25252525u, 0xF4F4F4F4u, 0xF1F1F1F1u, 0x94949494u, 0xB0B0B0Bu, 0xE7E7E7E7u, 0x75757575u, 0xEFEFEFEFu, 0x34343434u, 0x31313131u, 0xD4D4D4D4u, 0xD0D0D0D0u, 0x86868686u, 0x7E7E7E7Eu, 0xADADADADu, 0xFDFDFDFDu, 0x29292929u, 0x30303030u, 0x3B3B3B3Bu, 0x9F9F9F9Fu, 0xF8F8F8F8u, 0xC6C6C6C6u, 0x13131313u, 0x6060606u, 0x5050505u, 0xC5C5C5C5u, 0x11111111u, 0x77777777u, 0x7C7C7C7Cu, 0x7A7A7A7Au, 0x78787878u, 0x36363636u, 0x1C1C1C1Cu, 0x39393939u, 0x59595959u, 0x18181818u, 0x56565656u, 0xB3B3B3B3u, 0xB0B0B0B0u, 0x24242424u, 0x20202020u, 0xB2B2B2B2u, 0x92929292u, 0xA3A3A3A3u, 0xC0C0C0C0u, 0x44444444u, 0x62626262u, 0x10101010u, 0xB4B4B4B4u, 0x84848484u, 0x43434343u, 0x93939393u, 0xC2C2C2C2u, 0x4A4A4A4Au, 0xBDBDBDBDu, 0x8F8F8F8Fu, 0x2D2D2D2Du, 0xBCBCBCBCu, 0x9C9C9C9Cu, 0x6A6A6A6Au, 0x40404040u, 0xCFCFCFCFu, 0xA2A2A2A2u, 0x80808080u, 0x4F4F4F4Fu, 0x1F1F1F1Fu, 0xCACACACAu, 0xAAAAAAAAu, 0x42424242u };
// T5
// file anubis.c line 395
static const uint32_t T5[256]={ 0x0u, 0x1020608u, 0x2040C10u, 0x3060A18u, 0x4081820u, 0x50A1E28u, 0x60C1430u, 0x70E1238u, 0x8103040u, 0x9123648u, 0xA143C50u, 0xB163A58u, 0xC182860u, 0xD1A2E68u, 0xE1C2470u, 0xF1E2278u, 0x10206080u, 0x11226688u, 0x12246C90u, 0x13266A98u, 0x142878A0u, 0x152A7EA8u, 0x162C74B0u, 0x172E72B8u, 0x183050C0u, 0x193256C8u, 0x1A345CD0u, 0x1B365AD8u, 0x1C3848E0u, 0x1D3A4EE8u, 0x1E3C44F0u, 0x1F3E42F8u, 0x2040C01Du, 0x2142C615u, 0x2244CC0Du, 0x2346CA05u, 0x2448D83Du, 0x254ADE35u, 0x264CD42Du, 0x274ED225u, 0x2850F05Du, 0x2952F655u, 0x2A54FC4Du, 0x2B56FA45u, 0x2C58E87Du, 0x2D5AEE75u, 0x2E5CE46Du, 0x2F5EE265u, 0x3060A09Du, 0x3162A695u, 0x3264AC8Du, 0x3366AA85u, 0x3468B8BDu, 0x356ABEB5u, 0x366CB4ADu, 0x376EB2A5u, 0x387090DDu, 0x397296D5u, 0x3A749CCDu, 0x3B769AC5u, 0x3C7888FDu, 0x3D7A8EF5u, 0x3E7C84EDu, 0x3F7E82E5u, 0x40809D3Au, 0x41829B32u, 0x4284912Au, 0x43869722u, 0x4488851Au, 0x458A8312u, 0x468C890Au, 0x478E8F02u, 0x4890AD7Au, 0x4992AB72u, 0x4A94A16Au, 0x4B96A762u, 0x4C98B55Au, 0x4D9AB352u, 0x4E9CB94Au, 0x4F9EBF42u, 0x50A0FDBAu, 0x51A2FBB2u, 0x52A4F1AAu, 0x53A6F7A2u, 0x54A8E59Au, 0x55AAE392u, 0x56ACE98Au, 0x57AEEF82u, 0x58B0CDFAu, 0x59B2CBF2u, 0x5AB4C1EAu, 0x5BB6C7E2u, 0x5CB8D5DAu, 0x5DBAD3D2u, 0x5EBCD9CAu, 0x5FBEDFC2u, 0x60C05D27u, 0x61C25B2Fu, 0x62C45137u, 0x63C6573Fu, 0x64C84507u, 0x65CA430Fu, 0x66CC4917u, 0x67CE4F1Fu, 0x68D06D67u, 0x69D26B6Fu, 0x6AD46177u, 0x6BD6677Fu, 0x6CD87547u, 0x6DDA734Fu, 0x6EDC7957u, 0x6FDE7F5Fu, 0x70E03DA7u, 0x71E23BAFu, 0x72E431B7u, 0x73E637BFu, 0x74E82587u, 0x75EA238Fu, 0x76EC2997u, 0x77EE2F9Fu, 0x78F00DE7u, 0x79F20BEFu, 0x7AF401F7u, 0x7BF607FFu, 0x7CF815C7u, 0x7DFA13CFu, 0x7EFC19D7u, 0x7FFE1FDFu, 0x801D2774u, 0x811F217Cu, 0x82192B64u, 0x831B2D6Cu, 0x84153F54u, 0x8517395Cu, 0x86113344u, 0x8713354Cu, 0x880D1734u, 0x890F113Cu, 0x8A091B24u, 0x8B0B1D2Cu, 0x8C050F14u, 0x8D07091Cu, 0x8E010304u, 0x8F03050Cu, 0x903D47F4u, 0x913F41FCu, 0x92394BE4u, 0x933B4DECu, 0x94355FD4u, 0x953759DCu, 0x963153C4u, 0x973355CCu, 0x982D77B4u, 0x992F71BCu, 0x9A297BA4u, 0x9B2B7DACu, 0x9C256F94u, 0x9D27699Cu, 0x9E216384u, 0x9F23658Cu, 0xA05DE769u, 0xA15FE161u, 0xA259EB79u, 0xA35BED71u, 0xA455FF49u, 0xA557F941u, 0xA651F359u, 0xA753F551u, 0xA84DD729u, 0xA94FD121u, 0xAA49DB39u, 0xAB4BDD31u, 0xAC45CF09u, 0xAD47C901u, 0xAE41C319u, 0xAF43C511u, 0xB07D87E9u, 0xB17F81E1u, 0xB2798BF9u, 0xB37B8DF1u, 0xB4759FC9u, 0xB57799C1u, 0xB67193D9u, 0xB77395D1u, 0xB86DB7A9u, 0xB96FB1A1u, 0xBA69BBB9u, 0xBB6BBDB1u, 0xBC65AF89u, 0xBD67A981u, 0xBE61A399u, 0xBF63A591u, 0xC09DBA4Eu, 0xC19FBC46u, 0xC299B65Eu, 0xC39BB056u, 0xC495A26Eu, 0xC597A466u, 0xC691AE7Eu, 0xC793A876u, 0xC88D8A0Eu, 0xC98F8C06u, 0xCA89861Eu, 0xCB8B8016u, 0xCC85922Eu, 0xCD879426u, 0xCE819E3Eu, 0xCF839836u, 0xD0BDDACEu, 0xD1BFDCC6u, 0xD2B9D6DEu, 0xD3BBD0D6u, 0xD4B5C2EEu, 0xD5B7C4E6u, 0xD6B1CEFEu, 0xD7B3C8F6u, 0xD8ADEA8Eu, 0xD9AFEC86u, 0xDAA9E69Eu, 0xDBABE096u, 0xDCA5F2AEu, 0xDDA7F4A6u, 0xDEA1FEBEu, 0xDFA3F8B6u, 0xE0DD7A53u, 0xE1DF7C5Bu, 0xE2D97643u, 0xE3DB704Bu, 0xE4D56273u, 0xE5D7647Bu, 0xE6D16E63u, 0xE7D3686Bu, 0xE8CD4A13u, 0xE9CF4C1Bu, 0xEAC94603u, 0xEBCB400Bu, 0xECC55233u, 0xEDC7543Bu, 0xEEC15E23u, 0xEFC3582Bu, 0xF0FD1AD3u, 0xF1FF1CDBu, 0xF2F916C3u, 0xF3FB10CBu, 0xF4F502F3u, 0xF5F704FBu, 0xF6F10EE3u, 0xF7F308EBu, 0xF8ED2A93u, 0xF9EF2C9Bu, 0xFAE92683u, 0xFBEB208Bu, 0xFCE532B3u, 0xFDE734BBu, 0xFEE13EA3u, 0xFFE338ABu };
// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// anubis_setkey__return_value
// 
static signed int anubis_setkey__return_value;
// in_key
// file anubis.c line 713
static uint8_t in_key[32]={ 10, 128, 84, 188, 121, 182, 82, 33, 19, 131, 60, 40, 128, 5, 52, 166, 153, 163, 23, 207, 154, 138, 76, 96, 204, 55, 124, 134, 88, 171, 83, 71 };
// in_pub
// file anubis.c line 714
static uint8_t in_pub[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// main__return_value
// 
static signed int main__return_value;
// out
// file anubis.c line 715
static uint8_t out[64]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// rc
// file anubis.c line 462
static const uint32_t rc[19]={ 0xBA542F74u, 0x53D3D24Du, 0x50AC8DBFu, 0x70529A4Cu, 0xEAD597D1u, 0x33515BA6u, 0xDE48A899u, 0xDB32B7FCu, 0xE39E919Bu, 0xE2BB416Eu, 0xA5CB6B95u, 0xA1F3B102u, 0xCCC41D14u, 0xC363DA5Du, 0x5FDC7DCDu, 0x7F5A6C5Cu, 0xF726FFEDu, 0xE89D6F8Eu, 0x19A0F089u };
// read__return_value
// 
static ssize_t read__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file anubis.c line 716
signed int main(int argc, char** argv)
{
  uint32_t anubis_crypt_inter[4];
  uint32_t anubis_crypt_state[4];
  signed int anubis_crypt_R;
  signed int anubis_crypt_r;
  signed int anubis_crypt_i;
  uint32_t *anubis_crypt_dst;
  const uint32_t *anubis_crypt_src;
  const uint8_t *anubis_crypt_plaintext;
  uint8_t *anubis_crypt_ciphertext;
  uint32_t (*anubis_crypt_roundKey)[4];
  uint32_t anubis_setkey_v;
  signed int anubis_setkey_tmp_post_j$1;
  signed int anubis_setkey_tmp_post_j$0;
  signed int anubis_setkey_tmp_post_j;
  signed int anubis_setkey_j;
  uint32_t anubis_setkey_K3;
  uint32_t anubis_setkey_K2;
  uint32_t anubis_setkey_K1;
  uint32_t anubis_setkey_K0;
  uint32_t anubis_setkey_inter[10];
  uint32_t anubis_setkey_kappa[10];
  signed int anubis_setkey_r;
  signed int anubis_setkey_i;
  signed int anubis_setkey_R;
  signed int anubis_setkey_N;
  const uint32_t *anubis_setkey_key;
  unsigned int anubis_setkey_key_len;
  struct anubis_ctx *anubis_setkey_ctx;
  const uint8_t *anubis_setkey_in_key;
  struct anubis_ctx main_ctx;
  main_ctx = (struct anubis_ctx){ .key_len=0, .R=0, .E={ { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u } }, .D={ { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u } } };
  read(0, (void *)in_key, 32ul);
  read(0, (void *)in_pub, 64ul);
  /* begin function anubis_setkey */
  ;
  anubis_setkey_in_key = in_key;
  anubis_setkey_ctx = &main_ctx;
  anubis_setkey_key_len = 24u;
  anubis_setkey_key = (const uint32_t *)anubis_setkey_in_key;
  anubis_setkey_ctx->key_len = 24 * 8;
  anubis_setkey_N = 6;
  anubis_setkey_ctx->R = 14;
  anubis_setkey_R = 14;
  anubis_setkey_kappa[0] = anubis_setkey_key[0];
  anubis_setkey_kappa[1] = anubis_setkey_key[1];
  anubis_setkey_kappa[2] = anubis_setkey_key[2];
  anubis_setkey_kappa[3] = anubis_setkey_key[3];
  anubis_setkey_kappa[4] = anubis_setkey_key[4];
  anubis_setkey_kappa[5] = anubis_setkey_key[5];
  anubis_setkey_r = 0;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 24)];
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 16 & 255u)];
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 8 & 255u)];
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] & 255u)];
  anubis_setkey_i = 4;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_ctx->E[anubis_setkey_r][0] = anubis_setkey_K0;
  anubis_setkey_ctx->E[anubis_setkey_r][1] = anubis_setkey_K1;
  anubis_setkey_ctx->E[anubis_setkey_r][2] = anubis_setkey_K2;
  anubis_setkey_ctx->E[anubis_setkey_r][3] = anubis_setkey_K3;
  anubis_setkey_i = 0;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_kappa[0] = anubis_setkey_inter[0] ^ rc[anubis_setkey_r];
  anubis_setkey_kappa[1] = anubis_setkey_inter[1];
  anubis_setkey_kappa[2] = anubis_setkey_inter[2];
  anubis_setkey_kappa[3] = anubis_setkey_inter[3];
  anubis_setkey_kappa[4] = anubis_setkey_inter[4];
  anubis_setkey_kappa[5] = anubis_setkey_inter[5];
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 24)];
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 16 & 255u)];
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 8 & 255u)];
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] & 255u)];
  anubis_setkey_i = 4;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_ctx->E[anubis_setkey_r][0] = anubis_setkey_K0;
  anubis_setkey_ctx->E[anubis_setkey_r][1] = anubis_setkey_K1;
  anubis_setkey_ctx->E[anubis_setkey_r][2] = anubis_setkey_K2;
  anubis_setkey_ctx->E[anubis_setkey_r][3] = anubis_setkey_K3;
  anubis_setkey_i = 0;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_kappa[0] = anubis_setkey_inter[0] ^ rc[anubis_setkey_r];
  anubis_setkey_kappa[1] = anubis_setkey_inter[1];
  anubis_setkey_kappa[2] = anubis_setkey_inter[2];
  anubis_setkey_kappa[3] = anubis_setkey_inter[3];
  anubis_setkey_kappa[4] = anubis_setkey_inter[4];
  anubis_setkey_kappa[5] = anubis_setkey_inter[5];
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 24)];
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 16 & 255u)];
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 8 & 255u)];
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] & 255u)];
  anubis_setkey_i = 4;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_ctx->E[anubis_setkey_r][0] = anubis_setkey_K0;
  anubis_setkey_ctx->E[anubis_setkey_r][1] = anubis_setkey_K1;
  anubis_setkey_ctx->E[anubis_setkey_r][2] = anubis_setkey_K2;
  anubis_setkey_ctx->E[anubis_setkey_r][3] = anubis_setkey_K3;
  anubis_setkey_i = 0;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_j = anubis_setkey_i;
  anubis_setkey_tmp_post_j = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = T0[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j] >> 24)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$0 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T1[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$0] >> 16 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_tmp_post_j$1 = anubis_setkey_j;
  anubis_setkey_j = anubis_setkey_j - 1;
  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T2[(signed int)(anubis_setkey_kappa[anubis_setkey_tmp_post_j$1] >> 8 & 255u)];
  if(!(anubis_setkey_j >= 0))
    anubis_setkey_j = anubis_setkey_N - 1;

  anubis_setkey_inter[anubis_setkey_i] = anubis_setkey_inter[anubis_setkey_i] ^ T3[(signed int)(anubis_setkey_kappa[anubis_setkey_j] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_kappa[0] = anubis_setkey_inter[0] ^ rc[anubis_setkey_r];
  anubis_setkey_kappa[1] = anubis_setkey_inter[1];
  anubis_setkey_kappa[2] = anubis_setkey_inter[2];
  anubis_setkey_kappa[3] = anubis_setkey_inter[3];
  anubis_setkey_kappa[4] = anubis_setkey_inter[4];
  anubis_setkey_kappa[5] = anubis_setkey_inter[5];
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_r = 14;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 24)];
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 16 & 255u)];
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] >> 8 & 255u)];
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_N - 1] & 255u)];
  anubis_setkey_i = 4;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_K0 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 24)] ^ T5[(signed int)(anubis_setkey_K0 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K0 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K0 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K0 & 255u)] & 0xFFu;
  anubis_setkey_K1 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 16 & 255u)] ^ T5[(signed int)(anubis_setkey_K1 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K1 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K1 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K1 & 255u)] & 0xFFu;
  anubis_setkey_K2 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] >> 8 & 255u)] ^ T5[(signed int)(anubis_setkey_K2 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K2 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K2 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K2 & 255u)] & 0xFFu;
  anubis_setkey_K3 = T4[(signed int)(anubis_setkey_kappa[anubis_setkey_i] & 255u)] ^ T5[(signed int)(anubis_setkey_K3 >> 24)] & 0xFF000000u ^ T5[(signed int)(anubis_setkey_K3 >> 16 & 255u)] & 0xFF0000u ^ T5[(signed int)(anubis_setkey_K3 >> 8 & 255u)] & 0xFF00u ^ T5[(signed int)(anubis_setkey_K3 & 255u)] & 0xFFu;
  anubis_setkey_i = anubis_setkey_i - 1;
  anubis_setkey_ctx->E[anubis_setkey_r][0] = anubis_setkey_K0;
  anubis_setkey_ctx->E[anubis_setkey_r][1] = anubis_setkey_K1;
  anubis_setkey_ctx->E[anubis_setkey_r][2] = anubis_setkey_K2;
  anubis_setkey_ctx->E[anubis_setkey_r][3] = anubis_setkey_K3;
  anubis_setkey_ctx->D[0][0] = anubis_setkey_ctx->E[14][0];
  anubis_setkey_ctx->D[14][0] = anubis_setkey_ctx->E[0][0];
  anubis_setkey_ctx->D[0][1] = anubis_setkey_ctx->E[14][1];
  anubis_setkey_ctx->D[14][1] = anubis_setkey_ctx->E[0][1];
  anubis_setkey_ctx->D[0][2] = anubis_setkey_ctx->E[14][2];
  anubis_setkey_ctx->D[14][2] = anubis_setkey_ctx->E[0][2];
  anubis_setkey_ctx->D[0][3] = anubis_setkey_ctx->E[14][3];
  anubis_setkey_ctx->D[14][3] = anubis_setkey_ctx->E[0][3];
  anubis_setkey_r = 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  anubis_setkey_i = 0;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_v = anubis_setkey_ctx->E[anubis_setkey_R - anubis_setkey_r][anubis_setkey_i];
  anubis_setkey_ctx->D[anubis_setkey_r][anubis_setkey_i] = T0[(signed int)(T4[(signed int)(anubis_setkey_v >> 24)] & 255u)] ^ T1[(signed int)(T4[(signed int)(anubis_setkey_v >> 16 & 255u)] & 255u)] ^ T2[(signed int)(T4[(signed int)(anubis_setkey_v >> 8 & 255u)] & 255u)] ^ T3[(signed int)(T4[(signed int)(anubis_setkey_v & 255u)] & 255u)];
  anubis_setkey_i = anubis_setkey_i + 1;
  anubis_setkey_r = anubis_setkey_r + 1;
  0;
  /* end function anubis_setkey */
  ;
  /* begin function anubis_crypt */
  ;
  anubis_crypt_roundKey = main_ctx.E;
  anubis_crypt_ciphertext = out;
  anubis_crypt_plaintext = in_pub;
  anubis_crypt_src = (const uint32_t *)anubis_crypt_plaintext;
  anubis_crypt_dst = (uint32_t *)anubis_crypt_ciphertext;
  anubis_crypt_R = 14;
  anubis_crypt_i = 0;
  anubis_crypt_state[anubis_crypt_i] = anubis_crypt_src[anubis_crypt_i] ^ anubis_crypt_roundKey[0][anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_state[anubis_crypt_i] = anubis_crypt_src[anubis_crypt_i] ^ anubis_crypt_roundKey[0][anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_state[anubis_crypt_i] = anubis_crypt_src[anubis_crypt_i] ^ anubis_crypt_roundKey[0][anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_state[anubis_crypt_i] = anubis_crypt_src[anubis_crypt_i] ^ anubis_crypt_roundKey[0][anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_r = 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] ^ anubis_crypt_roundKey[anubis_crypt_r][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] ^ anubis_crypt_roundKey[anubis_crypt_r][3];
  anubis_crypt_state[0] = anubis_crypt_inter[0];
  anubis_crypt_state[1] = anubis_crypt_inter[1];
  anubis_crypt_state[2] = anubis_crypt_inter[2];
  anubis_crypt_state[3] = anubis_crypt_inter[3];
  anubis_crypt_r = anubis_crypt_r + 1;
  anubis_crypt_inter[0] = T0[(signed int)(anubis_crypt_state[0] >> 24)] & 0xFF000000u ^ T1[(signed int)(anubis_crypt_state[1] >> 24)] & 0xFF0000u ^ T2[(signed int)(anubis_crypt_state[2] >> 24)] & 0xFF00u ^ T3[(signed int)(anubis_crypt_state[3] >> 24)] & 0xFFu ^ anubis_crypt_roundKey[anubis_crypt_R][0];
  anubis_crypt_inter[1] = T0[(signed int)(anubis_crypt_state[0] >> 16 & 255u)] & 0xFF000000u ^ T1[(signed int)(anubis_crypt_state[1] >> 16 & 255u)] & 0xFF0000u ^ T2[(signed int)(anubis_crypt_state[2] >> 16 & 255u)] & 0xFF00u ^ T3[(signed int)(anubis_crypt_state[3] >> 16 & 255u)] & 0xFFu ^ anubis_crypt_roundKey[anubis_crypt_R][1];
  anubis_crypt_inter[2] = T0[(signed int)(anubis_crypt_state[0] >> 8 & 255u)] & 0xFF000000u ^ T1[(signed int)(anubis_crypt_state[1] >> 8 & 255u)] & 0xFF0000u ^ T2[(signed int)(anubis_crypt_state[2] >> 8 & 255u)] & 0xFF00u ^ T3[(signed int)(anubis_crypt_state[3] >> 8 & 255u)] & 0xFFu ^ anubis_crypt_roundKey[anubis_crypt_R][2];
  anubis_crypt_inter[3] = T0[(signed int)(anubis_crypt_state[0] & 255u)] & 0xFF000000u ^ T1[(signed int)(anubis_crypt_state[1] & 255u)] & 0xFF0000u ^ T2[(signed int)(anubis_crypt_state[2] & 255u)] & 0xFF00u ^ T3[(signed int)(anubis_crypt_state[3] & 255u)] & 0xFFu ^ anubis_crypt_roundKey[anubis_crypt_R][3];
  anubis_crypt_i = 0;
  anubis_crypt_dst[anubis_crypt_i] = anubis_crypt_inter[anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_dst[anubis_crypt_i] = anubis_crypt_inter[anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_dst[anubis_crypt_i] = anubis_crypt_inter[anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  anubis_crypt_dst[anubis_crypt_i] = anubis_crypt_inter[anubis_crypt_i];
  anubis_crypt_i = anubis_crypt_i + 1;
  /* end function anubis_crypt */
  ;
  write(1, (const void *)out, 64ul);
  main__return_value = 0;
}

