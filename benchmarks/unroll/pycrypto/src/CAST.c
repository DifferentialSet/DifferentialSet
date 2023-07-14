#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <assert.h>
#include <unistd.h>

#define __CPROVER_bool int
// tag-#anon#ST[ARR16{U32}$U32$'Km'|ARR16{U8}$U8$'Kr'|S32'rounds']
// file CAST.c line 60
struct anonymous;


typedef unsigned int __CPROVER_size_t;
typedef struct anonymous block_state;


typedef unsigned int uint32;
typedef unsigned char uint8;

// __builtin___memcpy_chk
// file <builtin-architecture-strings> line 20

// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// block_encrypt
// file CAST.c line 453
static void block_encrypt(block_state *self, unsigned char *in, unsigned char *out);
// block_finalize
// file CAST.c line 448
static void block_finalize(block_state *self);
// block_init
// file CAST.c line 427
static void block_init(block_state *self, unsigned char *key, signed int keylength);
// castcrypt
// file CAST.c line 124
static void castcrypt(block_state *key, uint8 *block, signed int decrypt);
// castfunc
// file CAST.c line 75
static uint32 castfunc(uint32 D, uint32 Kmi, uint8 Kri, signed int type);
// castschedulekeys
// file CAST.c line 243
static void castschedulekeys(block_state *schedule, uint8 *key, signed int keybytes);
// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26
static inline void * memcpy(void * restrict __dest, const void * restrict __src, size_t __len);
// schedulekeys_half
// file CAST.c line 202
static void schedulekeys_half(uint32 *in, uint32 *keys);

struct anonymous
{
  // Km
  uint32 Km[16];
  // Kr
  uint8 Kr[16];
  // rounds
  signed int rounds;
};


// S1
// file cast5.c line 7
static const uint32 S1[256]={ 821772500u, 0x9FA0FF0Bu, 1810681135u, 1059425402u, 505495343u, 0x9C004DD3u, 1610868032u, 0xCF9FC949u, 0xBFD4AF27u, 0x88BBBDB5u, 0xE2034090u, 0x98D09675u, 1852023008u, 365126098u, 0xC2E7661Du, 584384398u, 677919599u, 0xC07FD059u, 0xFF2379C8u, 2002735330u, 1136869587u, 0xDF2F8656u, 0x887CA41Au, 0xA2D2BD2Du, 0xA1C9E0D6u, 879511577u, 1639411079u, 575934255u, 717107937u, 0xAA54166Bu, 576097850u, 0xA2D341D0u, 1725645000u, 0xA784392Fu, 5111599u, 767152862u, 0x97943FACu, 1251459544u, 1383482551u, 0xB5F437A7u, 0xB82CBAEFu, 0xD751D159u, 1878520045u, 1510570527u, 0x827B68D0u, 0x90ECF52Eu, 582008916u, 0xBC8E5935u, 1265446783u, 1354458274u, 0xD2664910u, 0xBEE5812Du, 0xB7332290u, 0xE93B159Fu, 0xB48EE411u, 1275016285u, 0xFD45C240u, 0xAD31973Fu, 0xC4F6D02Eu, 1442611557u, 0xD5B1CAADu, 0xA1AC2DAEu, 0xA2D4B76Du, 0xC19B0C50u, 0x882240F2u, 208555832u, 0xA4E4BFD7u, 1331405426u, 1447828783u, 0xC59C5319u, 0xB949E354u, 0xB04669FEu, 0xB1B6AB8Au, 0xC71358DDu, 1669711173u, 286233437u, 1465092821u, 1782121619u, 0xE63D37E0u, 710211251u, 980974943u, 1651941557u, 430374111u, 2051154026u, 704238805u, 0xF61B1891u, 0xBB72275Eu, 0xAA508167u, 948965521u, 0xC6B505EBu, 0x84C7CB8Cu, 718756367u, 0x874A1427u, 0xA2D1936Bu, 718440111u, 0xAA56D291u, 0xD7894360u, 1113355533u, 0x93B39E26u, 410092745u, 1811985197u, 1944238868u, 0xA0BEBC3Cu, 1415722873u, 1682284203u, 1060277122u, 1998114690u, 1503841958u, 82706478u, 0x89FE78E6u, 1068173648u, 845149890u, 0x81383F05u, 1768146376u, 1993038550u, 0xD49974C9u, 0xCA180DCFu, 940016341u, 0xC7FA5CF6u, 0x8AC31511u, 904371731u, 1205506512u, 0xF40F9086u, 0xA7E2419Eu, 825647681u, 85914773u, 0xAA573B04u, 1249926541u, 1417871568u, 3287612u, 0xBF64CDDFu, 0xBA57A68Eu, 1975924523u, 1353700161u, 0xA7C13275u, 0x915A0BF5u, 1800716203u, 722146342u, 0xAB4CC9D7u, 1151126914u, 0xF7FBF265u, 0xAB85C5F3u, 458611604u, 0xAAD4E324u, 0xCFA4BD3Fu, 770352098u, 0x9E204D02u, 0xC8BD25ACu, 0xEADF55B3u, 0xD5BD9E98u, 0xE31231B2u, 718646636u, 0x954329DEu, 0xADBE4528u, 0xD8710F69u, 0xAA51C90Fu, 0xAA786BF6u, 575749918u, 0xAA51A79Bu, 718488780u, 2069512688u, 0xD37CFBADu, 453416197u, 1106044049u, 0xB4C332E6u, 52586708u, 0xC9600ACCu, 0xCE387E6Du, 0xBF6BB16Cu, 1785789304u, 218356169u, 0xD4DF39DEu, 0xE01063DAu, 1194783844u, 1523787992u, 0xB347CC96u, 1975193539u, 0x98511BFBu, 1341901877u, 0xB58BCF6Au, 0xE11F0ABCu, 0xBFC5FE4Au, 0xA70AEC10u, 0xAC39570Au, 1057244207u, 1636348243u, 0xE0397A2Eu, 1462225785u, 0x9CEB418Fu, 481089165u, 718503062u, 24497053u, 0xC69DFF09u, 0xC75B65F0u, 0xD9DB40D8u, 0xEC0E7779u, 1195698900u, 0xB11C3274u, 0xDD24CB9Eu, 2115785917u, 0xF01144F9u, 0xD2240EB1u, 0x9675B3FDu, 0xA3AC3755u, 0xD47C27AFu, 1372086093u, 1452307862u, 0xA5BB15E6u, 1476592880u, 0xCA042CF1u, 18495466u, 0x8DBFAADBu, 901398090u, 891748256u, 0xC37B4D09u, 0xBC306ED9u, 0x98A52666u, 1447622437u, 0xFF5E569Du, 216884176u, 2086908623u, 1879786977u, 0xD5EA50F1u, 0x85A92872u, 0xAF1FBDA7u, 0xD4234870u, 0xA7870BF3u, 758861177u, 1121993112u, 215018983u, 642190776u, 0xF881814Cu, 1196255959u, 2081185372u, 0xD1231959u, 941322904u, 0xF5D2F4DBu, 0xAB838653u, 1848581667u, 0x83719C9Eu, 0xBD91E046u, 0x9A56456Eu, 0xDC39200Cu, 550028657u, 0x962BDA1Cu, 0xE1E696FFu, 0xB141AB08u, 2093648313u, 443148163u, 46942275u, 0xA2F7C579u, 1117713533u, 1115362972u, 1523183689u, 0xDD8F0F00u, 1551984063u };
// S2
// file cast5.c line 61
static const uint32 S2[256]={ 522195092u, 0xEF0BA75Bu, 1776537470u, 960447360u, 0xFE61CF7Au, 0xEEC5207Au, 1435016340u, 1929119313u, 0xADA7EF79u, 1310552629u, 0xD55A63CEu, 0xDE0436BAu, 0x99C430EFu, 1594623892u, 417127293u, 0xA1D6EFF3u, 0xA0B52F7Bu, 1508390405u, 0xEE15B094u, 0xE9FFD909u, 0xDC440086u, 0xEF944459u, 0xBA83CCB3u, 0xE0C3CDFBu, 0xD1DA4181u, 990456497u, 0xF997F1C1u, 0xA5E6CF7Bu, 21106139u, 0xE4E7EF5Bu, 631373633u, 0xE180F806u, 532942976u, 396095098u, 0xD37AC6A9u, 0xFE5830A4u, 0x98DE8B7Fu, 2011709262u, 2039648873u, 620404603u, 0xE113C85Bu, 0xACC40083u, 0xD7503525u, 0xF7EA615Fu, 1645490516u, 223693667u, 1567101217u, 0xC866C359u, 1029951347u, 0xCEE234C0u, 0xD4D87E87u, 1550265121u, 119497089u, 972513919u, 907948164u, 0xE4EB573Bu, 1613718692u, 0xD63ACD9Cu, 465323573u, 0x9E81032Du, 654439692u, 0x99847AB4u, 0xA0E3DF79u, 0xBA6CF38Cu, 277098644u, 624404830u, 0xF46F6FFEu, 0xA1FF3B1Fu, 546110314u, 0x8F458C74u, 0xD9E0A227u, 1321679412u, 0xFC884F69u, 1045293279u, 0xEF0E0088u, 895050893u, 0x8A45388Cu, 494945126u, 1914543101u, 0xA58684BBu, 0xE8256333u, 0x844E8212u, 311263384u, 0xFED33FB4u, 0xCE280AE1u, 669096869u, 0xD5A6C252u, 0xE49754BDu, 0xC5D655DDu, 0xEB667064u, 2005142349u, 0xA1B6A801u, 0x84DB26A9u, 0xE0B56714u, 569394103u, 0xE5D05860u, 1425027204u, 108000370u, 0xA31AA153u, 0xDADC4755u, 0xB5625DBFu, 1750473702u, 0x83CA6B94u, 762237499u, 0xECCF01DBu, 0xA6D3D0BAu, 0xB6803D5Cu, 0xAF77A709u, 867476300u, 964413654u, 1591880597u, 1594774276u, 0x81ED6F61u, 552026980u, 0xB45E1378u, 0xDE18639Bu, 0x881CA122u, 0xB96726D1u, 0x8049A7E8u, 582474363u, 1582640421u, 1383256631u, 2043843868u, 0xC60D894Cu, 1217180674u, 463797851u, 0xA4B09F6Bu, 480777679u, 0xA20C3005u, 0x8871DF63u, 0xB9DE2FCBu, 214354409u, 200212307u, 0xE3214517u, 0xB4542835u, 0x9F63293Cu, 0xEE41E729u, 1847405948u, 1342460550u, 510035443u, 0xF33401C6u, 815934613u, 833030224u, 1620250387u, 1945732119u, 0xA1269859u, 0xEC645C44u, 1388869545u, 0xCDFF33A6u, 0xA02B1741u, 2092620194u, 562037615u, 1356438536u, 0xCB3F4861u, 0xC26BD765u, 1688467115u, 0x80342676u, 631725691u, 0xE4E6D1FCu, 549916902u, 0xCDF0B680u, 394546491u, 837744717u, 2114462948u, 751520235u, 0x846A3BAEu, 0x8FF77888u, 0xEE5D60F6u, 2063029875u, 803036379u, 0xA11631C1u, 821456707u, 0xB3FAEC54u, 360699898u, 0xEF8579CCu, 0xD152DE58u, 0xDB2FFD5Eu, 0x8F32CE19u, 812317050u, 49299192u, 0x99319AD5u, 0xC242FA0Fu, 0xA7E3EBB0u, 0xC68E4906u, 0xB8DA230Cu, 0x80823028u, 0xDCDEF3C8u, 0xD35FB171u, 143268808u, 0xBEC0C560u, 1638124008u, 0xBCA8F54Du, 0xC72FEFFAu, 578956953u, 0x82C570B4u, 0xD8D94E89u, 0x8B1C34BCu, 807278310u, 658237817u, 0xB0FFEAA6u, 1641658566u, 11683945u, 0xB7FFCE3Fu, 148645947u, 1138423386u, 0xF7E19798u, 1981396783u, 0x8F1C9BA4u, 0xDC8637A0u, 380097457u, 0x9FC393B7u, 0xA7136EEBu, 0xC6BCC63Eu, 441530178u, 0xEF6828BCu, 1375954390u, 761952171u, 891809099u, 0x821FD216u, 157052462u, 0xDB92F2FBu, 1592404427u, 341349109u, 0x91584F7Fu, 1417898363u, 644327628u, 0x85196048u, 0x8C4BACEAu, 0x833860D4u, 220455161u, 1815641738u, 182899273u, 0xB284600Cu, 0xD835731Du, 0xDCB1C647u, 0xAC4C56EAu, 1052606899u, 588164016u, 1681439879u, 0xF0B5B1FAu, 0x8F5EA2B3u, 0xFC184642u, 167996282u, 1336969661u, 1688053129u, 0xA345415Eu, 1543734051u, 1046297529u, 1138201970u, 2121126012u, 115334942u, 1819067631u, 1902159161u, 1941945968u, 0x83877605u, 1159982321u };
// S3
// file cast5.c line 115
static const uint32 S3[256]={ 0x8DEFC240u, 637164959u, 0xEB903DBFu, 0xE810C907u, 1197506559u, 916448331u, 0x8C1FC644u, 0xAECECA90u, 0xBEB1F9BFu, 0xEEFBCAEAu, 0xE8CF1950u, 1373570990u, 0x920E8806u, 0xF0AD0548u, 0xE13C8D83u, 0x927010D5u, 286293407u, 124026297u, 0xB2E3E4D4u, 1028597854u, 0xB9AFA820u, 0xFADE82E0u, 0xA067268Bu, 0x8272792Eu, 1430237888u, 1218109995u, 0xD4EF9794u, 308166588u, 570424558u, 0x825B1BFDu, 0x9255C5EDu, 307733056u, 1310360322u, 0xBAE07FFFu, 1384269543u, 0x8E57140Eu, 863238079u, 0x8C9F8188u, 0xA6FC4EE8u, 0xC982B5A5u, 0xA8C01DB7u, 1470087780u, 1728663345u, 0xF2BD3F5Fu, 1090516929u, 532123132u, 0x8E6BD2C1u, 1132193179u, 0x99B03DBFu, 0xB5DBC64Bu, 1670234342u, 1434557849u, 0xA197C81Cu, 1241591150u, 0xC5884A28u, 0xCCC36F71u, 0xB843C213u, 1812415473u, 0x8309893Cu, 267246943u, 796911696u, 0xD7C07F7Eu, 38830015u, 1526438404u, 0xA747D2D0u, 374413614u, 0xAF70BF3Eu, 1489179520u, 1603809326u, 1920779204u, 168801282u, 260042626u, 0x8C96FDADu, 1563175598u, 0x8EE99A49u, 1356499128u, 0x8427F4A0u, 514611088u, 2037363785u, 0x8252DC15u, 0xEFBD7D9Bu, 0xA672597Du, 0xADA840D8u, 1173701892u, 0xFA5D7403u, 0xE83EC305u, 1334932762u, 0x925669C2u, 602925377u, 0xA903F12Eu, 1613172210u, 41346230u, 0x94FD6574u, 0x927985B2u, 0x8276DBCBu, 41386358u, 0xF8AF918Du, 1313404830u, 0x8F616DDFu, 0xE29D840Eu, 0x842F7D83u, 873260488u, 0x96BBB682u, 0x93B4B148u, 0xEF303CABu, 0x984FAF28u, 2006953883u, 0x92DC560Du, 575479328u, 0x8437AA88u, 2099895446u, 660001756u, 0x8B907CEEu, 0xB51FD240u, 0xE7C07CE3u, 0xE566B4A1u, 0xC3E9615Eu, 1022894237u, 1620365795u, 0xCD9CA341u, 1551255054u, 15374395u, 0xD4D67881u, 0xFD47572Cu, 0xF76CEDD9u, 0xBDA8229Cu, 310226346u, 1133119310u, 530038928u, 136043402u, 0x93A07EBEu, 0xB938CA15u, 0x97B03CFFu, 1036173560u, 0x8D1AB2ECu, 1681395281u, 1758231547u, 0xD90F2788u, 306774401u, 1575354324u, 0xDD7EF86Au, 1990386196u, 0xB9A40368u, 0x925D958Fu, 1262092282u, 0xBA39AEE9u, 0xA4FFD30Bu, 0xFAF7933Bu, 1833535011u, 423410938u, 660763973u, 0x825CF47Au, 1639812000u, 0xD11E42D1u, 0xCEAD04F4u, 310289298u, 272797111u, 0x8272A972u, 0x9270C4A8u, 310240523u, 677093832u, 1013118031u, 901835429u, 0xE805D231u, 1116285435u, 0xB4FCDF82u, 1337354835u, 243122523u, 520626091u, 277223598u, 0xFCFD086Du, 0xF9FF2889u, 1766575121u, 594173102u, 316590669u, 742362309u, 0xD2D02DFEu, 0xF8EF5896u, 0xE4CF52DAu, 0x95155B67u, 1229605004u, 0xB9B6A80Cu, 1552908988u, 0x89D36B45u, 979407927u, 0xEC00C9A9u, 1148277331u, 176638793u, 0xD773BC40u, 2083809052u, 40992502u, 1340822838u, 0xA2D02FFFu, 0xD2BF60C4u, 0xD43F03C0u, 1354035053u, 122129617u, 7215240u, 0xA2E53F55u, 0xB9E6D4BCu, 0xA2048016u, 0x97573833u, 0xD7207D67u, 0xDE0F8F3Du, 1928887091u, 0xABCC4F33u, 1988674909u, 2063640240u, 0x947B0001u, 1459647954u, 0xF9BB88F8u, 0x8942019Eu, 1113892351u, 0x856302E0u, 1927010603u, 0xEE971B69u, 1856122846u, 1594404395u, 0xAF7A616Du, 0xE5C98767u, 0xCF1FEBD2u, 1643104450u, 0xF1AC2571u, 0xCC8239C2u, 1730235576u, 0xB1E583D1u, 0xB7DC3E62u, 2131803598u, 0xF90A5C38u, 267404349u, 1617849798u, 1616132681u, 1462223176u, 736725533u, 0x8AB41738u, 551665188u, 0xAF96DA0Fu, 1749386277u, 0x99833BE5u, 1611482493u, 674206544u, 0x8334B362u, 0xD91D1120u, 728599968u, 1680547377u, 0x9C305A00u, 1388111496u, 453204106u, 0xF7BAEFD5u, 1094905244u, 0xA4315C11u, 0x83323EC5u, 0xDFEF4636u, 0xA133C501u, 0xE9D3531Cu, 0xEE353783u };
// S4
// file cast5.c line 169
static const uint32 S4[256]={ 0x9DB30420u, 532081118u, 0xA7BE7BEFu, 0xD273A298u, 1246723035u, 1689095255u, 0x85510443u, 0xFA020ED1u, 2116582143u, 0xE60FB663u, 157234593u, 2045505824u, 0xFD059D43u, 1687664561u, 0xF3641F63u, 605965023u, 672431967u, 1336064205u, 0xC9430040u, 214114848u, 0xFDD30B30u, 0xC0A5374Fu, 489488601u, 605322005u, 0xEE4D111Au, 264917351u, 1912574028u, 756637694u, 436560991u, 202637054u, 135989450u, 85393697u, 0x80530100u, 0xE83E5EFEu, 0xAC9AF4F8u, 2145855233u, 0xD2B8EE5Fu, 115294817u, 0xBB9E9B8Au, 1922296357u, 0xCE84FFDFu, 0xF5718801u, 1037454084u, 0xA26F263Bu, 2127856640u, 1417604070u, 1148013728u, 1827919605u, 642362335u, 0xAEA0C7F5u, 909348033u, 1346338451u, 0xD3772061u, 297154785u, 1917849091u, 0xF80EB2BBu, 0xABE0502Eu, 0xEC8D77DEu, 1469521537u, 0xE14F6746u, 0xC9335400u, 1763717519u, 136166297u, 0xFFC304A5u, 1295325189u, 2134727907u, 0xA6C866C6u, 1566297257u, 0xDAEC6FEAu, 0x9F926F91u, 0x9F46222Fu, 965822077u, 0xA5BF6D8Eu, 289653839u, 1133871874u, 0xD0214EEBu, 35685304u, 1068898316u, 418943774u, 672553190u, 642281022u, 0x8BD78A70u, 1954014401u, 0xB506E07Cu, 0xF32D0A25u, 2030668546u, 0xE4EABB81u, 672283427u, 1776201016u, 359975446u, 0xDF871B62u, 555499703u, 0xA51A9EF9u, 1324923u, 69110472u, 152125443u, 0xBD59E4D2u, 0xE3D156D5u, 1340634837u, 798073664u, 1434183902u, 15393959u, 216384236u, 1303690150u, 0xE756BDFFu, 0xDD3369ACu, 0xEC17B035u, 106373927u, 0x99AFC8B0u, 1455997841u, 1801814300u, 1578393881u, 1854262133u, 0xBE07C002u, 0xC2325577u, 0x893FF4ECu, 1539295533u, 0xD0EC3B25u, 0xB7801AB7u, 0x8D6D3B24u, 549938159u, 0xC366A5FCu, 0x9C382880u, 181285381u, 0xAAC9548Au, 0xECA1D7C7u, 68876850u, 488006234u, 1728155692u, 0x9B757A54u, 836007927u, 0x9126B031u, 919367643u, 0xC70B8B46u, 0xD9E66A48u, 1457871481u, 40520939u, 1380155135u, 797931188u, 234455205u, 0x8674CDE3u, 0xEDDA04EBu, 397000196u, 739833055u, 0xB7747F9Du, 0xAB2AF7B4u, 0xEFC34D20u, 772369276u, 390177364u, 0xE5B6A035u, 557662966u, 740064294u, 1640166671u, 1699928825u, 0xD2C231F8u, 622006121u, 0xD8167FA2u, 68743880u, 1742502u, 219489963u, 1664179233u, 1577743084u, 1236991741u, 410585305u, 0x8D0DBD86u, 823226535u, 1050371084u, 0xCC3E10D7u, 0xD5CAD3B6u, 212779912u, 0xF73001E1u, 1819446015u, 1911218849u, 530248558u, 0xCFCBD12Fu, 0xC1DE8417u, 0xAC07BE6Bu, 0xCB44A1D8u, 0x8B9B0F56u, 20547779u, 0xB1C52FCAu, 0xB4BE31CDu, 0xD8782806u, 312714466u, 1870521650u, 1493008054u, 0xD01EE900u, 615382978u, 0xF4990FC5u, 0x9711AAC5u, 1932181u, 0x82E5E7D2u, 278426614u, 6369430u, 0xC32D9521u, 0xADA121FFu, 697336853u, 2143000447u, 0xAF9EB3DBu, 701099306u, 1558357093u, 0xA730F32Cu, 0xD0AA3FE8u, 0x8A5CC091u, 0xD49E2CE7u, 216290473u, 0xD60ACD86u, 23009561u, 1996984579u, 0xDEA03AF6u, 2024298078u, 0xDEE356DFu, 569400510u, 0x8B75E387u, 0xB3C50651u, 0xB8A5C3EFu, 0xD8EEB6D2u, 0xE523BE77u, 0xC2154529u, 795471839u, 0xAFE67AFBu, 0xF470C4B2u, 0xF3E0EB5Bu, 0xD6CC9876u, 971261452u, 534414648u, 428311343u, 0xCA007367u, 0xA99144F8u, 694888862u, 1227866773u, 0x9266BEABu, 0xB5676E69u, 0x9BD3DDDAu, 0xDF7E052Fu, 0xDB25701Cu, 459166190u, 0xF65324E6u, 1794958188u, 51825668u, 0x8644213Eu, 0xB7DC59D0u, 2036672799u, 0xCCD6FD43u, 1099053433u, 0x932BCDF6u, 0xB657C34Du, 1323291266u, 2061838604u, 1018778475u, 0x851E20FEu, 0x9833557Eu, 334295216u, 0xD3FFB372u, 1065731521u, 183467730u };
// S5
// file cast5.c line 223
static const uint32 S5[256]={ 2127105028u, 745436345u, 0x9B0E66DFu, 0xA6337911u, 0xB86A7FFFu, 500390133u, 1155374404u, 389092991u, 150729210u, 0xE7F511CCu, 0xD2051B00u, 1935325696u, 716645080u, 946045387u, 0xACF6243Au, 1774124410u, 0xE6A2E77Fu, 0xF0C720CDu, 0xC4494816u, 0xCCF5C180u, 948246080u, 363898952u, 0xE68B18CBu, 1286266623u, 1598556673u, 68334250u, 630723836u, 1104211938u, 1312863373u, 613332731u, 0x8DBA1CFEu, 1101634306u, 441780740u, 0xBA8F65CBu, 1917973735u, 0x95A51725u, 0xC106ECD7u, 0x97A5980Au, 0xC539B9AAu, 1299840618u, 0xF2F3F763u, 1756332096u, 0xED0C9E56u, 297047435u, 0xE1EB5A88u, 0x8709E6B0u, 0xD7E07156u, 1311375015u, 1667687725u, 47300608u, 0xC4AC8E05u, 0x9377F571u, 201668394u, 1468347890u, 576830978u, 0xD642A0C9u, 0xDF13A280u, 1958042578u, 1747032512u, 0xD421E5ECu, 1408974056u, 0xC8ADEDB3u, 682131401u, 1033214337u, 1545599232u, 0xFE38D399u, 206503691u, 103024618u, 0xAA2F4FB1u, 1337551222u, 0x90C79505u, 0xB0A8A774u, 0xEF55A1FFu, 0xE59CA2C2u, 0xA6B62D27u, 0xE66A4263u, 0xDF65001Fu, 247794022u, 0xDFDD55BCu, 702416469u, 0x911E739Au, 397379957u, 851939612u, 0x89F89468u, 218229120u, 1380406772u, 62274761u, 214451378u, 0xBCF3F0AAu, 0x87AC36E9u, 0xE53A7426u, 28563499u, 446592073u, 1693330814u, 0xCDDBB1DAu, 29968656u, 0xB868BF80u, 220656637u, 0x9342EDE7u, 77972100u, 1667708854u, 1358280214u, 0xF24766E3u, 0x8ECA36C1u, 325977563u, 0xFEF18391u, 0xFB887A37u, 0xD6E7F7D4u, 0xC7FB7DC9u, 811859167u, 0xB6F589DEu, 0xEC2941DAu, 652502677u, 0xB7566419u, 0xF654EFC5u, 0xD08D58B7u, 1217549313u, 0xC1BACB7Fu, 0xE5FF550Fu, 0xB6083049u, 1538642152u, 0x87D72E5Au, 0xAB6A6EE1u, 574252750u, 0xC62BF3CDu, 0x9E0885F9u, 1758150215u, 141295887u, 0xA21DE820u, 0xD18B69DEu, 0xF3F65777u, 0xFA02C3F6u, 1082055363u, 0xCBB3D550u, 395511885u, 0xB0D70EBAu, 179534037u, 0xD951FB0Cu, 0xDED7DA56u, 1092926436u, 0x94CA0B56u, 257381841u, 0xE0E1E56Eu, 1636087230u, 1477059743u, 0x94F74BC0u, 0xE327888Eu, 0x9F7B5561u, 0xC3DC0280u, 90732309u, 1684827095u, 1150307763u, 1723134115u, 0xC0F1648Au, 1769919919u, 1240018934u, 815675215u, 750138730u, 0x85808573u, 1234303040u, 1995484674u, 138143821u, 675421338u, 1145607174u, 1936608440u, 0xC1092910u, 0x8BC95FC6u, 2105974004u, 323969391u, 779555213u, 0xB31B2BE1u, 0xAA90B472u, 1017501463u, 2098600890u, 0x9CAD9010u, 0xAF462BA2u, 0x9FE459D2u, 1171473753u, 0xD9F2DA13u, 0xDBC65487u, 0xF3E4F94Eu, 393037935u, 159126506u, 1662887367u, 1147106178u, 391545844u, 0xCDC66A97u, 1891500680u, 0xB3CDCF72u, 1851642611u, 546529401u, 1167818917u, 0xBE60E2DBu, 0xA9C23101u, 0xEBA5315Cu, 575554290u, 475796850u, 0xF6721B2Cu, 450035699u, 0x8C25404Eu, 844027695u, 1080539133u, 86184846u, 1554234488u, 0xDC0FD66Eu, 1972511363u, 2018339607u, 1491841390u, 1141460869u, 1061690759u, 0xFCFEAE7Bu, 2008416118u, 0x8C2302BFu, 0xAAF47556u, 1598468138u, 722020353u, 1027143159u, 212344630u, 1387219594u, 1725294528u, 0xDF3B0874u, 0x95055110u, 458938280u, 0xF61ED5ADu, 1828119673u, 544571780u, 0xD0CEFA65u, 0x88F7BE58u, 1241802790u, 267843827u, 0xA09C7F70u, 1397140384u, 1558801448u, 0xE176EDA3u, 1806446719u, 929573330u, 0x85360FA9u, 400817706u, 616011623u, 0xF5A96B20u, 0xD6CD2595u, 1761550015u, 1968522284u, 0xF19F06BEu, 0xF9E0659Au, 0xEEB9491Du, 872482584u, 0xBB30CAB8u, 0xE822FE15u, 0x88570983u, 1963876937u, 0xDA627E55u, 1584857000u, 0xB1534546u, 1833426440u, 0xEFE9E7D4u };
// S6
// file cast5.c line 277
static const uint32 S6[256]={ 0xF6FA8F9Du, 749497569u, 1285769319u, 0xE2337F7Cu, 0x95DB08E7u, 23610292u, 0xECED5CBCu, 844452780u, 0xBF9F0960u, 0xDFA1E2EDu, 0x83F0579Du, 1676510905u, 448177848u, 0xDE5EBE39u, 0xF38FF732u, 0x8989B138u, 871450977u, 0xC01937BDu, 0xF506C6DAu, 0xE4625E7Eu, 0xA308EA99u, 1310974780u, 2043402188u, 1218528103u, 0xA3149619u, 0xFEC94BD5u, 0xA114174Au, 0xEAA01866u, 0xA084DB2Du, 162023535u, 0xA888614Au, 687910808u, 23484817u, 0xE1992863u, 0xC8F30C60u, 779677500u, 0xD0D51932u, 0xCF0FEC14u, 0xF7CA07D2u, 0xD0A82072u, 0xFD41197Eu, 0x9305A6B0u, 0xE86BE3DAu, 1958663117u, 925738300u, 1283408968u, 0xDAB5D440u, 1840910019u, 137959847u, 0x9FBAEED9u, 1239142320u, 1315376211u, 1547541505u, 1690155329u, 739140458u, 0xBA7DD9CDu, 0xEA6F7388u, 0xE70BC762u, 905091803u, 1548541325u, 0xF0D48D8Cu, 0xB88153E2u, 144808038u, 451078856u, 676114313u, 0xAA928223u, 0x9334BE53u, 993665471u, 373509091u, 0x9AEA3906u, 0xEFE8C36Eu, 0xF890CDD9u, 0x80226DAEu, 0xC340A4A3u, 0xDF7E9C09u, 0xA694A807u, 1534877388u, 572371878u, 0x9A69A02Fu, 1753320020u, 0xCEB2296Fu, 1405125690u, 0xFE893655u, 633333386u, 0xB4628ABCu, 0xCF222EBFu, 632057672u, 0xA9A99387u, 1404951397u, 0xE76FFBE7u, 0xE967FD78u, 195638627u, 0x8E342BC1u, 0xE8A11BE9u, 1233155085u, 0xC8087DFCu, 0x8DE4BF99u, 0xA11101A0u, 2144565621u, 0xDA5A26C0u, 0xE81F994Fu, 0x9528CD89u, 0xFD339FEDu, 0xB87834BFu, 1594115437u, 572884632u, 0xC9C4C83Bu, 767645374u, 1331858858u, 1475698373u, 0xE2220ABEu, 0xD2916EBFu, 1321687957u, 619889600u, 1121017241u, 0xCD0D7FA0u, 2070816767u, 0xA8DC8AF0u, 1933951238u, 0xF41E232Fu, 890643334u, 0xE6EA8926u, 859025556u, 360630002u, 925594799u, 1764062180u, 0xE9A9D848u, 0xF3160289u, 979562269u, 0xA787E238u, 0xF3A5F676u, 1949714515u, 546639971u, 1165388173u, 0xB6FAD407u, 1495988560u, 922170659u, 1291546247u, 2107952832u, 1813327274u, 0xCB0396A8u, 0xC50DFE5Du, 0xFCD707ABu, 153207855u, 0x89DFF0BBu, 1608695416u, 1150242611u, 1967526857u, 721801357u, 1220138373u, 0xDC049441u, 0xC8098F9Bu, 2112743302u, 0xC39A3373u, 1111556101u, 1778980689u, 250857638u, 0x890072D6u, 673216130u, 0xA9A9F7BEu, 0xBF32679Du, 0xD45B5B75u, 0xB353FD00u, 0xCBB0E358u, 0x830F220Au, 529510932u, 0xD372CF08u, 0xCC3C4A13u, 0x8CF63166u, 102533054u, 0x88C98F88u, 1617093527u, 1204784762u, 0xB6C85283u, 1019391227u, 1069574518u, 1317995090u, 1691889997u, 0xDA3870E3u, 510022745u, 0xC10908F0u, 1362108837u, 1817929911u, 0x822F8AA0u, 805817662u, 1953603311u, 0xDC872681u, 120799444u, 2118332377u, 207536705u, 0x8809286Cu, 0xF592D891u, 145305846u, 0x957EF305u, 0xB7FBFFBDu, 0xC266E96Fu, 1877257368u, 0xB173ECC0u, 0xBC60B42Au, 0x953498DAu, 0xFBA1AE12u, 759945014u, 254147243u, 0xA4F3FCEBu, 0xE2969123u, 629083197u, 0x9348AF49u, 907280572u, 0xE8816F4Au, 940896768u, 0xA3F94043u, 0x9C7A54C2u, 0xBC704F57u, 0xDA41E7F9u, 0xC25AD33Au, 1425318020u, 0xB17F5505u, 1496677566u, 0xEDBD15C8u, 2140652971u, 0xBA5AC7B5u, 0xB6F6DEAFu, 977771578u, 1392695845u, 1698528874u, 1411812681u, 1369733098u, 1343739227u, 0xD7D25D88u, 1142123638u, 67414216u, 0xB8E5A121u, 0xB81A928Au, 1626167401u, 0x97C55B96u, 0xEAEC991Bu, 697522451u, 33404913u, 143560186u, 0x9AB6F6F5u, 994885535u, 1247667115u, 0xE6051D35u, 0xA0E1D855u, 0xD36B4CF1u, 0xF544EDEBu, 0xB0E93524u, 0xBEBB8FBDu, 0xA2D762CFu, 1237921620u, 951448369u, 1898488916u, 1211705605u, 0xA65B1DB8u, 0x851C97BDu, 0xD675CF2Fu };
// S7
// file cast5.c line 331
static const uint32 S7[256]={ 0x85E04019u, 858518887u, 1714274303u, 0xCFC65693u, 713916271u, 0xAB9BC912u, 0xDE6008A1u, 539548191u, 36158695u, 1298409750u, 419087104u, 1358007170u, 749914897u, 0xB232E75Cu, 1261868530u, 0xB28707DEu, 0xA05FBCF6u, 0xCD4181E9u, 0xE150210Cu, 0xE24EF1BDu, 0xB168C381u, 0xFDE4E789u, 1551479000u, 512490819u, 1296650241u, 951993153u, 0x913CEE1Du, 0x92A79C3Fu, 144139966u, 0xBAEEADF4u, 310820559u, 0xB6EACB19u, 643875328u, 1969602020u, 1680088954u, 0x8248DCA9u, 0xC3B3AD66u, 672358534u, 198762408u, 896343282u, 276269502u, 0xB3B2E9CEu, 84060815u, 197145886u, 376173866u, 0xEB12FF82u, 0xE3486911u, 0xD34D7516u, 1316698879u, 1598252827u, 0x9CF6E037u, 1233235075u, 859989710u, 0x8C9341B7u, 0xD0D854C0u, 0xCB3A6C88u, 1203513385u, 1193654839u, 0xA66AD22Bu, 2060853022u, 207403770u, 1144516871u, 0xB6E79962u, 1121114134u, 177607304u, 0xE1A5C06Eu, 326409831u, 1929119770u, 0xB1D139F7u, 0xF9583745u, 0xCF19DF58u, 0xBEC3F756u, 0xC06EBA30u, 119610148u, 1170376745u, 0xC95E317Fu, 0xBC8EC511u, 951863017u, 0xC6E6FA14u, 0xBAE8584Au, 0xAD4EBC46u, 1183797387u, 2015970143u, 0xF124183Bu, 0x821DBA9Fu, 0xAFF60FF4u, 0xEA2C4E6Du, 384012900u, 0x92544A8Bu, 10178499u, 0xABA68CEDu, 0x9AC96F78u, 111523738u, 0xB2856E6Eu, 451689641u, 0xBE838688u, 235406569u, 1441906262u, 0xE7E5363Bu, 0xB3A1F25Du, 0xF7DEBB85u, 1644036924u, 376726067u, 1006849064u, 0xDA6D0C74u, 2041234796u, 1021632941u, 1374734338u, 0x98F8F35Au, 371631263u, 0xEED82B29u, 490221539u, 206551450u, 0xBB325778u, 1053219195u, 1853335209u, 0xCB658B5Cu, 0xD45230C7u, 735133835u, 1623211703u, 0xB9068D78u, 0xA33754F4u, 0xF430C87Du, 0xC8A71302u, 0xB96D8C32u, 0xEBD4E7BEu, 0xBE8B9D2Du, 2038037254u, 0xE7225308u, 0x8B75CF77u, 300912036u, 0xE083C858u, 0x8D6B786Fu, 1516443558u, 0xFA5CF7A0u, 1574567987u, 0xF28EBFB0u, 0xF5B9C310u, 0xA0EAC280u, 146372218u, 0xA3D9D2B0u, 2043888151u, 35287437u, 0x9AC6336Au, 655490400u, 1132482787u, 110692520u, 1031794116u, 0x826D2BEFu, 1324057718u, 1217253157u, 919197030u, 686247489u, 0xC2610ACAu, 1028237775u, 0xBAE3B9DFu, 0xB65F8DE6u, 0x92AEAF64u, 986174950u, 0x9EA80509u, 0xF22B017Du, 0xA4173F70u, 0xDD1E16C3u, 367056889u, 1353824391u, 731860949u, 1650113154u, 1778481506u, 784341916u, 357075625u, 0xD716E740u, 1074092588u, 0x93D29A22u, 0xE32DBF9Au, 92751289u, 877911070u, 0xD699296Eu, 1231880047u, 480201094u, 0xDFE2ED07u, 0xB87242D1u, 434011822u, 87971354u, 363687820u, 1717726236u, 1901380172u, 0xEA082B2Au, 0x93EB2939u, 400339184u, 1490350766u, 0x9EA294FBu, 1389319756u, 0x9883FE66u, 784598401u, 1983468483u, 30828846u, 0xD3A0C108u, 0xA1E7160Eu, 0xE4F2DFA6u, 1765724805u, 1955612312u, 1277890269u, 1333098070u, 1564029816u, 0xA132234Fu, 1026694237u, 0xC3F5E194u, 1260819201u, 0xC79F022Fu, 1016692350u, 1582273796u, 1073413053u, 1995943182u, 694588404u, 1025494639u, 0xC61E45BEu, 0xD3B5AB34u, 0xF72BF9B7u, 453260480u, 1316140391u, 1435673405u, 0xB5229301u, 0xCFD2A87Fu, 1622062951u, 403978347u, 817677117u, 950059133u, 0xFD1606F2u, 0xC363519Bu, 1486738320u, 1417279718u, 481875527u, 0x97FD61A9u, 0xEA7759F4u, 760697757u, 1452955855u, 0xE84E63ADu, 1177426808u, 1702951038u, 0xF3817914u, 0x91DA55F4u, 1084371187u, 0xD1988F35u, 0xB6E318D2u, 1073369276u, 1027665953u, 0xC3C0BDAEu, 1230553676u, 1368340146u, 0x84B1D370u, 267243139u, 0x878DDADAu, 0xF2A279C7u, 0x94E01BE8u, 0x90716F4Bu, 0x954B8AA3u };
// S8
// file cast5.c line 385
static const uint32 S8[256]={ 0xE216300Du, 0xBBDDFFFCu, 0xA7EBDABDu, 895778965u, 2005530807u, 0xE6C1121Bu, 237245952u, 86829237u, 296341424u, 0xE5952F11u, 0xECE7990Au, 0x9386D174u, 709006108u, 1994621201u, 0xB12DEF3Au, 937287164u, 0xDE9ADEB1u, 168608556u, 0xBE197029u, 0x84A00940u, 0xBB243A0Fu, 0xB4D137CFu, 0xB44E79F0u, 77524477u, 185966941u, 1208824168u, 0x8BBBDE5Au, 1721625922u, 0xC7ECE831u, 1066374631u, 1927223579u, 1971335949u, 0x94074251u, 1551748602u, 0xABBE6D63u, 0xAA402164u, 0xB301D40Au, 48746954u, 1398218158u, 2050065058u, 313056748u, 0xFDAA335Du, 393167848u, 1912293076u, 940740642u, 0xCE949AD4u, 0xB84769ADu, 0x965BD862u, 0x82F3D055u, 1727764327u, 364383054u, 492521376u, 1291706479u, 0xC28EC4B8u, 1474851438u, 1685747964u, 0x99865D44u, 1619776915u, 1814040067u, 970743798u, 1561002147u, 0xAE63AFF2u, 2123093554u, 1880132620u, 0xBBD35049u, 697884420u, 0x980CF42Au, 0x9B6DF491u, 0x9E7EDD53u, 110200136u, 1489731079u, 997519150u, 1378877361u, 0xD24708CCu, 478029773u, 0xA4EB215Bu, 1022481122u, 431258168u, 1112503832u, 897933369u, 0x9D17DEE7u, 669726182u, 0xC9AFF67Bu, 918222264u, 163866573u, 0xC18910B1u, 0xE11DBF7Bu, 114105080u, 1903216136u, 761148244u, 0xD4DE495Au, 1690750982u, 0xBCC0C62Cu, 1037045171u, 1888456500u, 2010454850u, 642736655u, 616092351u, 365016990u, 1185228132u, 0xF8D7E54Eu, 1043824992u, 2023083429u, 0x859C15A5u, 0xE6459788u, 0xC37BC75Fu, 0xDB07BA0Cu, 108438443u, 2132974366u, 830746235u, 606445527u, 0xF8BEF472u, 0x835FFCB8u, 1844756978u, 0x96F5B195u, 0xFD0AF0FCu, 0xB0FE134Cu, 0xE2506D3Du, 1335562986u, 0xF215F225u, 0xA223736Fu, 0x9FB4C428u, 634407289u, 885462008u, 0xC4618187u, 0xEA7A6E98u, 2094100220u, 339117932u, 0xF1544107u, 0xBEDEEE14u, 1458155303u, 0xA04AA441u, 1022871705u, 0x92ECBAE6u, 0xDD67016Du, 353796843u, 0xA842EEDFu, 0xFDBA60B4u, 0xF1907B75u, 551748367u, 618185374u, 0xE139673Bu, 0xEFA63FB8u, 1904685140u, 0xB6F2CF3Bu, 0x9F326442u, 0xCB15A4CCu, 0xB01A4504u, 0xF1E47D8Du, 0x844A1BE5u, 0xBAE7DFDCu, 1120655984u, 0xCD7DAE0Au, 1474845562u, 0xD53F5AF6u, 550456716u, 0xCEA4D428u, 2043752612u, 881257467u, 869518812u, 2005220179u, 938474677u, 0xC5068778u, 0xE580B3E6u, 1315485940u, 0xC5C8B37Eu, 226533026u, 965733244u, 321539988u, 1136104718u, 804158748u, 573969341u, 0xDD06CAA2u, 937399083u, 0xC4248289u, 0xACF3EBC3u, 1461057207u, 0xEF3478DDu, 0xF267616Fu, 0xC148CBE4u, 0x9052815Eu, 1581322155u, 0xB48A2465u, 786071460u, 0xE87B40E4u, 0xE98EA084u, 1485433313u, 0xEFD390FCu, 0xDD07D35Bu, 0xDB485694u, 953673138u, 1467089153u, 1930354364u, 1533292819u, 0x94917E4Fu, 1346121658u, 1685000834u, 1965281866u, 0xE0779695u, 0xF9C17A8Fu, 2052792609u, 0xD187B896u, 690371149u, 0xBA510CDFu, 0x81F47C9Fu, 0xAD1163EDu, 0xEA7B5965u, 436236910u, 289419410u, 14314871u, 1242357089u, 0xAD1F4603u, 1616633776u, 0x9EEDC364u, 585885352u, 0xCEE7D28Au, 0xA0E736A0u, 1432659641u, 277164553u, 0xC7EB8F37u, 770115018u, 0x8951570Fu, 0xDF09822Bu, 0xBD691A6Cu, 0xAA12E4F2u, 0x87451C0Fu, 0xE0F6A27Au, 987383833u, 1290892879u, 225909803u, 1741533526u, 890078084u, 1496906255u, 1111072499u, 916028167u, 243534141u, 1252605537u, 0x8360D87Bu, 531204876u, 290011180u, 0xE97625A5u, 102027703u, 237315147u, 209093447u, 1486785922u, 220223953u, 0xA466BB1Eu, 0xF8DA0A82u, 82940208u, 0xBA6E4EC0u, 0x99265164u, 518464269u, 1353887104u, 0xEAEE6801u, 0x8DB2A283u, 0xEA8BF59Eu };
// __builtin___memcpy_chk__return_value
// 

// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// castfunc__return_value
// 
static uint32 castfunc__return_value;
// in_pub
// file block_template.c line 55
unsigned char in_pub[8];
// key
// file block_template.c line 54
unsigned char key[16];
// main__return_value
// 
static signed int main__return_value;
// memcpy__return_value
// 
static void *memcpy__return_value;
// out
// file block_template.c line 56
unsigned char out[8];
// read__return_value
// 
static ssize_t read__return_value;
// st
// file block_template.c line 53
block_state st;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file block_template.c line 58
signed int main(int argc, char** argv)
{
  block_state *block_finalize_self;
  signed short int castfunc_Id;
  signed short int castfunc_Ic;
  signed short int castfunc_Ib;
  signed short int castfunc_Ia;
  uint32 castfunc_f;
  uint32 castfunc_I;
  signed int castfunc_type;
  uint8 castfunc_Kri;
  uint32 castfunc_Kmi;
  uint32 castfunc_D;
  signed short int castcrypt_round;
  signed short int castcrypt_functype;
  uint8 castcrypt_Kri;
  uint32 castcrypt_Kmi;
  uint32 castcrypt_f;
  uint32 castcrypt_tmp;
  uint32 castcrypt_R;
  uint32 castcrypt_L;
  signed int castcrypt_decrypt;
  uint8 *castcrypt_block;
  block_state *castcrypt_key;
  unsigned char *block_encrypt_out;
  unsigned char *block_encrypt_in;
  block_state *block_encrypt_self;
  uint32 schedulekeys_half_z[4];
  uint32 schedulekeys_half_x[4];
  uint32 *schedulekeys_half_keys;
  uint32 *schedulekeys_half_in;
  signed int castschedulekeys_i;
  uint32 castschedulekeys_Kr_wide[16];
  uint8 castschedulekeys_paddedkey[16];
  uint32 castschedulekeys_x[4];
  signed int castschedulekeys_keybytes;
  uint8 *castschedulekeys_key;
  block_state *castschedulekeys_schedule;
  signed int block_init_keylength;
  unsigned char *block_init_key;
  block_state *block_init_self;
  read(0, (void *)key, 16ul);
  /* begin function block_init */
  ;
  block_init_self = &st;
  block_init_key = key;
  block_init_keylength = 16;
  if(!(block_init_keylength >= 5) || block_init_keylength >= 17)
  {
    (void)sizeof(signed int) /*4u*/ ;
    /* assertion 0 */
    
  }

  else
  {
    /* begin function castschedulekeys */
    ;
    castschedulekeys_schedule = block_init_self;
    castschedulekeys_key = block_init_key;
    castschedulekeys_keybytes = block_init_keylength;
    castschedulekeys_i = 0;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_paddedkey[castschedulekeys_i] = castschedulekeys_key[castschedulekeys_i];
    castschedulekeys_i = castschedulekeys_i + 1;
    if(!(castschedulekeys_keybytes >= 11))
      castschedulekeys_schedule->rounds = 12;

    else
      castschedulekeys_schedule->rounds = 16;
    castschedulekeys_x[0] = (uint32)((((signed int)castschedulekeys_paddedkey[0] << 8 | (signed int)castschedulekeys_paddedkey[0 + 1]) << 8 | (signed int)castschedulekeys_paddedkey[0 + 2]) << 8 | (signed int)castschedulekeys_paddedkey[0 + 3]);
    castschedulekeys_x[1] = (uint32)((((signed int)castschedulekeys_paddedkey[4] << 8 | (signed int)castschedulekeys_paddedkey[4 + 1]) << 8 | (signed int)castschedulekeys_paddedkey[4 + 2]) << 8 | (signed int)castschedulekeys_paddedkey[4 + 3]);
    castschedulekeys_x[2] = (uint32)((((signed int)castschedulekeys_paddedkey[8] << 8 | (signed int)castschedulekeys_paddedkey[8 + 1]) << 8 | (signed int)castschedulekeys_paddedkey[8 + 2]) << 8 | (signed int)castschedulekeys_paddedkey[8 + 3]);
    castschedulekeys_x[3] = (uint32)((((signed int)castschedulekeys_paddedkey[12] << 8 | (signed int)castschedulekeys_paddedkey[12 + 1]) << 8 | (signed int)castschedulekeys_paddedkey[12 + 2]) << 8 | (signed int)castschedulekeys_paddedkey[12 + 3]);
    /* begin function schedulekeys_half */
    ;
    schedulekeys_half_in = castschedulekeys_x;
    schedulekeys_half_keys = castschedulekeys_schedule->Km;
    schedulekeys_half_x[0] = schedulekeys_half_in[0];
    schedulekeys_half_x[1] = schedulekeys_half_in[1];
    schedulekeys_half_x[2] = schedulekeys_half_in[2];
    schedulekeys_half_x[3] = schedulekeys_half_in[3];
    schedulekeys_half_z[0] = schedulekeys_half_x[0] ^ S5[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_z[1] = schedulekeys_half_x[2] ^ S5[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)];
    schedulekeys_half_z[2] = schedulekeys_half_x[3] ^ S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_z[3] = schedulekeys_half_x[1] ^ S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 0] = S5[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 1] = S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 2] = S5[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 3] = S5[(signed int)(schedulekeys_half_z[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)];
    schedulekeys_half_x[0] = schedulekeys_half_z[2] ^ S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)];
    schedulekeys_half_x[1] = schedulekeys_half_z[0] ^ S5[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_x[2] = schedulekeys_half_z[1] ^ S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)];
    schedulekeys_half_x[3] = schedulekeys_half_z[3] ^ S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 0] = S5[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 1] = S5[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 2] = S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 3] = S5[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)];
    schedulekeys_half_z[0] = schedulekeys_half_x[0] ^ S5[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_z[1] = schedulekeys_half_x[2] ^ S5[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)];
    schedulekeys_half_z[2] = schedulekeys_half_x[3] ^ S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_z[3] = schedulekeys_half_x[1] ^ S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 0] = S5[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 1] = S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 2] = S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 3] = S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)];
    schedulekeys_half_x[0] = schedulekeys_half_z[2] ^ S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)];
    schedulekeys_half_x[1] = schedulekeys_half_z[0] ^ S5[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_x[2] = schedulekeys_half_z[1] ^ S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)];
    schedulekeys_half_x[3] = schedulekeys_half_z[3] ^ S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 0] = S5[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 1] = S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 2] = S5[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 3] = S5[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)];
    schedulekeys_half_in[0] = schedulekeys_half_x[0];
    schedulekeys_half_in[1] = schedulekeys_half_x[1];
    schedulekeys_half_in[2] = schedulekeys_half_x[2];
    schedulekeys_half_in[3] = schedulekeys_half_x[3];
    /* end function schedulekeys_half */
    ;
    /* begin function schedulekeys_half */
    ;
    schedulekeys_half_in = castschedulekeys_x;
    schedulekeys_half_keys = castschedulekeys_Kr_wide;
    schedulekeys_half_x[0] = schedulekeys_half_in[0];
    schedulekeys_half_x[1] = schedulekeys_half_in[1];
    schedulekeys_half_x[2] = schedulekeys_half_in[2];
    schedulekeys_half_x[3] = schedulekeys_half_in[3];
    schedulekeys_half_z[0] = schedulekeys_half_x[0] ^ S5[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_z[1] = schedulekeys_half_x[2] ^ S5[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)];
    schedulekeys_half_z[2] = schedulekeys_half_x[3] ^ S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_z[3] = schedulekeys_half_x[1] ^ S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 0] = S5[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 1] = S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 2] = S5[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_keys[0 + 3] = S5[(signed int)(schedulekeys_half_z[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)];
    schedulekeys_half_x[0] = schedulekeys_half_z[2] ^ S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)];
    schedulekeys_half_x[1] = schedulekeys_half_z[0] ^ S5[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_x[2] = schedulekeys_half_z[1] ^ S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)];
    schedulekeys_half_x[3] = schedulekeys_half_z[3] ^ S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 0] = S5[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 1] = S5[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 2] = S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[4 + 3] = S5[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)];
    schedulekeys_half_z[0] = schedulekeys_half_x[0] ^ S5[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_z[1] = schedulekeys_half_x[2] ^ S5[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)];
    schedulekeys_half_z[2] = schedulekeys_half_x[3] ^ S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_z[3] = schedulekeys_half_x[1] ^ S5[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 0] = S5[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 1] = S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[12 / 4] >> 24 - (12 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 2] = S5[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_keys[8 + 3] = S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)];
    schedulekeys_half_x[0] = schedulekeys_half_z[2] ^ S5[(signed int)(schedulekeys_half_z[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_z[0 / 4] >> 24 - (0 & 3) * 8 & 255u)];
    schedulekeys_half_x[1] = schedulekeys_half_z[0] ^ S5[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_z[2 / 4] >> 24 - (2 & 3) * 8 & 255u)];
    schedulekeys_half_x[2] = schedulekeys_half_z[1] ^ S5[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_z[1 / 4] >> 24 - (1 & 3) * 8 & 255u)];
    schedulekeys_half_x[3] = schedulekeys_half_z[3] ^ S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_z[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 0] = S5[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[9 / 4] >> 24 - (9 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[6 / 4] >> 24 - (6 & 3) * 8 & 255u)] ^ S5[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 1] = S5[(signed int)(schedulekeys_half_x[10 / 4] >> 24 - (10 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[11 / 4] >> 24 - (11 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[5 / 4] >> 24 - (5 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[4 / 4] >> 24 - (4 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[7 / 4] >> 24 - (7 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 2] = S5[(signed int)(schedulekeys_half_x[12 / 4] >> 24 - (12 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[3 / 4] >> 24 - (3 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[2 / 4] >> 24 - (2 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[8 / 4] >> 24 - (8 & 3) * 8 & 255u)];
    schedulekeys_half_keys[12 + 3] = S5[(signed int)(schedulekeys_half_x[14 / 4] >> 24 - (14 & 3) * 8 & 255u)] ^ S6[(signed int)(schedulekeys_half_x[15 / 4] >> 24 - (15 & 3) * 8 & 255u)] ^ S7[(signed int)(schedulekeys_half_x[1 / 4] >> 24 - (1 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[0 / 4] >> 24 - (0 & 3) * 8 & 255u)] ^ S8[(signed int)(schedulekeys_half_x[13 / 4] >> 24 - (13 & 3) * 8 & 255u)];
    schedulekeys_half_in[0] = schedulekeys_half_x[0];
    schedulekeys_half_in[1] = schedulekeys_half_x[1];
    schedulekeys_half_in[2] = schedulekeys_half_x[2];
    schedulekeys_half_in[3] = schedulekeys_half_x[3];
    /* end function schedulekeys_half */
    ;
    castschedulekeys_i = 0;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    castschedulekeys_schedule->Kr[castschedulekeys_i] = (uint8)(castschedulekeys_Kr_wide[castschedulekeys_i] & 31u);
    castschedulekeys_i = castschedulekeys_i + 1;
    /* end function castschedulekeys */
    ;
  }
  /* end function block_init */
  ;
  /* begin function block_encrypt */
  ;
  block_encrypt_self = &st;
  block_encrypt_in = in_pub;
  block_encrypt_out = out;
  memcpy((void *)block_encrypt_out, (const void *)block_encrypt_in, 8ul);
  /* begin function castcrypt */
  ;
  castcrypt_key = block_encrypt_self;
  castcrypt_block = block_encrypt_out;
  castcrypt_decrypt = 0;
  castcrypt_L = (uint32)((((signed int)castcrypt_block[0] << 8 | (signed int)castcrypt_block[0 + 1]) << 8 | (signed int)castcrypt_block[0 + 2]) << 8 | (signed int)castcrypt_block[0 + 3]);
  castcrypt_R = (uint32)((((signed int)castcrypt_block[4] << 8 | (signed int)castcrypt_block[4 + 1]) << 8 | (signed int)castcrypt_block[4 + 2]) << 8 | (signed int)castcrypt_block[4 + 3]);
  castcrypt_round = 0;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  if(castcrypt_decrypt == 0)
  {
    castcrypt_Kmi = castcrypt_key->Km[(signed int)castcrypt_round];
    castcrypt_Kri = castcrypt_key->Kr[(signed int)castcrypt_round];
    castcrypt_functype = (signed short int)((signed int)castcrypt_round % 3);
  }

  else
  {
    castcrypt_Kmi = castcrypt_key->Km[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_Kri = castcrypt_key->Kr[(castcrypt_key->rounds - (signed int)castcrypt_round) - 1];
    castcrypt_functype = (signed short int)(((castcrypt_key->rounds - (signed int)castcrypt_round) - 1) % 3);
  }
  /* begin function castfunc */
  ;
  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int)castcrypt_functype;
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_I = castfunc_Kmi + castfunc_D;
      break;
    }
    case 1:
    {
      castfunc_I = castfunc_Kmi ^ castfunc_D;
      break;
    }
    case 2:

    default:
      castfunc_I = castfunc_Kmi - castfunc_D;
  }
  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = castfunc_I << (signed int)castfunc_Kri | castfunc_I >> 32 - (signed int)castfunc_Kri;
  castfunc_Ia = (signed short int)(castfunc_I >> 24 & 255u);
  castfunc_Ib = (signed short int)(castfunc_I >> 16 & 255u);
  castfunc_Ic = (signed short int)(castfunc_I >> 8 & 255u);
  castfunc_Id = (signed short int)(castfunc_I & 255u);
  switch(castfunc_type)
  {
    case 0:
    {
      castfunc_f = ((S1[(signed int)castfunc_Ia] ^ S2[(signed int)castfunc_Ib]) - S3[(signed int)castfunc_Ic]) + S4[(signed int)castfunc_Id];
      break;
    }
    case 1:
    {
      castfunc_f = (S1[(signed int)castfunc_Ia] - S2[(signed int)castfunc_Ib]) + S3[(signed int)castfunc_Ic] ^ S4[(signed int)castfunc_Id];
      break;
    }
    case 2:

    default:
      castfunc_f = (S1[(signed int)castfunc_Ia] + S2[(signed int)castfunc_Ib] ^ S3[(signed int)castfunc_Ic]) - S4[(signed int)castfunc_Id];
  }
  castcrypt_f = castfunc_f;
  /* end function castfunc */
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  castcrypt_block[0] = (uint8)((castcrypt_R & 0xFF000000u) >> 24);
  castcrypt_block[1] = (uint8)((castcrypt_R & 16711680u) >> 16);
  castcrypt_block[2] = (uint8)((castcrypt_R & 65280u) >> 8);
  castcrypt_block[3] = (uint8)(castcrypt_R & 255u);
  castcrypt_block[4] = (uint8)((castcrypt_L & 0xFF000000u) >> 24);
  castcrypt_block[5] = (uint8)((castcrypt_L & 16711680u) >> 16);
  castcrypt_block[6] = (uint8)((castcrypt_L & 65280u) >> 8);
  castcrypt_block[7] = (uint8)(castcrypt_L & 255u);
  /* end function castcrypt */
  ;
  /* end function block_encrypt */
  ;
  /* begin function block_finalize */
  ;
  block_finalize_self = &st;
  /* end function block_finalize */
  ;
  write(1, (const void *)out, 8ul);
  main__return_value = 0;
}

// memcpy
// file /usr/include/x86_64-linux-gnu/bits/string_fortified.h line 26

