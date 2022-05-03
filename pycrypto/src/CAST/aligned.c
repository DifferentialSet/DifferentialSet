#include <unistd.h>
struct anonymous;
struct __CPROVER_pipet;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef struct anonymous block_state;
typedef unsigned int size_t;
typedef signed int ssize_t;
typedef unsigned int uint32;
typedef unsigned char uint8;
inline static __uint16_t __bswap_16(__uint16_t __bsx);
inline static __uint32_t __bswap_32(__uint32_t __bsx);
inline static __uint64_t __bswap_64(__uint64_t __bsx);
inline static __uint16_t __uint16_identity(__uint16_t __x);
inline static __uint32_t __uint32_identity(__uint32_t __x);
inline static __uint64_t __uint64_identity(__uint64_t __x);
static void block_encrypt(block_state *self, unsigned char *in, unsigned char *out);
static void block_finalize(block_state *self);
static void block_init(block_state *self, unsigned char *key, signed int keylength);
void branch_id(char *str);
static void castcrypt(block_state *key, uint8 *block, signed int decrypt);
static uint32 castfunc(uint32 D, uint32 Kmi, uint8 Kri, signed int type);
static void castschedulekeys(block_state *schedule, uint8 *key, signed int keybytes);
extern void *memcpy(void *dst, const void *src, size_t n);
static void schedulekeys_half(uint32 *in, uint32 *keys);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
unsigned char uint8_t_secure_load(unsigned char *, void **, unsigned int, unsigned int);
void uint8_t_secure_store(unsigned char, unsigned char *, void **, unsigned int, unsigned int);
struct anonymous
{
  uint32 Km[16];
  uint8 Kr[16];
  signed int rounds;
};
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
static const uint32 S1[256] = {821772500u, 0x9FA0FF0Bu, 1810681135u, 1059425402u, 505495343u, 0x9C004DD3u, 1610868032u, 0xCF9FC949u, 0xBFD4AF27u, 0x88BBBDB5u, 0xE2034090u, 0x98D09675u, 1852023008u, 365126098u, 0xC2E7661Du, 584384398u, 677919599u, 0xC07FD059u, 0xFF2379C8u, 2002735330u, 1136869587u, 0xDF2F8656u, 0x887CA41Au, 0xA2D2BD2Du, 0xA1C9E0D6u, 879511577u, 1639411079u, 575934255u, 717107937u, 0xAA54166Bu, 576097850u, 0xA2D341D0u, 1725645000u, 0xA784392Fu, 5111599u, 767152862u, 0x97943FACu, 1251459544u, 1383482551u, 0xB5F437A7u, 0xB82CBAEFu, 0xD751D159u, 1878520045u, 1510570527u, 0x827B68D0u, 0x90ECF52Eu, 582008916u, 0xBC8E5935u, 1265446783u, 1354458274u, 0xD2664910u, 0xBEE5812Du, 0xB7332290u, 0xE93B159Fu, 0xB48EE411u, 1275016285u, 0xFD45C240u, 0xAD31973Fu, 0xC4F6D02Eu, 1442611557u, 0xD5B1CAADu, 0xA1AC2DAEu, 0xA2D4B76Du, 0xC19B0C50u, 0x882240F2u, 208555832u, 0xA4E4BFD7u, 1331405426u, 1447828783u, 0xC59C5319u, 0xB949E354u, 0xB04669FEu, 0xB1B6AB8Au, 0xC71358DDu, 1669711173u, 286233437u, 1465092821u, 1782121619u, 0xE63D37E0u, 710211251u, 980974943u, 1651941557u, 430374111u, 2051154026u, 704238805u, 0xF61B1891u, 0xBB72275Eu, 0xAA508167u, 948965521u, 0xC6B505EBu, 0x84C7CB8Cu, 718756367u, 0x874A1427u, 0xA2D1936Bu, 718440111u, 0xAA56D291u, 0xD7894360u, 1113355533u, 0x93B39E26u, 410092745u, 1811985197u, 1944238868u, 0xA0BEBC3Cu, 1415722873u, 1682284203u, 1060277122u, 1998114690u, 1503841958u, 82706478u, 0x89FE78E6u, 1068173648u, 845149890u, 0x81383F05u, 1768146376u, 1993038550u, 0xD49974C9u, 0xCA180DCFu, 940016341u, 0xC7FA5CF6u, 0x8AC31511u, 904371731u, 1205506512u, 0xF40F9086u, 0xA7E2419Eu, 825647681u, 85914773u, 0xAA573B04u, 1249926541u, 1417871568u, 3287612u, 0xBF64CDDFu, 0xBA57A68Eu, 1975924523u, 1353700161u, 0xA7C13275u, 0x915A0BF5u, 1800716203u, 722146342u, 0xAB4CC9D7u, 1151126914u, 0xF7FBF265u, 0xAB85C5F3u, 458611604u, 0xAAD4E324u, 0xCFA4BD3Fu, 770352098u, 0x9E204D02u, 0xC8BD25ACu, 0xEADF55B3u, 0xD5BD9E98u, 0xE31231B2u, 718646636u, 0x954329DEu, 0xADBE4528u, 0xD8710F69u, 0xAA51C90Fu, 0xAA786BF6u, 575749918u, 0xAA51A79Bu, 718488780u, 2069512688u, 0xD37CFBADu, 453416197u, 1106044049u, 0xB4C332E6u, 52586708u, 0xC9600ACCu, 0xCE387E6Du, 0xBF6BB16Cu, 1785789304u, 218356169u, 0xD4DF39DEu, 0xE01063DAu, 1194783844u, 1523787992u, 0xB347CC96u, 1975193539u, 0x98511BFBu, 1341901877u, 0xB58BCF6Au, 0xE11F0ABCu, 0xBFC5FE4Au, 0xA70AEC10u, 0xAC39570Au, 1057244207u, 1636348243u, 0xE0397A2Eu, 1462225785u, 0x9CEB418Fu, 481089165u, 718503062u, 24497053u, 0xC69DFF09u, 0xC75B65F0u, 0xD9DB40D8u, 0xEC0E7779u, 1195698900u, 0xB11C3274u, 0xDD24CB9Eu, 2115785917u, 0xF01144F9u, 0xD2240EB1u, 0x9675B3FDu, 0xA3AC3755u, 0xD47C27AFu, 1372086093u, 1452307862u, 0xA5BB15E6u, 1476592880u, 0xCA042CF1u, 18495466u, 0x8DBFAADBu, 901398090u, 891748256u, 0xC37B4D09u, 0xBC306ED9u, 0x98A52666u, 1447622437u, 0xFF5E569Du, 216884176u, 2086908623u, 1879786977u, 0xD5EA50F1u, 0x85A92872u, 0xAF1FBDA7u, 0xD4234870u, 0xA7870BF3u, 758861177u, 1121993112u, 215018983u, 642190776u, 0xF881814Cu, 1196255959u, 2081185372u, 0xD1231959u, 941322904u, 0xF5D2F4DBu, 0xAB838653u, 1848581667u, 0x83719C9Eu, 0xBD91E046u, 0x9A56456Eu, 0xDC39200Cu, 550028657u, 0x962BDA1Cu, 0xE1E696FFu, 0xB141AB08u, 2093648313u, 443148163u, 46942275u, 0xA2F7C579u, 1117713533u, 1115362972u, 1523183689u, 0xDD8F0F00u, 1551984063u};
static const uint32 S2[256] = {522195092u, 0xEF0BA75Bu, 1776537470u, 960447360u, 0xFE61CF7Au, 0xEEC5207Au, 1435016340u, 1929119313u, 0xADA7EF79u, 1310552629u, 0xD55A63CEu, 0xDE0436BAu, 0x99C430EFu, 1594623892u, 417127293u, 0xA1D6EFF3u, 0xA0B52F7Bu, 1508390405u, 0xEE15B094u, 0xE9FFD909u, 0xDC440086u, 0xEF944459u, 0xBA83CCB3u, 0xE0C3CDFBu, 0xD1DA4181u, 990456497u, 0xF997F1C1u, 0xA5E6CF7Bu, 21106139u, 0xE4E7EF5Bu, 631373633u, 0xE180F806u, 532942976u, 396095098u, 0xD37AC6A9u, 0xFE5830A4u, 0x98DE8B7Fu, 2011709262u, 2039648873u, 620404603u, 0xE113C85Bu, 0xACC40083u, 0xD7503525u, 0xF7EA615Fu, 1645490516u, 223693667u, 1567101217u, 0xC866C359u, 1029951347u, 0xCEE234C0u, 0xD4D87E87u, 1550265121u, 119497089u, 972513919u, 907948164u, 0xE4EB573Bu, 1613718692u, 0xD63ACD9Cu, 465323573u, 0x9E81032Du, 654439692u, 0x99847AB4u, 0xA0E3DF79u, 0xBA6CF38Cu, 277098644u, 624404830u, 0xF46F6FFEu, 0xA1FF3B1Fu, 546110314u, 0x8F458C74u, 0xD9E0A227u, 1321679412u, 0xFC884F69u, 1045293279u, 0xEF0E0088u, 895050893u, 0x8A45388Cu, 494945126u, 1914543101u, 0xA58684BBu, 0xE8256333u, 0x844E8212u, 311263384u, 0xFED33FB4u, 0xCE280AE1u, 669096869u, 0xD5A6C252u, 0xE49754BDu, 0xC5D655DDu, 0xEB667064u, 2005142349u, 0xA1B6A801u, 0x84DB26A9u, 0xE0B56714u, 569394103u, 0xE5D05860u, 1425027204u, 108000370u, 0xA31AA153u, 0xDADC4755u, 0xB5625DBFu, 1750473702u, 0x83CA6B94u, 762237499u, 0xECCF01DBu, 0xA6D3D0BAu, 0xB6803D5Cu, 0xAF77A709u, 867476300u, 964413654u, 1591880597u, 1594774276u, 0x81ED6F61u, 552026980u, 0xB45E1378u, 0xDE18639Bu, 0x881CA122u, 0xB96726D1u, 0x8049A7E8u, 582474363u, 1582640421u, 1383256631u, 2043843868u, 0xC60D894Cu, 1217180674u, 463797851u, 0xA4B09F6Bu, 480777679u, 0xA20C3005u, 0x8871DF63u, 0xB9DE2FCBu, 214354409u, 200212307u, 0xE3214517u, 0xB4542835u, 0x9F63293Cu, 0xEE41E729u, 1847405948u, 1342460550u, 510035443u, 0xF33401C6u, 815934613u, 833030224u, 1620250387u, 1945732119u, 0xA1269859u, 0xEC645C44u, 1388869545u, 0xCDFF33A6u, 0xA02B1741u, 2092620194u, 562037615u, 1356438536u, 0xCB3F4861u, 0xC26BD765u, 1688467115u, 0x80342676u, 631725691u, 0xE4E6D1FCu, 549916902u, 0xCDF0B680u, 394546491u, 837744717u, 2114462948u, 751520235u, 0x846A3BAEu, 0x8FF77888u, 0xEE5D60F6u, 2063029875u, 803036379u, 0xA11631C1u, 821456707u, 0xB3FAEC54u, 360699898u, 0xEF8579CCu, 0xD152DE58u, 0xDB2FFD5Eu, 0x8F32CE19u, 812317050u, 49299192u, 0x99319AD5u, 0xC242FA0Fu, 0xA7E3EBB0u, 0xC68E4906u, 0xB8DA230Cu, 0x80823028u, 0xDCDEF3C8u, 0xD35FB171u, 143268808u, 0xBEC0C560u, 1638124008u, 0xBCA8F54Du, 0xC72FEFFAu, 578956953u, 0x82C570B4u, 0xD8D94E89u, 0x8B1C34BCu, 807278310u, 658237817u, 0xB0FFEAA6u, 1641658566u, 11683945u, 0xB7FFCE3Fu, 148645947u, 1138423386u, 0xF7E19798u, 1981396783u, 0x8F1C9BA4u, 0xDC8637A0u, 380097457u, 0x9FC393B7u, 0xA7136EEBu, 0xC6BCC63Eu, 441530178u, 0xEF6828BCu, 1375954390u, 761952171u, 891809099u, 0x821FD216u, 157052462u, 0xDB92F2FBu, 1592404427u, 341349109u, 0x91584F7Fu, 1417898363u, 644327628u, 0x85196048u, 0x8C4BACEAu, 0x833860D4u, 220455161u, 1815641738u, 182899273u, 0xB284600Cu, 0xD835731Du, 0xDCB1C647u, 0xAC4C56EAu, 1052606899u, 588164016u, 1681439879u, 0xF0B5B1FAu, 0x8F5EA2B3u, 0xFC184642u, 167996282u, 1336969661u, 1688053129u, 0xA345415Eu, 1543734051u, 1046297529u, 1138201970u, 2121126012u, 115334942u, 1819067631u, 1902159161u, 1941945968u, 0x83877605u, 1159982321u};
static const uint32 S3[256] = {0x8DEFC240u, 637164959u, 0xEB903DBFu, 0xE810C907u, 1197506559u, 916448331u, 0x8C1FC644u, 0xAECECA90u, 0xBEB1F9BFu, 0xEEFBCAEAu, 0xE8CF1950u, 1373570990u, 0x920E8806u, 0xF0AD0548u, 0xE13C8D83u, 0x927010D5u, 286293407u, 124026297u, 0xB2E3E4D4u, 1028597854u, 0xB9AFA820u, 0xFADE82E0u, 0xA067268Bu, 0x8272792Eu, 1430237888u, 1218109995u, 0xD4EF9794u, 308166588u, 570424558u, 0x825B1BFDu, 0x9255C5EDu, 307733056u, 1310360322u, 0xBAE07FFFu, 1384269543u, 0x8E57140Eu, 863238079u, 0x8C9F8188u, 0xA6FC4EE8u, 0xC982B5A5u, 0xA8C01DB7u, 1470087780u, 1728663345u, 0xF2BD3F5Fu, 1090516929u, 532123132u, 0x8E6BD2C1u, 1132193179u, 0x99B03DBFu, 0xB5DBC64Bu, 1670234342u, 1434557849u, 0xA197C81Cu, 1241591150u, 0xC5884A28u, 0xCCC36F71u, 0xB843C213u, 1812415473u, 0x8309893Cu, 267246943u, 796911696u, 0xD7C07F7Eu, 38830015u, 1526438404u, 0xA747D2D0u, 374413614u, 0xAF70BF3Eu, 1489179520u, 1603809326u, 1920779204u, 168801282u, 260042626u, 0x8C96FDADu, 1563175598u, 0x8EE99A49u, 1356499128u, 0x8427F4A0u, 514611088u, 2037363785u, 0x8252DC15u, 0xEFBD7D9Bu, 0xA672597Du, 0xADA840D8u, 1173701892u, 0xFA5D7403u, 0xE83EC305u, 1334932762u, 0x925669C2u, 602925377u, 0xA903F12Eu, 1613172210u, 41346230u, 0x94FD6574u, 0x927985B2u, 0x8276DBCBu, 41386358u, 0xF8AF918Du, 1313404830u, 0x8F616DDFu, 0xE29D840Eu, 0x842F7D83u, 873260488u, 0x96BBB682u, 0x93B4B148u, 0xEF303CABu, 0x984FAF28u, 2006953883u, 0x92DC560Du, 575479328u, 0x8437AA88u, 2099895446u, 660001756u, 0x8B907CEEu, 0xB51FD240u, 0xE7C07CE3u, 0xE566B4A1u, 0xC3E9615Eu, 1022894237u, 1620365795u, 0xCD9CA341u, 1551255054u, 15374395u, 0xD4D67881u, 0xFD47572Cu, 0xF76CEDD9u, 0xBDA8229Cu, 310226346u, 1133119310u, 530038928u, 136043402u, 0x93A07EBEu, 0xB938CA15u, 0x97B03CFFu, 1036173560u, 0x8D1AB2ECu, 1681395281u, 1758231547u, 0xD90F2788u, 306774401u, 1575354324u, 0xDD7EF86Au, 1990386196u, 0xB9A40368u, 0x925D958Fu, 1262092282u, 0xBA39AEE9u, 0xA4FFD30Bu, 0xFAF7933Bu, 1833535011u, 423410938u, 660763973u, 0x825CF47Au, 1639812000u, 0xD11E42D1u, 0xCEAD04F4u, 310289298u, 272797111u, 0x8272A972u, 0x9270C4A8u, 310240523u, 677093832u, 1013118031u, 901835429u, 0xE805D231u, 1116285435u, 0xB4FCDF82u, 1337354835u, 243122523u, 520626091u, 277223598u, 0xFCFD086Du, 0xF9FF2889u, 1766575121u, 594173102u, 316590669u, 742362309u, 0xD2D02DFEu, 0xF8EF5896u, 0xE4CF52DAu, 0x95155B67u, 1229605004u, 0xB9B6A80Cu, 1552908988u, 0x89D36B45u, 979407927u, 0xEC00C9A9u, 1148277331u, 176638793u, 0xD773BC40u, 2083809052u, 40992502u, 1340822838u, 0xA2D02FFFu, 0xD2BF60C4u, 0xD43F03C0u, 1354035053u, 122129617u, 7215240u, 0xA2E53F55u, 0xB9E6D4BCu, 0xA2048016u, 0x97573833u, 0xD7207D67u, 0xDE0F8F3Du, 1928887091u, 0xABCC4F33u, 1988674909u, 2063640240u, 0x947B0001u, 1459647954u, 0xF9BB88F8u, 0x8942019Eu, 1113892351u, 0x856302E0u, 1927010603u, 0xEE971B69u, 1856122846u, 1594404395u, 0xAF7A616Du, 0xE5C98767u, 0xCF1FEBD2u, 1643104450u, 0xF1AC2571u, 0xCC8239C2u, 1730235576u, 0xB1E583D1u, 0xB7DC3E62u, 2131803598u, 0xF90A5C38u, 267404349u, 1617849798u, 1616132681u, 1462223176u, 736725533u, 0x8AB41738u, 551665188u, 0xAF96DA0Fu, 1749386277u, 0x99833BE5u, 1611482493u, 674206544u, 0x8334B362u, 0xD91D1120u, 728599968u, 1680547377u, 0x9C305A00u, 1388111496u, 453204106u, 0xF7BAEFD5u, 1094905244u, 0xA4315C11u, 0x83323EC5u, 0xDFEF4636u, 0xA133C501u, 0xE9D3531Cu, 0xEE353783u};
static const uint32 S4[256] = {0x9DB30420u, 532081118u, 0xA7BE7BEFu, 0xD273A298u, 1246723035u, 1689095255u, 0x85510443u, 0xFA020ED1u, 2116582143u, 0xE60FB663u, 157234593u, 2045505824u, 0xFD059D43u, 1687664561u, 0xF3641F63u, 605965023u, 672431967u, 1336064205u, 0xC9430040u, 214114848u, 0xFDD30B30u, 0xC0A5374Fu, 489488601u, 605322005u, 0xEE4D111Au, 264917351u, 1912574028u, 756637694u, 436560991u, 202637054u, 135989450u, 85393697u, 0x80530100u, 0xE83E5EFEu, 0xAC9AF4F8u, 2145855233u, 0xD2B8EE5Fu, 115294817u, 0xBB9E9B8Au, 1922296357u, 0xCE84FFDFu, 0xF5718801u, 1037454084u, 0xA26F263Bu, 2127856640u, 1417604070u, 1148013728u, 1827919605u, 642362335u, 0xAEA0C7F5u, 909348033u, 1346338451u, 0xD3772061u, 297154785u, 1917849091u, 0xF80EB2BBu, 0xABE0502Eu, 0xEC8D77DEu, 1469521537u, 0xE14F6746u, 0xC9335400u, 1763717519u, 136166297u, 0xFFC304A5u, 1295325189u, 2134727907u, 0xA6C866C6u, 1566297257u, 0xDAEC6FEAu, 0x9F926F91u, 0x9F46222Fu, 965822077u, 0xA5BF6D8Eu, 289653839u, 1133871874u, 0xD0214EEBu, 35685304u, 1068898316u, 418943774u, 672553190u, 642281022u, 0x8BD78A70u, 1954014401u, 0xB506E07Cu, 0xF32D0A25u, 2030668546u, 0xE4EABB81u, 672283427u, 1776201016u, 359975446u, 0xDF871B62u, 555499703u, 0xA51A9EF9u, 1324923u, 69110472u, 152125443u, 0xBD59E4D2u, 0xE3D156D5u, 1340634837u, 798073664u, 1434183902u, 15393959u, 216384236u, 1303690150u, 0xE756BDFFu, 0xDD3369ACu, 0xEC17B035u, 106373927u, 0x99AFC8B0u, 1455997841u, 1801814300u, 1578393881u, 1854262133u, 0xBE07C002u, 0xC2325577u, 0x893FF4ECu, 1539295533u, 0xD0EC3B25u, 0xB7801AB7u, 0x8D6D3B24u, 549938159u, 0xC366A5FCu, 0x9C382880u, 181285381u, 0xAAC9548Au, 0xECA1D7C7u, 68876850u, 488006234u, 1728155692u, 0x9B757A54u, 836007927u, 0x9126B031u, 919367643u, 0xC70B8B46u, 0xD9E66A48u, 1457871481u, 40520939u, 1380155135u, 797931188u, 234455205u, 0x8674CDE3u, 0xEDDA04EBu, 397000196u, 739833055u, 0xB7747F9Du, 0xAB2AF7B4u, 0xEFC34D20u, 772369276u, 390177364u, 0xE5B6A035u, 557662966u, 740064294u, 1640166671u, 1699928825u, 0xD2C231F8u, 622006121u, 0xD8167FA2u, 68743880u, 1742502u, 219489963u, 1664179233u, 1577743084u, 1236991741u, 410585305u, 0x8D0DBD86u, 823226535u, 1050371084u, 0xCC3E10D7u, 0xD5CAD3B6u, 212779912u, 0xF73001E1u, 1819446015u, 1911218849u, 530248558u, 0xCFCBD12Fu, 0xC1DE8417u, 0xAC07BE6Bu, 0xCB44A1D8u, 0x8B9B0F56u, 20547779u, 0xB1C52FCAu, 0xB4BE31CDu, 0xD8782806u, 312714466u, 1870521650u, 1493008054u, 0xD01EE900u, 615382978u, 0xF4990FC5u, 0x9711AAC5u, 1932181u, 0x82E5E7D2u, 278426614u, 6369430u, 0xC32D9521u, 0xADA121FFu, 697336853u, 2143000447u, 0xAF9EB3DBu, 701099306u, 1558357093u, 0xA730F32Cu, 0xD0AA3FE8u, 0x8A5CC091u, 0xD49E2CE7u, 216290473u, 0xD60ACD86u, 23009561u, 1996984579u, 0xDEA03AF6u, 2024298078u, 0xDEE356DFu, 569400510u, 0x8B75E387u, 0xB3C50651u, 0xB8A5C3EFu, 0xD8EEB6D2u, 0xE523BE77u, 0xC2154529u, 795471839u, 0xAFE67AFBu, 0xF470C4B2u, 0xF3E0EB5Bu, 0xD6CC9876u, 971261452u, 534414648u, 428311343u, 0xCA007367u, 0xA99144F8u, 694888862u, 1227866773u, 0x9266BEABu, 0xB5676E69u, 0x9BD3DDDAu, 0xDF7E052Fu, 0xDB25701Cu, 459166190u, 0xF65324E6u, 1794958188u, 51825668u, 0x8644213Eu, 0xB7DC59D0u, 2036672799u, 0xCCD6FD43u, 1099053433u, 0x932BCDF6u, 0xB657C34Du, 1323291266u, 2061838604u, 1018778475u, 0x851E20FEu, 0x9833557Eu, 334295216u, 0xD3FFB372u, 1065731521u, 183467730u};
static const uint32 S5[256] = {2127105028u, 745436345u, 0x9B0E66DFu, 0xA6337911u, 0xB86A7FFFu, 500390133u, 1155374404u, 389092991u, 150729210u, 0xE7F511CCu, 0xD2051B00u, 1935325696u, 716645080u, 946045387u, 0xACF6243Au, 1774124410u, 0xE6A2E77Fu, 0xF0C720CDu, 0xC4494816u, 0xCCF5C180u, 948246080u, 363898952u, 0xE68B18CBu, 1286266623u, 1598556673u, 68334250u, 630723836u, 1104211938u, 1312863373u, 613332731u, 0x8DBA1CFEu, 1101634306u, 441780740u, 0xBA8F65CBu, 1917973735u, 0x95A51725u, 0xC106ECD7u, 0x97A5980Au, 0xC539B9AAu, 1299840618u, 0xF2F3F763u, 1756332096u, 0xED0C9E56u, 297047435u, 0xE1EB5A88u, 0x8709E6B0u, 0xD7E07156u, 1311375015u, 1667687725u, 47300608u, 0xC4AC8E05u, 0x9377F571u, 201668394u, 1468347890u, 576830978u, 0xD642A0C9u, 0xDF13A280u, 1958042578u, 1747032512u, 0xD421E5ECu, 1408974056u, 0xC8ADEDB3u, 682131401u, 1033214337u, 1545599232u, 0xFE38D399u, 206503691u, 103024618u, 0xAA2F4FB1u, 1337551222u, 0x90C79505u, 0xB0A8A774u, 0xEF55A1FFu, 0xE59CA2C2u, 0xA6B62D27u, 0xE66A4263u, 0xDF65001Fu, 247794022u, 0xDFDD55BCu, 702416469u, 0x911E739Au, 397379957u, 851939612u, 0x89F89468u, 218229120u, 1380406772u, 62274761u, 214451378u, 0xBCF3F0AAu, 0x87AC36E9u, 0xE53A7426u, 28563499u, 446592073u, 1693330814u, 0xCDDBB1DAu, 29968656u, 0xB868BF80u, 220656637u, 0x9342EDE7u, 77972100u, 1667708854u, 1358280214u, 0xF24766E3u, 0x8ECA36C1u, 325977563u, 0xFEF18391u, 0xFB887A37u, 0xD6E7F7D4u, 0xC7FB7DC9u, 811859167u, 0xB6F589DEu, 0xEC2941DAu, 652502677u, 0xB7566419u, 0xF654EFC5u, 0xD08D58B7u, 1217549313u, 0xC1BACB7Fu, 0xE5FF550Fu, 0xB6083049u, 1538642152u, 0x87D72E5Au, 0xAB6A6EE1u, 574252750u, 0xC62BF3CDu, 0x9E0885F9u, 1758150215u, 141295887u, 0xA21DE820u, 0xD18B69DEu, 0xF3F65777u, 0xFA02C3F6u, 1082055363u, 0xCBB3D550u, 395511885u, 0xB0D70EBAu, 179534037u, 0xD951FB0Cu, 0xDED7DA56u, 1092926436u, 0x94CA0B56u, 257381841u, 0xE0E1E56Eu, 1636087230u, 1477059743u, 0x94F74BC0u, 0xE327888Eu, 0x9F7B5561u, 0xC3DC0280u, 90732309u, 1684827095u, 1150307763u, 1723134115u, 0xC0F1648Au, 1769919919u, 1240018934u, 815675215u, 750138730u, 0x85808573u, 1234303040u, 1995484674u, 138143821u, 675421338u, 1145607174u, 1936608440u, 0xC1092910u, 0x8BC95FC6u, 2105974004u, 323969391u, 779555213u, 0xB31B2BE1u, 0xAA90B472u, 1017501463u, 2098600890u, 0x9CAD9010u, 0xAF462BA2u, 0x9FE459D2u, 1171473753u, 0xD9F2DA13u, 0xDBC65487u, 0xF3E4F94Eu, 393037935u, 159126506u, 1662887367u, 1147106178u, 391545844u, 0xCDC66A97u, 1891500680u, 0xB3CDCF72u, 1851642611u, 546529401u, 1167818917u, 0xBE60E2DBu, 0xA9C23101u, 0xEBA5315Cu, 575554290u, 475796850u, 0xF6721B2Cu, 450035699u, 0x8C25404Eu, 844027695u, 1080539133u, 86184846u, 1554234488u, 0xDC0FD66Eu, 1972511363u, 2018339607u, 1491841390u, 1141460869u, 1061690759u, 0xFCFEAE7Bu, 2008416118u, 0x8C2302BFu, 0xAAF47556u, 1598468138u, 722020353u, 1027143159u, 212344630u, 1387219594u, 1725294528u, 0xDF3B0874u, 0x95055110u, 458938280u, 0xF61ED5ADu, 1828119673u, 544571780u, 0xD0CEFA65u, 0x88F7BE58u, 1241802790u, 267843827u, 0xA09C7F70u, 1397140384u, 1558801448u, 0xE176EDA3u, 1806446719u, 929573330u, 0x85360FA9u, 400817706u, 616011623u, 0xF5A96B20u, 0xD6CD2595u, 1761550015u, 1968522284u, 0xF19F06BEu, 0xF9E0659Au, 0xEEB9491Du, 872482584u, 0xBB30CAB8u, 0xE822FE15u, 0x88570983u, 1963876937u, 0xDA627E55u, 1584857000u, 0xB1534546u, 1833426440u, 0xEFE9E7D4u};
static const uint32 S6[256] = {0xF6FA8F9Du, 749497569u, 1285769319u, 0xE2337F7Cu, 0x95DB08E7u, 23610292u, 0xECED5CBCu, 844452780u, 0xBF9F0960u, 0xDFA1E2EDu, 0x83F0579Du, 1676510905u, 448177848u, 0xDE5EBE39u, 0xF38FF732u, 0x8989B138u, 871450977u, 0xC01937BDu, 0xF506C6DAu, 0xE4625E7Eu, 0xA308EA99u, 1310974780u, 2043402188u, 1218528103u, 0xA3149619u, 0xFEC94BD5u, 0xA114174Au, 0xEAA01866u, 0xA084DB2Du, 162023535u, 0xA888614Au, 687910808u, 23484817u, 0xE1992863u, 0xC8F30C60u, 779677500u, 0xD0D51932u, 0xCF0FEC14u, 0xF7CA07D2u, 0xD0A82072u, 0xFD41197Eu, 0x9305A6B0u, 0xE86BE3DAu, 1958663117u, 925738300u, 1283408968u, 0xDAB5D440u, 1840910019u, 137959847u, 0x9FBAEED9u, 1239142320u, 1315376211u, 1547541505u, 1690155329u, 739140458u, 0xBA7DD9CDu, 0xEA6F7388u, 0xE70BC762u, 905091803u, 1548541325u, 0xF0D48D8Cu, 0xB88153E2u, 144808038u, 451078856u, 676114313u, 0xAA928223u, 0x9334BE53u, 993665471u, 373509091u, 0x9AEA3906u, 0xEFE8C36Eu, 0xF890CDD9u, 0x80226DAEu, 0xC340A4A3u, 0xDF7E9C09u, 0xA694A807u, 1534877388u, 572371878u, 0x9A69A02Fu, 1753320020u, 0xCEB2296Fu, 1405125690u, 0xFE893655u, 633333386u, 0xB4628ABCu, 0xCF222EBFu, 632057672u, 0xA9A99387u, 1404951397u, 0xE76FFBE7u, 0xE967FD78u, 195638627u, 0x8E342BC1u, 0xE8A11BE9u, 1233155085u, 0xC8087DFCu, 0x8DE4BF99u, 0xA11101A0u, 2144565621u, 0xDA5A26C0u, 0xE81F994Fu, 0x9528CD89u, 0xFD339FEDu, 0xB87834BFu, 1594115437u, 572884632u, 0xC9C4C83Bu, 767645374u, 1331858858u, 1475698373u, 0xE2220ABEu, 0xD2916EBFu, 1321687957u, 619889600u, 1121017241u, 0xCD0D7FA0u, 2070816767u, 0xA8DC8AF0u, 1933951238u, 0xF41E232Fu, 890643334u, 0xE6EA8926u, 859025556u, 360630002u, 925594799u, 1764062180u, 0xE9A9D848u, 0xF3160289u, 979562269u, 0xA787E238u, 0xF3A5F676u, 1949714515u, 546639971u, 1165388173u, 0xB6FAD407u, 1495988560u, 922170659u, 1291546247u, 2107952832u, 1813327274u, 0xCB0396A8u, 0xC50DFE5Du, 0xFCD707ABu, 153207855u, 0x89DFF0BBu, 1608695416u, 1150242611u, 1967526857u, 721801357u, 1220138373u, 0xDC049441u, 0xC8098F9Bu, 2112743302u, 0xC39A3373u, 1111556101u, 1778980689u, 250857638u, 0x890072D6u, 673216130u, 0xA9A9F7BEu, 0xBF32679Du, 0xD45B5B75u, 0xB353FD00u, 0xCBB0E358u, 0x830F220Au, 529510932u, 0xD372CF08u, 0xCC3C4A13u, 0x8CF63166u, 102533054u, 0x88C98F88u, 1617093527u, 1204784762u, 0xB6C85283u, 1019391227u, 1069574518u, 1317995090u, 1691889997u, 0xDA3870E3u, 510022745u, 0xC10908F0u, 1362108837u, 1817929911u, 0x822F8AA0u, 805817662u, 1953603311u, 0xDC872681u, 120799444u, 2118332377u, 207536705u, 0x8809286Cu, 0xF592D891u, 145305846u, 0x957EF305u, 0xB7FBFFBDu, 0xC266E96Fu, 1877257368u, 0xB173ECC0u, 0xBC60B42Au, 0x953498DAu, 0xFBA1AE12u, 759945014u, 254147243u, 0xA4F3FCEBu, 0xE2969123u, 629083197u, 0x9348AF49u, 907280572u, 0xE8816F4Au, 940896768u, 0xA3F94043u, 0x9C7A54C2u, 0xBC704F57u, 0xDA41E7F9u, 0xC25AD33Au, 1425318020u, 0xB17F5505u, 1496677566u, 0xEDBD15C8u, 2140652971u, 0xBA5AC7B5u, 0xB6F6DEAFu, 977771578u, 1392695845u, 1698528874u, 1411812681u, 1369733098u, 1343739227u, 0xD7D25D88u, 1142123638u, 67414216u, 0xB8E5A121u, 0xB81A928Au, 1626167401u, 0x97C55B96u, 0xEAEC991Bu, 697522451u, 33404913u, 143560186u, 0x9AB6F6F5u, 994885535u, 1247667115u, 0xE6051D35u, 0xA0E1D855u, 0xD36B4CF1u, 0xF544EDEBu, 0xB0E93524u, 0xBEBB8FBDu, 0xA2D762CFu, 1237921620u, 951448369u, 1898488916u, 1211705605u, 0xA65B1DB8u, 0x851C97BDu, 0xD675CF2Fu};
static const uint32 S7[256] = {0x85E04019u, 858518887u, 1714274303u, 0xCFC65693u, 713916271u, 0xAB9BC912u, 0xDE6008A1u, 539548191u, 36158695u, 1298409750u, 419087104u, 1358007170u, 749914897u, 0xB232E75Cu, 1261868530u, 0xB28707DEu, 0xA05FBCF6u, 0xCD4181E9u, 0xE150210Cu, 0xE24EF1BDu, 0xB168C381u, 0xFDE4E789u, 1551479000u, 512490819u, 1296650241u, 951993153u, 0x913CEE1Du, 0x92A79C3Fu, 144139966u, 0xBAEEADF4u, 310820559u, 0xB6EACB19u, 643875328u, 1969602020u, 1680088954u, 0x8248DCA9u, 0xC3B3AD66u, 672358534u, 198762408u, 896343282u, 276269502u, 0xB3B2E9CEu, 84060815u, 197145886u, 376173866u, 0xEB12FF82u, 0xE3486911u, 0xD34D7516u, 1316698879u, 1598252827u, 0x9CF6E037u, 1233235075u, 859989710u, 0x8C9341B7u, 0xD0D854C0u, 0xCB3A6C88u, 1203513385u, 1193654839u, 0xA66AD22Bu, 2060853022u, 207403770u, 1144516871u, 0xB6E79962u, 1121114134u, 177607304u, 0xE1A5C06Eu, 326409831u, 1929119770u, 0xB1D139F7u, 0xF9583745u, 0xCF19DF58u, 0xBEC3F756u, 0xC06EBA30u, 119610148u, 1170376745u, 0xC95E317Fu, 0xBC8EC511u, 951863017u, 0xC6E6FA14u, 0xBAE8584Au, 0xAD4EBC46u, 1183797387u, 2015970143u, 0xF124183Bu, 0x821DBA9Fu, 0xAFF60FF4u, 0xEA2C4E6Du, 384012900u, 0x92544A8Bu, 10178499u, 0xABA68CEDu, 0x9AC96F78u, 111523738u, 0xB2856E6Eu, 451689641u, 0xBE838688u, 235406569u, 1441906262u, 0xE7E5363Bu, 0xB3A1F25Du, 0xF7DEBB85u, 1644036924u, 376726067u, 1006849064u, 0xDA6D0C74u, 2041234796u, 1021632941u, 1374734338u, 0x98F8F35Au, 371631263u, 0xEED82B29u, 490221539u, 206551450u, 0xBB325778u, 1053219195u, 1853335209u, 0xCB658B5Cu, 0xD45230C7u, 735133835u, 1623211703u, 0xB9068D78u, 0xA33754F4u, 0xF430C87Du, 0xC8A71302u, 0xB96D8C32u, 0xEBD4E7BEu, 0xBE8B9D2Du, 2038037254u, 0xE7225308u, 0x8B75CF77u, 300912036u, 0xE083C858u, 0x8D6B786Fu, 1516443558u, 0xFA5CF7A0u, 1574567987u, 0xF28EBFB0u, 0xF5B9C310u, 0xA0EAC280u, 146372218u, 0xA3D9D2B0u, 2043888151u, 35287437u, 0x9AC6336Au, 655490400u, 1132482787u, 110692520u, 1031794116u, 0x826D2BEFu, 1324057718u, 1217253157u, 919197030u, 686247489u, 0xC2610ACAu, 1028237775u, 0xBAE3B9DFu, 0xB65F8DE6u, 0x92AEAF64u, 986174950u, 0x9EA80509u, 0xF22B017Du, 0xA4173F70u, 0xDD1E16C3u, 367056889u, 1353824391u, 731860949u, 1650113154u, 1778481506u, 784341916u, 357075625u, 0xD716E740u, 1074092588u, 0x93D29A22u, 0xE32DBF9Au, 92751289u, 877911070u, 0xD699296Eu, 1231880047u, 480201094u, 0xDFE2ED07u, 0xB87242D1u, 434011822u, 87971354u, 363687820u, 1717726236u, 1901380172u, 0xEA082B2Au, 0x93EB2939u, 400339184u, 1490350766u, 0x9EA294FBu, 1389319756u, 0x9883FE66u, 784598401u, 1983468483u, 30828846u, 0xD3A0C108u, 0xA1E7160Eu, 0xE4F2DFA6u, 1765724805u, 1955612312u, 1277890269u, 1333098070u, 1564029816u, 0xA132234Fu, 1026694237u, 0xC3F5E194u, 1260819201u, 0xC79F022Fu, 1016692350u, 1582273796u, 1073413053u, 1995943182u, 694588404u, 1025494639u, 0xC61E45BEu, 0xD3B5AB34u, 0xF72BF9B7u, 453260480u, 1316140391u, 1435673405u, 0xB5229301u, 0xCFD2A87Fu, 1622062951u, 403978347u, 817677117u, 950059133u, 0xFD1606F2u, 0xC363519Bu, 1486738320u, 1417279718u, 481875527u, 0x97FD61A9u, 0xEA7759F4u, 760697757u, 1452955855u, 0xE84E63ADu, 1177426808u, 1702951038u, 0xF3817914u, 0x91DA55F4u, 1084371187u, 0xD1988F35u, 0xB6E318D2u, 1073369276u, 1027665953u, 0xC3C0BDAEu, 1230553676u, 1368340146u, 0x84B1D370u, 267243139u, 0x878DDADAu, 0xF2A279C7u, 0x94E01BE8u, 0x90716F4Bu, 0x954B8AA3u};
static const uint32 S8[256] = {0xE216300Du, 0xBBDDFFFCu, 0xA7EBDABDu, 895778965u, 2005530807u, 0xE6C1121Bu, 237245952u, 86829237u, 296341424u, 0xE5952F11u, 0xECE7990Au, 0x9386D174u, 709006108u, 1994621201u, 0xB12DEF3Au, 937287164u, 0xDE9ADEB1u, 168608556u, 0xBE197029u, 0x84A00940u, 0xBB243A0Fu, 0xB4D137CFu, 0xB44E79F0u, 77524477u, 185966941u, 1208824168u, 0x8BBBDE5Au, 1721625922u, 0xC7ECE831u, 1066374631u, 1927223579u, 1971335949u, 0x94074251u, 1551748602u, 0xABBE6D63u, 0xAA402164u, 0xB301D40Au, 48746954u, 1398218158u, 2050065058u, 313056748u, 0xFDAA335Du, 393167848u, 1912293076u, 940740642u, 0xCE949AD4u, 0xB84769ADu, 0x965BD862u, 0x82F3D055u, 1727764327u, 364383054u, 492521376u, 1291706479u, 0xC28EC4B8u, 1474851438u, 1685747964u, 0x99865D44u, 1619776915u, 1814040067u, 970743798u, 1561002147u, 0xAE63AFF2u, 2123093554u, 1880132620u, 0xBBD35049u, 697884420u, 0x980CF42Au, 0x9B6DF491u, 0x9E7EDD53u, 110200136u, 1489731079u, 997519150u, 1378877361u, 0xD24708CCu, 478029773u, 0xA4EB215Bu, 1022481122u, 431258168u, 1112503832u, 897933369u, 0x9D17DEE7u, 669726182u, 0xC9AFF67Bu, 918222264u, 163866573u, 0xC18910B1u, 0xE11DBF7Bu, 114105080u, 1903216136u, 761148244u, 0xD4DE495Au, 1690750982u, 0xBCC0C62Cu, 1037045171u, 1888456500u, 2010454850u, 642736655u, 616092351u, 365016990u, 1185228132u, 0xF8D7E54Eu, 1043824992u, 2023083429u, 0x859C15A5u, 0xE6459788u, 0xC37BC75Fu, 0xDB07BA0Cu, 108438443u, 2132974366u, 830746235u, 606445527u, 0xF8BEF472u, 0x835FFCB8u, 1844756978u, 0x96F5B195u, 0xFD0AF0FCu, 0xB0FE134Cu, 0xE2506D3Du, 1335562986u, 0xF215F225u, 0xA223736Fu, 0x9FB4C428u, 634407289u, 885462008u, 0xC4618187u, 0xEA7A6E98u, 2094100220u, 339117932u, 0xF1544107u, 0xBEDEEE14u, 1458155303u, 0xA04AA441u, 1022871705u, 0x92ECBAE6u, 0xDD67016Du, 353796843u, 0xA842EEDFu, 0xFDBA60B4u, 0xF1907B75u, 551748367u, 618185374u, 0xE139673Bu, 0xEFA63FB8u, 1904685140u, 0xB6F2CF3Bu, 0x9F326442u, 0xCB15A4CCu, 0xB01A4504u, 0xF1E47D8Du, 0x844A1BE5u, 0xBAE7DFDCu, 1120655984u, 0xCD7DAE0Au, 1474845562u, 0xD53F5AF6u, 550456716u, 0xCEA4D428u, 2043752612u, 881257467u, 869518812u, 2005220179u, 938474677u, 0xC5068778u, 0xE580B3E6u, 1315485940u, 0xC5C8B37Eu, 226533026u, 965733244u, 321539988u, 1136104718u, 804158748u, 573969341u, 0xDD06CAA2u, 937399083u, 0xC4248289u, 0xACF3EBC3u, 1461057207u, 0xEF3478DDu, 0xF267616Fu, 0xC148CBE4u, 0x9052815Eu, 1581322155u, 0xB48A2465u, 786071460u, 0xE87B40E4u, 0xE98EA084u, 1485433313u, 0xEFD390FCu, 0xDD07D35Bu, 0xDB485694u, 953673138u, 1467089153u, 1930354364u, 1533292819u, 0x94917E4Fu, 1346121658u, 1685000834u, 1965281866u, 0xE0779695u, 0xF9C17A8Fu, 2052792609u, 0xD187B896u, 690371149u, 0xBA510CDFu, 0x81F47C9Fu, 0xAD1163EDu, 0xEA7B5965u, 436236910u, 289419410u, 14314871u, 1242357089u, 0xAD1F4603u, 1616633776u, 0x9EEDC364u, 585885352u, 0xCEE7D28Au, 0xA0E736A0u, 1432659641u, 277164553u, 0xC7EB8F37u, 770115018u, 0x8951570Fu, 0xDF09822Bu, 0xBD691A6Cu, 0xAA12E4F2u, 0x87451C0Fu, 0xE0F6A27Au, 987383833u, 1290892879u, 225909803u, 1741533526u, 890078084u, 1496906255u, 1111072499u, 916028167u, 243534141u, 1252605537u, 0x8360D87Bu, 531204876u, 290011180u, 0xE97625A5u, 102027703u, 237315147u, 209093447u, 1486785922u, 220223953u, 0xA466BB1Eu, 0xF8DA0A82u, 82940208u, 0xBA6E4EC0u, 0x99265164u, 518464269u, 1353887104u, 0xEAEE6801u, 0x8DB2A283u, 0xEA8BF59Eu};
unsigned char in_pub[8];
unsigned char key[16];
unsigned char out[8];
block_state st;
void branch_id(char *str)
{
  ;
}

signed int main()
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
  read(0, (void *) key, 16u);
  ;
  block_init_self = &st;
  block_init_key = key;
  block_init_keylength = 16;
  if ((!(block_init_keylength >= 5)) || (block_init_keylength >= 17))
  {
    branch_id("$0");
    goto __CPROVER_DUMP_L6;
  }

  branch_id("$1");
  ;
  castschedulekeys_schedule = block_init_self;
  castschedulekeys_key = block_init_key;
  castschedulekeys_keybytes = block_init_keylength;
  castschedulekeys_i = 0;
  uint8 memop_var_0;
  memop_var_0 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_0, obsv_ds_bases_size_$1_0, obsv_ds_size_$1_0);
  uint8_t_secure_store_single((unsigned char) memop_var_0, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_1, obsv_ds_bases_size_$1_1, obsv_ds_size_$1_1);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_2;
  memop_var_2 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_2, obsv_ds_bases_size_$1_2, obsv_ds_size_$1_2);
  uint8_t_secure_store_single((unsigned char) memop_var_2, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_3, obsv_ds_bases_size_$1_3, obsv_ds_size_$1_3);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_4;
  memop_var_4 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_4, obsv_ds_bases_size_$1_4, obsv_ds_size_$1_4);
  uint8_t_secure_store_single((unsigned char) memop_var_4, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_5, obsv_ds_bases_size_$1_5, obsv_ds_size_$1_5);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_6;
  memop_var_6 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_6, obsv_ds_bases_size_$1_6, obsv_ds_size_$1_6);
  uint8_t_secure_store_single((unsigned char) memop_var_6, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_7, obsv_ds_bases_size_$1_7, obsv_ds_size_$1_7);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_8;
  memop_var_8 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_8, obsv_ds_bases_size_$1_8, obsv_ds_size_$1_8);
  uint8_t_secure_store_single((unsigned char) memop_var_8, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_9, obsv_ds_bases_size_$1_9, obsv_ds_size_$1_9);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_10;
  memop_var_10 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_10, obsv_ds_bases_size_$1_10, obsv_ds_size_$1_10);
  uint8_t_secure_store_single((unsigned char) memop_var_10, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_11, obsv_ds_bases_size_$1_11, obsv_ds_size_$1_11);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_12;
  memop_var_12 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_12, obsv_ds_bases_size_$1_12, obsv_ds_size_$1_12);
  uint8_t_secure_store_single((unsigned char) memop_var_12, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_13, obsv_ds_bases_size_$1_13, obsv_ds_size_$1_13);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_14;
  memop_var_14 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_14, obsv_ds_bases_size_$1_14, obsv_ds_size_$1_14);
  uint8_t_secure_store_single((unsigned char) memop_var_14, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_15, obsv_ds_bases_size_$1_15, obsv_ds_size_$1_15);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_16;
  memop_var_16 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_16, obsv_ds_bases_size_$1_16, obsv_ds_size_$1_16);
  uint8_t_secure_store_single((unsigned char) memop_var_16, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_17, obsv_ds_bases_size_$1_17, obsv_ds_size_$1_17);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_18;
  memop_var_18 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_18, obsv_ds_bases_size_$1_18, obsv_ds_size_$1_18);
  uint8_t_secure_store_single((unsigned char) memop_var_18, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_19, obsv_ds_bases_size_$1_19, obsv_ds_size_$1_19);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_20;
  memop_var_20 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_20, obsv_ds_bases_size_$1_20, obsv_ds_size_$1_20);
  uint8_t_secure_store_single((unsigned char) memop_var_20, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_21, obsv_ds_bases_size_$1_21, obsv_ds_size_$1_21);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_22;
  memop_var_22 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_22, obsv_ds_bases_size_$1_22, obsv_ds_size_$1_22);
  uint8_t_secure_store_single((unsigned char) memop_var_22, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_23, obsv_ds_bases_size_$1_23, obsv_ds_size_$1_23);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_24;
  memop_var_24 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_24, obsv_ds_bases_size_$1_24, obsv_ds_size_$1_24);
  uint8_t_secure_store_single((unsigned char) memop_var_24, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_25, obsv_ds_bases_size_$1_25, obsv_ds_size_$1_25);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_26;
  memop_var_26 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_26, obsv_ds_bases_size_$1_26, obsv_ds_size_$1_26);
  uint8_t_secure_store_single((unsigned char) memop_var_26, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_27, obsv_ds_bases_size_$1_27, obsv_ds_size_$1_27);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_28;
  memop_var_28 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_28, obsv_ds_bases_size_$1_28, obsv_ds_size_$1_28);
  uint8_t_secure_store_single((unsigned char) memop_var_28, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_29, obsv_ds_bases_size_$1_29, obsv_ds_size_$1_29);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_30;
  memop_var_30 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_30, obsv_ds_bases_size_$1_30, obsv_ds_size_$1_30);
  uint8_t_secure_store_single((unsigned char) memop_var_30, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_31, obsv_ds_bases_size_$1_31, obsv_ds_size_$1_31);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_32;
  memop_var_32 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_32, obsv_ds_bases_size_$1_32, obsv_ds_size_$1_32);
  uint8_t_secure_store_single((unsigned char) memop_var_32, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_33, obsv_ds_bases_size_$1_33, obsv_ds_size_$1_33);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_34;
  memop_var_34 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_34, obsv_ds_bases_size_$1_34, obsv_ds_size_$1_34);
  uint8_t_secure_store_single((unsigned char) memop_var_34, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_35, obsv_ds_bases_size_$1_35, obsv_ds_size_$1_35);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_36;
  memop_var_36 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_36, obsv_ds_bases_size_$1_36, obsv_ds_size_$1_36);
  uint8_t_secure_store_single((unsigned char) memop_var_36, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_37, obsv_ds_bases_size_$1_37, obsv_ds_size_$1_37);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_38;
  memop_var_38 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_38, obsv_ds_bases_size_$1_38, obsv_ds_size_$1_38);
  uint8_t_secure_store_single((unsigned char) memop_var_38, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_39, obsv_ds_bases_size_$1_39, obsv_ds_size_$1_39);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_40;
  memop_var_40 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_40, obsv_ds_bases_size_$1_40, obsv_ds_size_$1_40);
  uint8_t_secure_store_single((unsigned char) memop_var_40, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_41, obsv_ds_bases_size_$1_41, obsv_ds_size_$1_41);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_42;
  memop_var_42 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_42, obsv_ds_bases_size_$1_42, obsv_ds_size_$1_42);
  uint8_t_secure_store_single((unsigned char) memop_var_42, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_43, obsv_ds_bases_size_$1_43, obsv_ds_size_$1_43);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_44;
  memop_var_44 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_44, obsv_ds_bases_size_$1_44, obsv_ds_size_$1_44);
  uint8_t_secure_store_single((unsigned char) memop_var_44, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_45, obsv_ds_bases_size_$1_45, obsv_ds_size_$1_45);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_46;
  memop_var_46 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_46, obsv_ds_bases_size_$1_46, obsv_ds_size_$1_46);
  uint8_t_secure_store_single((unsigned char) memop_var_46, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_47, obsv_ds_bases_size_$1_47, obsv_ds_size_$1_47);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_48;
  memop_var_48 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_48, obsv_ds_bases_size_$1_48, obsv_ds_size_$1_48);
  uint8_t_secure_store_single((unsigned char) memop_var_48, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_49, obsv_ds_bases_size_$1_49, obsv_ds_size_$1_49);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_50;
  memop_var_50 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_50, obsv_ds_bases_size_$1_50, obsv_ds_size_$1_50);
  uint8_t_secure_store_single((unsigned char) memop_var_50, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_51, obsv_ds_bases_size_$1_51, obsv_ds_size_$1_51);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_52;
  memop_var_52 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_52, obsv_ds_bases_size_$1_52, obsv_ds_size_$1_52);
  uint8_t_secure_store_single((unsigned char) memop_var_52, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_53, obsv_ds_bases_size_$1_53, obsv_ds_size_$1_53);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_54;
  memop_var_54 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_54, obsv_ds_bases_size_$1_54, obsv_ds_size_$1_54);
  uint8_t_secure_store_single((unsigned char) memop_var_54, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_55, obsv_ds_bases_size_$1_55, obsv_ds_size_$1_55);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_56;
  memop_var_56 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_56, obsv_ds_bases_size_$1_56, obsv_ds_size_$1_56);
  uint8_t_secure_store_single((unsigned char) memop_var_56, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_57, obsv_ds_bases_size_$1_57, obsv_ds_size_$1_57);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_58;
  memop_var_58 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_58, obsv_ds_bases_size_$1_58, obsv_ds_size_$1_58);
  uint8_t_secure_store_single((unsigned char) memop_var_58, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_59, obsv_ds_bases_size_$1_59, obsv_ds_size_$1_59);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_60;
  memop_var_60 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_60, obsv_ds_bases_size_$1_60, obsv_ds_size_$1_60);
  uint8_t_secure_store_single((unsigned char) memop_var_60, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_61, obsv_ds_bases_size_$1_61, obsv_ds_size_$1_61);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint8 memop_var_62;
  memop_var_62 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_key[castschedulekeys_i]), obsv_ds_$1_62, obsv_ds_bases_size_$1_62, obsv_ds_size_$1_62);
  uint8_t_secure_store_single((unsigned char) memop_var_62, (unsigned char *) (&castschedulekeys_paddedkey[castschedulekeys_i]), obsv_ds_$1_63, obsv_ds_bases_size_$1_63, obsv_ds_size_$1_63);
  castschedulekeys_i = castschedulekeys_i + 1;
  if (!(castschedulekeys_keybytes >= 11))
  {
    branch_id("$1$0");
    goto __CPROVER_DUMP_L5;
  }

  branch_id("$1$1");
  uint32_t_secure_store_single(16u, (unsigned int *) (&castschedulekeys_schedule->rounds), obsv_ds_$1$1_64, obsv_ds_bases_size_$1$1_64, obsv_ds_size_$1$1_64);
  __CPROVER_DUMP_L5:
  ;

  uint8 memop_var_66;
  memop_var_66 = uint8_t_secure_load_single((unsigned char *) castschedulekeys_paddedkey, obsv_ds_$1_66, obsv_ds_bases_size_$1_66, obsv_ds_size_$1_66);
  uint8 memop_var_67;
  memop_var_67 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[0 + 1]), obsv_ds_$1_67, obsv_ds_bases_size_$1_67, obsv_ds_size_$1_67);
  uint8 memop_var_68;
  memop_var_68 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[0 + 2]), obsv_ds_$1_68, obsv_ds_bases_size_$1_68, obsv_ds_size_$1_68);
  uint8 memop_var_69;
  memop_var_69 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[0 + 3]), obsv_ds_$1_69, obsv_ds_bases_size_$1_69, obsv_ds_size_$1_69);
  uint32_t_secure_store_single((uint32) ((((((((signed int) memop_var_66) << 8) | ((signed int) memop_var_67)) << 8) | ((signed int) memop_var_68)) << 8) | ((signed int) memop_var_69)), (unsigned int *) castschedulekeys_x, obsv_ds_$1_70, obsv_ds_bases_size_$1_70, obsv_ds_size_$1_70);
  uint8 memop_var_71;
  memop_var_71 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[4]), obsv_ds_$1_71, obsv_ds_bases_size_$1_71, obsv_ds_size_$1_71);
  uint8 memop_var_72;
  memop_var_72 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[4 + 1]), obsv_ds_$1_72, obsv_ds_bases_size_$1_72, obsv_ds_size_$1_72);
  uint8 memop_var_73;
  memop_var_73 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[4 + 2]), obsv_ds_$1_73, obsv_ds_bases_size_$1_73, obsv_ds_size_$1_73);
  uint8 memop_var_74;
  memop_var_74 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[4 + 3]), obsv_ds_$1_74, obsv_ds_bases_size_$1_74, obsv_ds_size_$1_74);
  uint32_t_secure_store_single((uint32) ((((((((signed int) memop_var_71) << 8) | ((signed int) memop_var_72)) << 8) | ((signed int) memop_var_73)) << 8) | ((signed int) memop_var_74)), (unsigned int *) (&castschedulekeys_x[1]), obsv_ds_$1_75, obsv_ds_bases_size_$1_75, obsv_ds_size_$1_75);
  uint8 memop_var_76;
  memop_var_76 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[8]), obsv_ds_$1_76, obsv_ds_bases_size_$1_76, obsv_ds_size_$1_76);
  uint8 memop_var_77;
  memop_var_77 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[8 + 1]), obsv_ds_$1_77, obsv_ds_bases_size_$1_77, obsv_ds_size_$1_77);
  uint8 memop_var_78;
  memop_var_78 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[8 + 2]), obsv_ds_$1_78, obsv_ds_bases_size_$1_78, obsv_ds_size_$1_78);
  uint8 memop_var_79;
  memop_var_79 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[8 + 3]), obsv_ds_$1_79, obsv_ds_bases_size_$1_79, obsv_ds_size_$1_79);
  uint32_t_secure_store_single((uint32) ((((((((signed int) memop_var_76) << 8) | ((signed int) memop_var_77)) << 8) | ((signed int) memop_var_78)) << 8) | ((signed int) memop_var_79)), (unsigned int *) (&castschedulekeys_x[2]), obsv_ds_$1_80, obsv_ds_bases_size_$1_80, obsv_ds_size_$1_80);
  uint8 memop_var_81;
  memop_var_81 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[12]), obsv_ds_$1_81, obsv_ds_bases_size_$1_81, obsv_ds_size_$1_81);
  uint8 memop_var_82;
  memop_var_82 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[12 + 1]), obsv_ds_$1_82, obsv_ds_bases_size_$1_82, obsv_ds_size_$1_82);
  uint8 memop_var_83;
  memop_var_83 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[12 + 2]), obsv_ds_$1_83, obsv_ds_bases_size_$1_83, obsv_ds_size_$1_83);
  uint8 memop_var_84;
  memop_var_84 = uint8_t_secure_load_single((unsigned char *) (&castschedulekeys_paddedkey[12 + 3]), obsv_ds_$1_84, obsv_ds_bases_size_$1_84, obsv_ds_size_$1_84);
  uint32_t_secure_store_single((uint32) ((((((((signed int) memop_var_81) << 8) | ((signed int) memop_var_82)) << 8) | ((signed int) memop_var_83)) << 8) | ((signed int) memop_var_84)), (unsigned int *) (&castschedulekeys_x[3]), obsv_ds_$1_85, obsv_ds_bases_size_$1_85, obsv_ds_size_$1_85);
  ;
  schedulekeys_half_in = castschedulekeys_x;
  schedulekeys_half_keys = castschedulekeys_schedule->Km;
  uint32 memop_var_86;
  memop_var_86 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[0]), obsv_ds_$1_86, obsv_ds_bases_size_$1_86, obsv_ds_size_$1_86);
  uint32_t_secure_store_single((unsigned int) memop_var_86, (unsigned int *) schedulekeys_half_x, obsv_ds_$1_87, obsv_ds_bases_size_$1_87, obsv_ds_size_$1_87);
  uint32 memop_var_88;
  memop_var_88 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[1]), obsv_ds_$1_88, obsv_ds_bases_size_$1_88, obsv_ds_size_$1_88);
  uint32_t_secure_store_single((unsigned int) memop_var_88, (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_89, obsv_ds_bases_size_$1_89, obsv_ds_size_$1_89);
  uint32 memop_var_90;
  memop_var_90 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[2]), obsv_ds_$1_90, obsv_ds_bases_size_$1_90, obsv_ds_size_$1_90);
  uint32_t_secure_store_single((unsigned int) memop_var_90, (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_91, obsv_ds_bases_size_$1_91, obsv_ds_size_$1_91);
  uint32 memop_var_92;
  memop_var_92 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[3]), obsv_ds_$1_92, obsv_ds_bases_size_$1_92, obsv_ds_size_$1_92);
  uint32_t_secure_store_single((unsigned int) memop_var_92, (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_93, obsv_ds_bases_size_$1_93, obsv_ds_size_$1_93);
  uint32 memop_var_94;
  memop_var_94 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_94, obsv_ds_bases_size_$1_94, obsv_ds_size_$1_94);
  uint32 memop_var_95;
  memop_var_95 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_95, obsv_ds_bases_size_$1_95, obsv_ds_size_$1_95);
  uint32 memop_var_96;
  memop_var_96 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_95 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_97;
  memop_var_97 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_97, obsv_ds_bases_size_$1_97, obsv_ds_size_$1_97);
  uint32 memop_var_98;
  memop_var_98 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_97 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_99;
  memop_var_99 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_99, obsv_ds_bases_size_$1_99, obsv_ds_size_$1_99);
  uint32 memop_var_100;
  memop_var_100 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_99 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_101;
  memop_var_101 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_101, obsv_ds_bases_size_$1_101, obsv_ds_size_$1_101);
  uint32 memop_var_102;
  memop_var_102 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_101 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_103;
  memop_var_103 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_103, obsv_ds_bases_size_$1_103, obsv_ds_size_$1_103);
  uint32 memop_var_104;
  memop_var_104 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_103 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_94 ^ memop_var_96) ^ memop_var_98) ^ memop_var_100) ^ memop_var_102) ^ memop_var_104), (unsigned int *) schedulekeys_half_z, obsv_ds_$1_105, obsv_ds_bases_size_$1_105, obsv_ds_size_$1_105);
  uint32 memop_var_106;
  memop_var_106 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_106, obsv_ds_bases_size_$1_106, obsv_ds_size_$1_106);
  uint32 memop_var_107;
  memop_var_107 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_107, obsv_ds_bases_size_$1_107, obsv_ds_size_$1_107);
  uint32 memop_var_108;
  memop_var_108 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_107 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_109;
  memop_var_109 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_109, obsv_ds_bases_size_$1_109, obsv_ds_size_$1_109);
  uint32 memop_var_110;
  memop_var_110 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_109 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_111;
  memop_var_111 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_111, obsv_ds_bases_size_$1_111, obsv_ds_size_$1_111);
  uint32 memop_var_112;
  memop_var_112 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_111 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_113;
  memop_var_113 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_113, obsv_ds_bases_size_$1_113, obsv_ds_size_$1_113);
  uint32 memop_var_114;
  memop_var_114 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_113 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_115;
  memop_var_115 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_115, obsv_ds_bases_size_$1_115, obsv_ds_size_$1_115);
  uint32 memop_var_116;
  memop_var_116 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_115 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_106 ^ memop_var_108) ^ memop_var_110) ^ memop_var_112) ^ memop_var_114) ^ memop_var_116), (unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_117, obsv_ds_bases_size_$1_117, obsv_ds_size_$1_117);
  uint32 memop_var_118;
  memop_var_118 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_118, obsv_ds_bases_size_$1_118, obsv_ds_size_$1_118);
  uint32 memop_var_119;
  memop_var_119 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_119, obsv_ds_bases_size_$1_119, obsv_ds_size_$1_119);
  uint32 memop_var_120;
  memop_var_120 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_119 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_121;
  memop_var_121 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_121, obsv_ds_bases_size_$1_121, obsv_ds_size_$1_121);
  uint32 memop_var_122;
  memop_var_122 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_121 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_123;
  memop_var_123 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_123, obsv_ds_bases_size_$1_123, obsv_ds_size_$1_123);
  uint32 memop_var_124;
  memop_var_124 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_123 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_125;
  memop_var_125 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_125, obsv_ds_bases_size_$1_125, obsv_ds_size_$1_125);
  uint32 memop_var_126;
  memop_var_126 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_125 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_127;
  memop_var_127 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_127, obsv_ds_bases_size_$1_127, obsv_ds_size_$1_127);
  uint32 memop_var_128;
  memop_var_128 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_127 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_118 ^ memop_var_120) ^ memop_var_122) ^ memop_var_124) ^ memop_var_126) ^ memop_var_128), (unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_129, obsv_ds_bases_size_$1_129, obsv_ds_size_$1_129);
  uint32 memop_var_130;
  memop_var_130 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_130, obsv_ds_bases_size_$1_130, obsv_ds_size_$1_130);
  uint32 memop_var_131;
  memop_var_131 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_131, obsv_ds_bases_size_$1_131, obsv_ds_size_$1_131);
  uint32 memop_var_132;
  memop_var_132 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_131 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_133;
  memop_var_133 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_133, obsv_ds_bases_size_$1_133, obsv_ds_size_$1_133);
  uint32 memop_var_134;
  memop_var_134 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_133 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_135;
  memop_var_135 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_135, obsv_ds_bases_size_$1_135, obsv_ds_size_$1_135);
  uint32 memop_var_136;
  memop_var_136 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_135 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_137;
  memop_var_137 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_137, obsv_ds_bases_size_$1_137, obsv_ds_size_$1_137);
  uint32 memop_var_138;
  memop_var_138 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_137 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_139;
  memop_var_139 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_139, obsv_ds_bases_size_$1_139, obsv_ds_size_$1_139);
  uint32 memop_var_140;
  memop_var_140 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_139 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_130 ^ memop_var_132) ^ memop_var_134) ^ memop_var_136) ^ memop_var_138) ^ memop_var_140), (unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_141, obsv_ds_bases_size_$1_141, obsv_ds_size_$1_141);
  uint32 memop_var_142;
  memop_var_142 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_142, obsv_ds_bases_size_$1_142, obsv_ds_size_$1_142);
  uint32 memop_var_143;
  memop_var_143 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_142 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_144;
  memop_var_144 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_144, obsv_ds_bases_size_$1_144, obsv_ds_size_$1_144);
  uint32 memop_var_145;
  memop_var_145 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_144 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_146;
  memop_var_146 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_146, obsv_ds_bases_size_$1_146, obsv_ds_size_$1_146);
  uint32 memop_var_147;
  memop_var_147 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_146 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_148;
  memop_var_148 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_148, obsv_ds_bases_size_$1_148, obsv_ds_size_$1_148);
  uint32 memop_var_149;
  memop_var_149 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_148 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_150;
  memop_var_150 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_150, obsv_ds_bases_size_$1_150, obsv_ds_size_$1_150);
  uint32 memop_var_151;
  memop_var_151 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_150 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_143 ^ memop_var_145) ^ memop_var_147) ^ memop_var_149) ^ memop_var_151), (unsigned int *) (&schedulekeys_half_keys[0 + 0]), obsv_ds_$1_152, obsv_ds_bases_size_$1_152, obsv_ds_size_$1_152);
  uint32 memop_var_153;
  memop_var_153 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_153, obsv_ds_bases_size_$1_153, obsv_ds_size_$1_153);
  uint32 memop_var_154;
  memop_var_154 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_153 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_155;
  memop_var_155 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_155, obsv_ds_bases_size_$1_155, obsv_ds_size_$1_155);
  uint32 memop_var_156;
  memop_var_156 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_155 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_157;
  memop_var_157 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_157, obsv_ds_bases_size_$1_157, obsv_ds_size_$1_157);
  uint32 memop_var_158;
  memop_var_158 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_157 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_159;
  memop_var_159 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_159, obsv_ds_bases_size_$1_159, obsv_ds_size_$1_159);
  uint32 memop_var_160;
  memop_var_160 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_159 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_161;
  memop_var_161 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_161, obsv_ds_bases_size_$1_161, obsv_ds_size_$1_161);
  uint32 memop_var_162;
  memop_var_162 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_161 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_154 ^ memop_var_156) ^ memop_var_158) ^ memop_var_160) ^ memop_var_162), (unsigned int *) (&schedulekeys_half_keys[0 + 1]), obsv_ds_$1_163, obsv_ds_bases_size_$1_163, obsv_ds_size_$1_163);
  uint32 memop_var_164;
  memop_var_164 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_164, obsv_ds_bases_size_$1_164, obsv_ds_size_$1_164);
  uint32 memop_var_165;
  memop_var_165 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_164 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_166;
  memop_var_166 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[13 / 4]), obsv_ds_$1_166, obsv_ds_bases_size_$1_166, obsv_ds_size_$1_166);
  uint32 memop_var_167;
  memop_var_167 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_166 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_168;
  memop_var_168 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_168, obsv_ds_bases_size_$1_168, obsv_ds_size_$1_168);
  uint32 memop_var_169;
  memop_var_169 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_168 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_170;
  memop_var_170 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_170, obsv_ds_bases_size_$1_170, obsv_ds_size_$1_170);
  uint32 memop_var_171;
  memop_var_171 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_170 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_172;
  memop_var_172 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_172, obsv_ds_bases_size_$1_172, obsv_ds_size_$1_172);
  uint32 memop_var_173;
  memop_var_173 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_172 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_165 ^ memop_var_167) ^ memop_var_169) ^ memop_var_171) ^ memop_var_173), (unsigned int *) (&schedulekeys_half_keys[0 + 2]), obsv_ds_$1_174, obsv_ds_bases_size_$1_174, obsv_ds_size_$1_174);
  uint32 memop_var_175;
  memop_var_175 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[14 / 4]), obsv_ds_$1_175, obsv_ds_bases_size_$1_175, obsv_ds_size_$1_175);
  uint32 memop_var_176;
  memop_var_176 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_175 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_177;
  memop_var_177 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[15 / 4]), obsv_ds_$1_177, obsv_ds_bases_size_$1_177, obsv_ds_size_$1_177);
  uint32 memop_var_178;
  memop_var_178 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_177 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_179;
  memop_var_179 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_179, obsv_ds_bases_size_$1_179, obsv_ds_size_$1_179);
  uint32 memop_var_180;
  memop_var_180 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_179 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_181;
  memop_var_181 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_181, obsv_ds_bases_size_$1_181, obsv_ds_size_$1_181);
  uint32 memop_var_182;
  memop_var_182 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_181 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_183;
  memop_var_183 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_183, obsv_ds_bases_size_$1_183, obsv_ds_size_$1_183);
  uint32 memop_var_184;
  memop_var_184 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_183 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_176 ^ memop_var_178) ^ memop_var_180) ^ memop_var_182) ^ memop_var_184), (unsigned int *) (&schedulekeys_half_keys[0 + 3]), obsv_ds_$1_185, obsv_ds_bases_size_$1_185, obsv_ds_size_$1_185);
  uint32 memop_var_186;
  memop_var_186 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_186, obsv_ds_bases_size_$1_186, obsv_ds_size_$1_186);
  uint32 memop_var_187;
  memop_var_187 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_187, obsv_ds_bases_size_$1_187, obsv_ds_size_$1_187);
  uint32 memop_var_188;
  memop_var_188 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_187 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_189;
  memop_var_189 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_189, obsv_ds_bases_size_$1_189, obsv_ds_size_$1_189);
  uint32 memop_var_190;
  memop_var_190 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_189 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_191;
  memop_var_191 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_191, obsv_ds_bases_size_$1_191, obsv_ds_size_$1_191);
  uint32 memop_var_192;
  memop_var_192 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_191 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_193;
  memop_var_193 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_193, obsv_ds_bases_size_$1_193, obsv_ds_size_$1_193);
  uint32 memop_var_194;
  memop_var_194 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_193 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_195;
  memop_var_195 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_195, obsv_ds_bases_size_$1_195, obsv_ds_size_$1_195);
  uint32 memop_var_196;
  memop_var_196 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_195 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_186 ^ memop_var_188) ^ memop_var_190) ^ memop_var_192) ^ memop_var_194) ^ memop_var_196), (unsigned int *) schedulekeys_half_x, obsv_ds_$1_197, obsv_ds_bases_size_$1_197, obsv_ds_size_$1_197);
  uint32 memop_var_198;
  memop_var_198 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_z, obsv_ds_$1_198, obsv_ds_bases_size_$1_198, obsv_ds_size_$1_198);
  uint32 memop_var_199;
  memop_var_199 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_199, obsv_ds_bases_size_$1_199, obsv_ds_size_$1_199);
  uint32 memop_var_200;
  memop_var_200 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_199 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_201;
  memop_var_201 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_201, obsv_ds_bases_size_$1_201, obsv_ds_size_$1_201);
  uint32 memop_var_202;
  memop_var_202 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_201 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_203;
  memop_var_203 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_203, obsv_ds_bases_size_$1_203, obsv_ds_size_$1_203);
  uint32 memop_var_204;
  memop_var_204 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_203 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_205;
  memop_var_205 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_205, obsv_ds_bases_size_$1_205, obsv_ds_size_$1_205);
  uint32 memop_var_206;
  memop_var_206 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_205 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_207;
  memop_var_207 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_207, obsv_ds_bases_size_$1_207, obsv_ds_size_$1_207);
  uint32 memop_var_208;
  memop_var_208 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_207 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_198 ^ memop_var_200) ^ memop_var_202) ^ memop_var_204) ^ memop_var_206) ^ memop_var_208), (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_209, obsv_ds_bases_size_$1_209, obsv_ds_size_$1_209);
  uint32 memop_var_210;
  memop_var_210 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_210, obsv_ds_bases_size_$1_210, obsv_ds_size_$1_210);
  uint32 memop_var_211;
  memop_var_211 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_211, obsv_ds_bases_size_$1_211, obsv_ds_size_$1_211);
  uint32 memop_var_212;
  memop_var_212 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_211 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_213;
  memop_var_213 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_213, obsv_ds_bases_size_$1_213, obsv_ds_size_$1_213);
  uint32 memop_var_214;
  memop_var_214 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_213 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_215;
  memop_var_215 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_215, obsv_ds_bases_size_$1_215, obsv_ds_size_$1_215);
  uint32 memop_var_216;
  memop_var_216 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_215 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_217;
  memop_var_217 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_217, obsv_ds_bases_size_$1_217, obsv_ds_size_$1_217);
  uint32 memop_var_218;
  memop_var_218 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_217 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_219;
  memop_var_219 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_219, obsv_ds_bases_size_$1_219, obsv_ds_size_$1_219);
  uint32 memop_var_220;
  memop_var_220 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_219 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_210 ^ memop_var_212) ^ memop_var_214) ^ memop_var_216) ^ memop_var_218) ^ memop_var_220), (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_221, obsv_ds_bases_size_$1_221, obsv_ds_size_$1_221);
  uint32 memop_var_222;
  memop_var_222 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_222, obsv_ds_bases_size_$1_222, obsv_ds_size_$1_222);
  uint32 memop_var_223;
  memop_var_223 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_223, obsv_ds_bases_size_$1_223, obsv_ds_size_$1_223);
  uint32 memop_var_224;
  memop_var_224 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_223 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_225;
  memop_var_225 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_225, obsv_ds_bases_size_$1_225, obsv_ds_size_$1_225);
  uint32 memop_var_226;
  memop_var_226 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_225 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_227;
  memop_var_227 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_227, obsv_ds_bases_size_$1_227, obsv_ds_size_$1_227);
  uint32 memop_var_228;
  memop_var_228 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_227 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_229;
  memop_var_229 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_229, obsv_ds_bases_size_$1_229, obsv_ds_size_$1_229);
  uint32 memop_var_230;
  memop_var_230 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_229 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_231;
  memop_var_231 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_231, obsv_ds_bases_size_$1_231, obsv_ds_size_$1_231);
  uint32 memop_var_232;
  memop_var_232 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_231 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_222 ^ memop_var_224) ^ memop_var_226) ^ memop_var_228) ^ memop_var_230) ^ memop_var_232), (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_233, obsv_ds_bases_size_$1_233, obsv_ds_size_$1_233);
  uint32 memop_var_234;
  memop_var_234 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_234, obsv_ds_bases_size_$1_234, obsv_ds_size_$1_234);
  uint32 memop_var_235;
  memop_var_235 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_234 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_236;
  memop_var_236 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_236, obsv_ds_bases_size_$1_236, obsv_ds_size_$1_236);
  uint32 memop_var_237;
  memop_var_237 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_236 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_238;
  memop_var_238 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_238, obsv_ds_bases_size_$1_238, obsv_ds_size_$1_238);
  uint32 memop_var_239;
  memop_var_239 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_238 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_240;
  memop_var_240 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_240, obsv_ds_bases_size_$1_240, obsv_ds_size_$1_240);
  uint32 memop_var_241;
  memop_var_241 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_240 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_242;
  memop_var_242 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_242, obsv_ds_bases_size_$1_242, obsv_ds_size_$1_242);
  uint32 memop_var_243;
  memop_var_243 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_242 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_235 ^ memop_var_237) ^ memop_var_239) ^ memop_var_241) ^ memop_var_243), (unsigned int *) (&schedulekeys_half_keys[4 + 0]), obsv_ds_$1_244, obsv_ds_bases_size_$1_244, obsv_ds_size_$1_244);
  uint32 memop_var_245;
  memop_var_245 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_245, obsv_ds_bases_size_$1_245, obsv_ds_size_$1_245);
  uint32 memop_var_246;
  memop_var_246 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_245 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_247;
  memop_var_247 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_247, obsv_ds_bases_size_$1_247, obsv_ds_size_$1_247);
  uint32 memop_var_248;
  memop_var_248 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_247 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_249;
  memop_var_249 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_249, obsv_ds_bases_size_$1_249, obsv_ds_size_$1_249);
  uint32 memop_var_250;
  memop_var_250 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_249 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_251;
  memop_var_251 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_251, obsv_ds_bases_size_$1_251, obsv_ds_size_$1_251);
  uint32 memop_var_252;
  memop_var_252 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_251 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_253;
  memop_var_253 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_253, obsv_ds_bases_size_$1_253, obsv_ds_size_$1_253);
  uint32 memop_var_254;
  memop_var_254 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_253 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_246 ^ memop_var_248) ^ memop_var_250) ^ memop_var_252) ^ memop_var_254), (unsigned int *) (&schedulekeys_half_keys[4 + 1]), obsv_ds_$1_255, obsv_ds_bases_size_$1_255, obsv_ds_size_$1_255);
  uint32 memop_var_256;
  memop_var_256 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_256, obsv_ds_bases_size_$1_256, obsv_ds_size_$1_256);
  uint32 memop_var_257;
  memop_var_257 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_256 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_258;
  memop_var_258 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_258, obsv_ds_bases_size_$1_258, obsv_ds_size_$1_258);
  uint32 memop_var_259;
  memop_var_259 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_258 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_260;
  memop_var_260 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_260, obsv_ds_bases_size_$1_260, obsv_ds_size_$1_260);
  uint32 memop_var_261;
  memop_var_261 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_260 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_262;
  memop_var_262 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_262, obsv_ds_bases_size_$1_262, obsv_ds_size_$1_262);
  uint32 memop_var_263;
  memop_var_263 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_262 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_264;
  memop_var_264 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_264, obsv_ds_bases_size_$1_264, obsv_ds_size_$1_264);
  uint32 memop_var_265;
  memop_var_265 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_264 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_257 ^ memop_var_259) ^ memop_var_261) ^ memop_var_263) ^ memop_var_265), (unsigned int *) (&schedulekeys_half_keys[4 + 2]), obsv_ds_$1_266, obsv_ds_bases_size_$1_266, obsv_ds_size_$1_266);
  uint32 memop_var_267;
  memop_var_267 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_267, obsv_ds_bases_size_$1_267, obsv_ds_size_$1_267);
  uint32 memop_var_268;
  memop_var_268 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_267 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_269;
  memop_var_269 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_269, obsv_ds_bases_size_$1_269, obsv_ds_size_$1_269);
  uint32 memop_var_270;
  memop_var_270 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_269 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_271;
  memop_var_271 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_271, obsv_ds_bases_size_$1_271, obsv_ds_size_$1_271);
  uint32 memop_var_272;
  memop_var_272 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_271 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_273;
  memop_var_273 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_273, obsv_ds_bases_size_$1_273, obsv_ds_size_$1_273);
  uint32 memop_var_274;
  memop_var_274 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_273 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_275;
  memop_var_275 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_275, obsv_ds_bases_size_$1_275, obsv_ds_size_$1_275);
  uint32 memop_var_276;
  memop_var_276 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_275 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_268 ^ memop_var_270) ^ memop_var_272) ^ memop_var_274) ^ memop_var_276), (unsigned int *) (&schedulekeys_half_keys[4 + 3]), obsv_ds_$1_277, obsv_ds_bases_size_$1_277, obsv_ds_size_$1_277);
  uint32 memop_var_278;
  memop_var_278 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_278, obsv_ds_bases_size_$1_278, obsv_ds_size_$1_278);
  uint32 memop_var_279;
  memop_var_279 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_279, obsv_ds_bases_size_$1_279, obsv_ds_size_$1_279);
  uint32 memop_var_280;
  memop_var_280 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_279 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_281;
  memop_var_281 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_281, obsv_ds_bases_size_$1_281, obsv_ds_size_$1_281);
  uint32 memop_var_282;
  memop_var_282 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_281 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_283;
  memop_var_283 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_283, obsv_ds_bases_size_$1_283, obsv_ds_size_$1_283);
  uint32 memop_var_284;
  memop_var_284 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_283 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_285;
  memop_var_285 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_285, obsv_ds_bases_size_$1_285, obsv_ds_size_$1_285);
  uint32 memop_var_286;
  memop_var_286 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_285 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_287;
  memop_var_287 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_287, obsv_ds_bases_size_$1_287, obsv_ds_size_$1_287);
  uint32 memop_var_288;
  memop_var_288 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_287 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_278 ^ memop_var_280) ^ memop_var_282) ^ memop_var_284) ^ memop_var_286) ^ memop_var_288), (unsigned int *) schedulekeys_half_z, obsv_ds_$1_289, obsv_ds_bases_size_$1_289, obsv_ds_size_$1_289);
  uint32 memop_var_290;
  memop_var_290 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_290, obsv_ds_bases_size_$1_290, obsv_ds_size_$1_290);
  uint32 memop_var_291;
  memop_var_291 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_291, obsv_ds_bases_size_$1_291, obsv_ds_size_$1_291);
  uint32 memop_var_292;
  memop_var_292 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_291 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_293;
  memop_var_293 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_293, obsv_ds_bases_size_$1_293, obsv_ds_size_$1_293);
  uint32 memop_var_294;
  memop_var_294 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_293 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_295;
  memop_var_295 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_295, obsv_ds_bases_size_$1_295, obsv_ds_size_$1_295);
  uint32 memop_var_296;
  memop_var_296 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_295 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_297;
  memop_var_297 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_297, obsv_ds_bases_size_$1_297, obsv_ds_size_$1_297);
  uint32 memop_var_298;
  memop_var_298 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_297 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_299;
  memop_var_299 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_299, obsv_ds_bases_size_$1_299, obsv_ds_size_$1_299);
  uint32 memop_var_300;
  memop_var_300 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_299 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_290 ^ memop_var_292) ^ memop_var_294) ^ memop_var_296) ^ memop_var_298) ^ memop_var_300), (unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_301, obsv_ds_bases_size_$1_301, obsv_ds_size_$1_301);
  uint32 memop_var_302;
  memop_var_302 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_302, obsv_ds_bases_size_$1_302, obsv_ds_size_$1_302);
  uint32 memop_var_303;
  memop_var_303 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_303, obsv_ds_bases_size_$1_303, obsv_ds_size_$1_303);
  uint32 memop_var_304;
  memop_var_304 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_303 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_305;
  memop_var_305 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_305, obsv_ds_bases_size_$1_305, obsv_ds_size_$1_305);
  uint32 memop_var_306;
  memop_var_306 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_305 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_307;
  memop_var_307 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_307, obsv_ds_bases_size_$1_307, obsv_ds_size_$1_307);
  uint32 memop_var_308;
  memop_var_308 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_307 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_309;
  memop_var_309 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_309, obsv_ds_bases_size_$1_309, obsv_ds_size_$1_309);
  uint32 memop_var_310;
  memop_var_310 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_309 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_311;
  memop_var_311 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_311, obsv_ds_bases_size_$1_311, obsv_ds_size_$1_311);
  uint32 memop_var_312;
  memop_var_312 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_311 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_302 ^ memop_var_304) ^ memop_var_306) ^ memop_var_308) ^ memop_var_310) ^ memop_var_312), (unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_313, obsv_ds_bases_size_$1_313, obsv_ds_size_$1_313);
  uint32 memop_var_314;
  memop_var_314 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_314, obsv_ds_bases_size_$1_314, obsv_ds_size_$1_314);
  uint32 memop_var_315;
  memop_var_315 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_315, obsv_ds_bases_size_$1_315, obsv_ds_size_$1_315);
  uint32 memop_var_316;
  memop_var_316 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_315 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_317;
  memop_var_317 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_317, obsv_ds_bases_size_$1_317, obsv_ds_size_$1_317);
  uint32 memop_var_318;
  memop_var_318 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_317 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_319;
  memop_var_319 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_319, obsv_ds_bases_size_$1_319, obsv_ds_size_$1_319);
  uint32 memop_var_320;
  memop_var_320 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_319 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_321;
  memop_var_321 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_321, obsv_ds_bases_size_$1_321, obsv_ds_size_$1_321);
  uint32 memop_var_322;
  memop_var_322 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_321 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_323;
  memop_var_323 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_323, obsv_ds_bases_size_$1_323, obsv_ds_size_$1_323);
  uint32 memop_var_324;
  memop_var_324 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_323 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_314 ^ memop_var_316) ^ memop_var_318) ^ memop_var_320) ^ memop_var_322) ^ memop_var_324), (unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_325, obsv_ds_bases_size_$1_325, obsv_ds_size_$1_325);
  uint32 memop_var_326;
  memop_var_326 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_326, obsv_ds_bases_size_$1_326, obsv_ds_size_$1_326);
  uint32 memop_var_327;
  memop_var_327 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_326 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_328;
  memop_var_328 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_328, obsv_ds_bases_size_$1_328, obsv_ds_size_$1_328);
  uint32 memop_var_329;
  memop_var_329 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_328 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_330;
  memop_var_330 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_330, obsv_ds_bases_size_$1_330, obsv_ds_size_$1_330);
  uint32 memop_var_331;
  memop_var_331 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_330 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_332;
  memop_var_332 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[13 / 4]), obsv_ds_$1_332, obsv_ds_bases_size_$1_332, obsv_ds_size_$1_332);
  uint32 memop_var_333;
  memop_var_333 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_332 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_334;
  memop_var_334 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_334, obsv_ds_bases_size_$1_334, obsv_ds_size_$1_334);
  uint32 memop_var_335;
  memop_var_335 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_334 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_327 ^ memop_var_329) ^ memop_var_331) ^ memop_var_333) ^ memop_var_335), (unsigned int *) (&schedulekeys_half_keys[8 + 0]), obsv_ds_$1_336, obsv_ds_bases_size_$1_336, obsv_ds_size_$1_336);
  uint32 memop_var_337;
  memop_var_337 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_337, obsv_ds_bases_size_$1_337, obsv_ds_size_$1_337);
  uint32 memop_var_338;
  memop_var_338 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_337 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_339;
  memop_var_339 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_339, obsv_ds_bases_size_$1_339, obsv_ds_size_$1_339);
  uint32 memop_var_340;
  memop_var_340 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_339 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_341;
  memop_var_341 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[14 / 4]), obsv_ds_$1_341, obsv_ds_bases_size_$1_341, obsv_ds_size_$1_341);
  uint32 memop_var_342;
  memop_var_342 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_341 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_343;
  memop_var_343 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[15 / 4]), obsv_ds_$1_343, obsv_ds_bases_size_$1_343, obsv_ds_size_$1_343);
  uint32 memop_var_344;
  memop_var_344 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_343 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_345;
  memop_var_345 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_345, obsv_ds_bases_size_$1_345, obsv_ds_size_$1_345);
  uint32 memop_var_346;
  memop_var_346 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_345 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_338 ^ memop_var_340) ^ memop_var_342) ^ memop_var_344) ^ memop_var_346), (unsigned int *) (&schedulekeys_half_keys[8 + 1]), obsv_ds_$1_347, obsv_ds_bases_size_$1_347, obsv_ds_size_$1_347);
  uint32 memop_var_348;
  memop_var_348 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_348, obsv_ds_bases_size_$1_348, obsv_ds_size_$1_348);
  uint32 memop_var_349;
  memop_var_349 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_348 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_350;
  memop_var_350 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_350, obsv_ds_bases_size_$1_350, obsv_ds_size_$1_350);
  uint32 memop_var_351;
  memop_var_351 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_350 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_352;
  memop_var_352 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_352, obsv_ds_bases_size_$1_352, obsv_ds_size_$1_352);
  uint32 memop_var_353;
  memop_var_353 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_352 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_354;
  memop_var_354 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_354, obsv_ds_bases_size_$1_354, obsv_ds_size_$1_354);
  uint32 memop_var_355;
  memop_var_355 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_354 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_356;
  memop_var_356 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_356, obsv_ds_bases_size_$1_356, obsv_ds_size_$1_356);
  uint32 memop_var_357;
  memop_var_357 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_356 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_349 ^ memop_var_351) ^ memop_var_353) ^ memop_var_355) ^ memop_var_357), (unsigned int *) (&schedulekeys_half_keys[8 + 2]), obsv_ds_$1_358, obsv_ds_bases_size_$1_358, obsv_ds_size_$1_358);
  uint32 memop_var_359;
  memop_var_359 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_359, obsv_ds_bases_size_$1_359, obsv_ds_size_$1_359);
  uint32 memop_var_360;
  memop_var_360 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_359 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_361;
  memop_var_361 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_361, obsv_ds_bases_size_$1_361, obsv_ds_size_$1_361);
  uint32 memop_var_362;
  memop_var_362 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_361 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_363;
  memop_var_363 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_363, obsv_ds_bases_size_$1_363, obsv_ds_size_$1_363);
  uint32 memop_var_364;
  memop_var_364 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_363 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_365;
  memop_var_365 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_365, obsv_ds_bases_size_$1_365, obsv_ds_size_$1_365);
  uint32 memop_var_366;
  memop_var_366 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_365 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_367;
  memop_var_367 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_367, obsv_ds_bases_size_$1_367, obsv_ds_size_$1_367);
  uint32 memop_var_368;
  memop_var_368 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_367 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_360 ^ memop_var_362) ^ memop_var_364) ^ memop_var_366) ^ memop_var_368), (unsigned int *) (&schedulekeys_half_keys[8 + 3]), obsv_ds_$1_369, obsv_ds_bases_size_$1_369, obsv_ds_size_$1_369);
  uint32 memop_var_370;
  memop_var_370 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_370, obsv_ds_bases_size_$1_370, obsv_ds_size_$1_370);
  uint32 memop_var_371;
  memop_var_371 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_371, obsv_ds_bases_size_$1_371, obsv_ds_size_$1_371);
  uint32 memop_var_372;
  memop_var_372 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_371 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_373;
  memop_var_373 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_373, obsv_ds_bases_size_$1_373, obsv_ds_size_$1_373);
  uint32 memop_var_374;
  memop_var_374 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_373 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_375;
  memop_var_375 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_375, obsv_ds_bases_size_$1_375, obsv_ds_size_$1_375);
  uint32 memop_var_376;
  memop_var_376 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_375 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_377;
  memop_var_377 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_377, obsv_ds_bases_size_$1_377, obsv_ds_size_$1_377);
  uint32 memop_var_378;
  memop_var_378 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_377 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_379;
  memop_var_379 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_379, obsv_ds_bases_size_$1_379, obsv_ds_size_$1_379);
  uint32 memop_var_380;
  memop_var_380 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_379 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_370 ^ memop_var_372) ^ memop_var_374) ^ memop_var_376) ^ memop_var_378) ^ memop_var_380), (unsigned int *) schedulekeys_half_x, obsv_ds_$1_381, obsv_ds_bases_size_$1_381, obsv_ds_size_$1_381);
  uint32 memop_var_382;
  memop_var_382 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_z, obsv_ds_$1_382, obsv_ds_bases_size_$1_382, obsv_ds_size_$1_382);
  uint32 memop_var_383;
  memop_var_383 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_383, obsv_ds_bases_size_$1_383, obsv_ds_size_$1_383);
  uint32 memop_var_384;
  memop_var_384 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_383 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_385;
  memop_var_385 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_385, obsv_ds_bases_size_$1_385, obsv_ds_size_$1_385);
  uint32 memop_var_386;
  memop_var_386 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_385 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_387;
  memop_var_387 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_387, obsv_ds_bases_size_$1_387, obsv_ds_size_$1_387);
  uint32 memop_var_388;
  memop_var_388 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_387 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_389;
  memop_var_389 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_389, obsv_ds_bases_size_$1_389, obsv_ds_size_$1_389);
  uint32 memop_var_390;
  memop_var_390 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_389 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_391;
  memop_var_391 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_391, obsv_ds_bases_size_$1_391, obsv_ds_size_$1_391);
  uint32 memop_var_392;
  memop_var_392 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_391 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_382 ^ memop_var_384) ^ memop_var_386) ^ memop_var_388) ^ memop_var_390) ^ memop_var_392), (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_393, obsv_ds_bases_size_$1_393, obsv_ds_size_$1_393);
  uint32 memop_var_394;
  memop_var_394 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_394, obsv_ds_bases_size_$1_394, obsv_ds_size_$1_394);
  uint32 memop_var_395;
  memop_var_395 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_395, obsv_ds_bases_size_$1_395, obsv_ds_size_$1_395);
  uint32 memop_var_396;
  memop_var_396 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_395 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_397;
  memop_var_397 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_397, obsv_ds_bases_size_$1_397, obsv_ds_size_$1_397);
  uint32 memop_var_398;
  memop_var_398 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_397 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_399;
  memop_var_399 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_399, obsv_ds_bases_size_$1_399, obsv_ds_size_$1_399);
  uint32 memop_var_400;
  memop_var_400 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_399 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_401;
  memop_var_401 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_401, obsv_ds_bases_size_$1_401, obsv_ds_size_$1_401);
  uint32 memop_var_402;
  memop_var_402 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_401 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_403;
  memop_var_403 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_403, obsv_ds_bases_size_$1_403, obsv_ds_size_$1_403);
  uint32 memop_var_404;
  memop_var_404 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_403 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_394 ^ memop_var_396) ^ memop_var_398) ^ memop_var_400) ^ memop_var_402) ^ memop_var_404), (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_405, obsv_ds_bases_size_$1_405, obsv_ds_size_$1_405);
  uint32 memop_var_406;
  memop_var_406 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_406, obsv_ds_bases_size_$1_406, obsv_ds_size_$1_406);
  uint32 memop_var_407;
  memop_var_407 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_407, obsv_ds_bases_size_$1_407, obsv_ds_size_$1_407);
  uint32 memop_var_408;
  memop_var_408 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_407 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_409;
  memop_var_409 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_409, obsv_ds_bases_size_$1_409, obsv_ds_size_$1_409);
  uint32 memop_var_410;
  memop_var_410 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_409 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_411;
  memop_var_411 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_411, obsv_ds_bases_size_$1_411, obsv_ds_size_$1_411);
  uint32 memop_var_412;
  memop_var_412 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_411 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_413;
  memop_var_413 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_413, obsv_ds_bases_size_$1_413, obsv_ds_size_$1_413);
  uint32 memop_var_414;
  memop_var_414 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_413 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_415;
  memop_var_415 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_415, obsv_ds_bases_size_$1_415, obsv_ds_size_$1_415);
  uint32 memop_var_416;
  memop_var_416 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_415 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_406 ^ memop_var_408) ^ memop_var_410) ^ memop_var_412) ^ memop_var_414) ^ memop_var_416), (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_417, obsv_ds_bases_size_$1_417, obsv_ds_size_$1_417);
  uint32 memop_var_418;
  memop_var_418 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_418, obsv_ds_bases_size_$1_418, obsv_ds_size_$1_418);
  uint32 memop_var_419;
  memop_var_419 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_418 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_420;
  memop_var_420 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_420, obsv_ds_bases_size_$1_420, obsv_ds_size_$1_420);
  uint32 memop_var_421;
  memop_var_421 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_420 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_422;
  memop_var_422 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_422, obsv_ds_bases_size_$1_422, obsv_ds_size_$1_422);
  uint32 memop_var_423;
  memop_var_423 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_422 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_424;
  memop_var_424 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_424, obsv_ds_bases_size_$1_424, obsv_ds_size_$1_424);
  uint32 memop_var_425;
  memop_var_425 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_424 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_426;
  memop_var_426 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_426, obsv_ds_bases_size_$1_426, obsv_ds_size_$1_426);
  uint32 memop_var_427;
  memop_var_427 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_426 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_419 ^ memop_var_421) ^ memop_var_423) ^ memop_var_425) ^ memop_var_427), (unsigned int *) (&schedulekeys_half_keys[12 + 0]), obsv_ds_$1_428, obsv_ds_bases_size_$1_428, obsv_ds_size_$1_428);
  uint32 memop_var_429;
  memop_var_429 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_429, obsv_ds_bases_size_$1_429, obsv_ds_size_$1_429);
  uint32 memop_var_430;
  memop_var_430 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_429 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_431;
  memop_var_431 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_431, obsv_ds_bases_size_$1_431, obsv_ds_size_$1_431);
  uint32 memop_var_432;
  memop_var_432 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_431 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_433;
  memop_var_433 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_433, obsv_ds_bases_size_$1_433, obsv_ds_size_$1_433);
  uint32 memop_var_434;
  memop_var_434 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_433 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_435;
  memop_var_435 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_435, obsv_ds_bases_size_$1_435, obsv_ds_size_$1_435);
  uint32 memop_var_436;
  memop_var_436 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_435 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_437;
  memop_var_437 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_437, obsv_ds_bases_size_$1_437, obsv_ds_size_$1_437);
  uint32 memop_var_438;
  memop_var_438 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_437 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_430 ^ memop_var_432) ^ memop_var_434) ^ memop_var_436) ^ memop_var_438), (unsigned int *) (&schedulekeys_half_keys[12 + 1]), obsv_ds_$1_439, obsv_ds_bases_size_$1_439, obsv_ds_size_$1_439);
  uint32 memop_var_440;
  memop_var_440 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_440, obsv_ds_bases_size_$1_440, obsv_ds_size_$1_440);
  uint32 memop_var_441;
  memop_var_441 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_440 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_442;
  memop_var_442 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_442, obsv_ds_bases_size_$1_442, obsv_ds_size_$1_442);
  uint32 memop_var_443;
  memop_var_443 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_442 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_444;
  memop_var_444 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_444, obsv_ds_bases_size_$1_444, obsv_ds_size_$1_444);
  uint32 memop_var_445;
  memop_var_445 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_444 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_446;
  memop_var_446 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_446, obsv_ds_bases_size_$1_446, obsv_ds_size_$1_446);
  uint32 memop_var_447;
  memop_var_447 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_446 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_448;
  memop_var_448 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_448, obsv_ds_bases_size_$1_448, obsv_ds_size_$1_448);
  uint32 memop_var_449;
  memop_var_449 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_448 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_441 ^ memop_var_443) ^ memop_var_445) ^ memop_var_447) ^ memop_var_449), (unsigned int *) (&schedulekeys_half_keys[12 + 2]), obsv_ds_$1_450, obsv_ds_bases_size_$1_450, obsv_ds_size_$1_450);
  uint32 memop_var_451;
  memop_var_451 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_451, obsv_ds_bases_size_$1_451, obsv_ds_size_$1_451);
  uint32 memop_var_452;
  memop_var_452 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_451 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_453;
  memop_var_453 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_453, obsv_ds_bases_size_$1_453, obsv_ds_size_$1_453);
  uint32 memop_var_454;
  memop_var_454 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_453 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_455;
  memop_var_455 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_455, obsv_ds_bases_size_$1_455, obsv_ds_size_$1_455);
  uint32 memop_var_456;
  memop_var_456 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_455 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_457;
  memop_var_457 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_457, obsv_ds_bases_size_$1_457, obsv_ds_size_$1_457);
  uint32 memop_var_458;
  memop_var_458 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_457 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_459;
  memop_var_459 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_459, obsv_ds_bases_size_$1_459, obsv_ds_size_$1_459);
  uint32 memop_var_460;
  memop_var_460 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_459 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_452 ^ memop_var_454) ^ memop_var_456) ^ memop_var_458) ^ memop_var_460), (unsigned int *) (&schedulekeys_half_keys[12 + 3]), obsv_ds_$1_461, obsv_ds_bases_size_$1_461, obsv_ds_size_$1_461);
  uint32 memop_var_462;
  memop_var_462 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_462, obsv_ds_bases_size_$1_462, obsv_ds_size_$1_462);
  uint32_t_secure_store_single((unsigned int) memop_var_462, (unsigned int *) (&schedulekeys_half_in[0]), obsv_ds_$1_463, obsv_ds_bases_size_$1_463, obsv_ds_size_$1_463);
  uint32 memop_var_464;
  memop_var_464 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_464, obsv_ds_bases_size_$1_464, obsv_ds_size_$1_464);
  uint32_t_secure_store_single((unsigned int) memop_var_464, (unsigned int *) (&schedulekeys_half_in[1]), obsv_ds_$1_465, obsv_ds_bases_size_$1_465, obsv_ds_size_$1_465);
  uint32 memop_var_466;
  memop_var_466 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_466, obsv_ds_bases_size_$1_466, obsv_ds_size_$1_466);
  uint32_t_secure_store_single((unsigned int) memop_var_466, (unsigned int *) (&schedulekeys_half_in[2]), obsv_ds_$1_467, obsv_ds_bases_size_$1_467, obsv_ds_size_$1_467);
  uint32 memop_var_468;
  memop_var_468 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_468, obsv_ds_bases_size_$1_468, obsv_ds_size_$1_468);
  uint32_t_secure_store_single((unsigned int) memop_var_468, (unsigned int *) (&schedulekeys_half_in[3]), obsv_ds_$1_469, obsv_ds_bases_size_$1_469, obsv_ds_size_$1_469);
  ;
  ;
  schedulekeys_half_in = castschedulekeys_x;
  schedulekeys_half_keys = castschedulekeys_Kr_wide;
  uint32 memop_var_470;
  memop_var_470 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[0]), obsv_ds_$1_470, obsv_ds_bases_size_$1_470, obsv_ds_size_$1_470);
  uint32_t_secure_store_single((unsigned int) memop_var_470, (unsigned int *) schedulekeys_half_x, obsv_ds_$1_471, obsv_ds_bases_size_$1_471, obsv_ds_size_$1_471);
  uint32 memop_var_472;
  memop_var_472 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[1]), obsv_ds_$1_472, obsv_ds_bases_size_$1_472, obsv_ds_size_$1_472);
  uint32_t_secure_store_single((unsigned int) memop_var_472, (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_473, obsv_ds_bases_size_$1_473, obsv_ds_size_$1_473);
  uint32 memop_var_474;
  memop_var_474 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[2]), obsv_ds_$1_474, obsv_ds_bases_size_$1_474, obsv_ds_size_$1_474);
  uint32_t_secure_store_single((unsigned int) memop_var_474, (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_475, obsv_ds_bases_size_$1_475, obsv_ds_size_$1_475);
  uint32 memop_var_476;
  memop_var_476 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_in[3]), obsv_ds_$1_476, obsv_ds_bases_size_$1_476, obsv_ds_size_$1_476);
  uint32_t_secure_store_single((unsigned int) memop_var_476, (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_477, obsv_ds_bases_size_$1_477, obsv_ds_size_$1_477);
  uint32 memop_var_478;
  memop_var_478 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_478, obsv_ds_bases_size_$1_478, obsv_ds_size_$1_478);
  uint32 memop_var_479;
  memop_var_479 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_479, obsv_ds_bases_size_$1_479, obsv_ds_size_$1_479);
  uint32 memop_var_480;
  memop_var_480 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_479 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_481;
  memop_var_481 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_481, obsv_ds_bases_size_$1_481, obsv_ds_size_$1_481);
  uint32 memop_var_482;
  memop_var_482 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_481 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_483;
  memop_var_483 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_483, obsv_ds_bases_size_$1_483, obsv_ds_size_$1_483);
  uint32 memop_var_484;
  memop_var_484 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_483 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_485;
  memop_var_485 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_485, obsv_ds_bases_size_$1_485, obsv_ds_size_$1_485);
  uint32 memop_var_486;
  memop_var_486 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_485 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_487;
  memop_var_487 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_487, obsv_ds_bases_size_$1_487, obsv_ds_size_$1_487);
  uint32 memop_var_488;
  memop_var_488 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_487 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_478 ^ memop_var_480) ^ memop_var_482) ^ memop_var_484) ^ memop_var_486) ^ memop_var_488), (unsigned int *) schedulekeys_half_z, obsv_ds_$1_489, obsv_ds_bases_size_$1_489, obsv_ds_size_$1_489);
  uint32 memop_var_490;
  memop_var_490 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_490, obsv_ds_bases_size_$1_490, obsv_ds_size_$1_490);
  uint32 memop_var_491;
  memop_var_491 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_491, obsv_ds_bases_size_$1_491, obsv_ds_size_$1_491);
  uint32 memop_var_492;
  memop_var_492 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_491 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_493;
  memop_var_493 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_493, obsv_ds_bases_size_$1_493, obsv_ds_size_$1_493);
  uint32 memop_var_494;
  memop_var_494 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_493 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_495;
  memop_var_495 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_495, obsv_ds_bases_size_$1_495, obsv_ds_size_$1_495);
  uint32 memop_var_496;
  memop_var_496 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_495 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_497;
  memop_var_497 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_497, obsv_ds_bases_size_$1_497, obsv_ds_size_$1_497);
  uint32 memop_var_498;
  memop_var_498 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_497 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_499;
  memop_var_499 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_499, obsv_ds_bases_size_$1_499, obsv_ds_size_$1_499);
  uint32 memop_var_500;
  memop_var_500 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_499 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_490 ^ memop_var_492) ^ memop_var_494) ^ memop_var_496) ^ memop_var_498) ^ memop_var_500), (unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_501, obsv_ds_bases_size_$1_501, obsv_ds_size_$1_501);
  uint32 memop_var_502;
  memop_var_502 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_502, obsv_ds_bases_size_$1_502, obsv_ds_size_$1_502);
  uint32 memop_var_503;
  memop_var_503 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_503, obsv_ds_bases_size_$1_503, obsv_ds_size_$1_503);
  uint32 memop_var_504;
  memop_var_504 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_503 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_505;
  memop_var_505 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_505, obsv_ds_bases_size_$1_505, obsv_ds_size_$1_505);
  uint32 memop_var_506;
  memop_var_506 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_505 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_507;
  memop_var_507 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_507, obsv_ds_bases_size_$1_507, obsv_ds_size_$1_507);
  uint32 memop_var_508;
  memop_var_508 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_507 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_509;
  memop_var_509 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_509, obsv_ds_bases_size_$1_509, obsv_ds_size_$1_509);
  uint32 memop_var_510;
  memop_var_510 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_509 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_511;
  memop_var_511 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_511, obsv_ds_bases_size_$1_511, obsv_ds_size_$1_511);
  uint32 memop_var_512;
  memop_var_512 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_511 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_502 ^ memop_var_504) ^ memop_var_506) ^ memop_var_508) ^ memop_var_510) ^ memop_var_512), (unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_513, obsv_ds_bases_size_$1_513, obsv_ds_size_$1_513);
  uint32 memop_var_514;
  memop_var_514 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_514, obsv_ds_bases_size_$1_514, obsv_ds_size_$1_514);
  uint32 memop_var_515;
  memop_var_515 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_515, obsv_ds_bases_size_$1_515, obsv_ds_size_$1_515);
  uint32 memop_var_516;
  memop_var_516 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_515 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_517;
  memop_var_517 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_517, obsv_ds_bases_size_$1_517, obsv_ds_size_$1_517);
  uint32 memop_var_518;
  memop_var_518 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_517 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_519;
  memop_var_519 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_519, obsv_ds_bases_size_$1_519, obsv_ds_size_$1_519);
  uint32 memop_var_520;
  memop_var_520 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_519 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_521;
  memop_var_521 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_521, obsv_ds_bases_size_$1_521, obsv_ds_size_$1_521);
  uint32 memop_var_522;
  memop_var_522 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_521 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_523;
  memop_var_523 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_523, obsv_ds_bases_size_$1_523, obsv_ds_size_$1_523);
  uint32 memop_var_524;
  memop_var_524 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_523 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_514 ^ memop_var_516) ^ memop_var_518) ^ memop_var_520) ^ memop_var_522) ^ memop_var_524), (unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_525, obsv_ds_bases_size_$1_525, obsv_ds_size_$1_525);
  uint32 memop_var_526;
  memop_var_526 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_526, obsv_ds_bases_size_$1_526, obsv_ds_size_$1_526);
  uint32 memop_var_527;
  memop_var_527 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_526 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_528;
  memop_var_528 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_528, obsv_ds_bases_size_$1_528, obsv_ds_size_$1_528);
  uint32 memop_var_529;
  memop_var_529 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_528 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_530;
  memop_var_530 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_530, obsv_ds_bases_size_$1_530, obsv_ds_size_$1_530);
  uint32 memop_var_531;
  memop_var_531 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_530 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_532;
  memop_var_532 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_532, obsv_ds_bases_size_$1_532, obsv_ds_size_$1_532);
  uint32 memop_var_533;
  memop_var_533 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_532 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_534;
  memop_var_534 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_534, obsv_ds_bases_size_$1_534, obsv_ds_size_$1_534);
  uint32 memop_var_535;
  memop_var_535 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_534 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_527 ^ memop_var_529) ^ memop_var_531) ^ memop_var_533) ^ memop_var_535), (unsigned int *) (&schedulekeys_half_keys[0 + 0]), obsv_ds_$1_536, obsv_ds_bases_size_$1_536, obsv_ds_size_$1_536);
  uint32 memop_var_537;
  memop_var_537 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_537, obsv_ds_bases_size_$1_537, obsv_ds_size_$1_537);
  uint32 memop_var_538;
  memop_var_538 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_537 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_539;
  memop_var_539 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_539, obsv_ds_bases_size_$1_539, obsv_ds_size_$1_539);
  uint32 memop_var_540;
  memop_var_540 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_539 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_541;
  memop_var_541 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_541, obsv_ds_bases_size_$1_541, obsv_ds_size_$1_541);
  uint32 memop_var_542;
  memop_var_542 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_541 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_543;
  memop_var_543 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_543, obsv_ds_bases_size_$1_543, obsv_ds_size_$1_543);
  uint32 memop_var_544;
  memop_var_544 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_543 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_545;
  memop_var_545 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_545, obsv_ds_bases_size_$1_545, obsv_ds_size_$1_545);
  uint32 memop_var_546;
  memop_var_546 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_545 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_538 ^ memop_var_540) ^ memop_var_542) ^ memop_var_544) ^ memop_var_546), (unsigned int *) (&schedulekeys_half_keys[0 + 1]), obsv_ds_$1_547, obsv_ds_bases_size_$1_547, obsv_ds_size_$1_547);
  uint32 memop_var_548;
  memop_var_548 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_548, obsv_ds_bases_size_$1_548, obsv_ds_size_$1_548);
  uint32 memop_var_549;
  memop_var_549 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_548 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_550;
  memop_var_550 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[13 / 4]), obsv_ds_$1_550, obsv_ds_bases_size_$1_550, obsv_ds_size_$1_550);
  uint32 memop_var_551;
  memop_var_551 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_550 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_552;
  memop_var_552 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_552, obsv_ds_bases_size_$1_552, obsv_ds_size_$1_552);
  uint32 memop_var_553;
  memop_var_553 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_552 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_554;
  memop_var_554 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_554, obsv_ds_bases_size_$1_554, obsv_ds_size_$1_554);
  uint32 memop_var_555;
  memop_var_555 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_554 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_556;
  memop_var_556 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_556, obsv_ds_bases_size_$1_556, obsv_ds_size_$1_556);
  uint32 memop_var_557;
  memop_var_557 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_556 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_549 ^ memop_var_551) ^ memop_var_553) ^ memop_var_555) ^ memop_var_557), (unsigned int *) (&schedulekeys_half_keys[0 + 2]), obsv_ds_$1_558, obsv_ds_bases_size_$1_558, obsv_ds_size_$1_558);
  uint32 memop_var_559;
  memop_var_559 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[14 / 4]), obsv_ds_$1_559, obsv_ds_bases_size_$1_559, obsv_ds_size_$1_559);
  uint32 memop_var_560;
  memop_var_560 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_559 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_561;
  memop_var_561 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[15 / 4]), obsv_ds_$1_561, obsv_ds_bases_size_$1_561, obsv_ds_size_$1_561);
  uint32 memop_var_562;
  memop_var_562 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_561 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_563;
  memop_var_563 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_563, obsv_ds_bases_size_$1_563, obsv_ds_size_$1_563);
  uint32 memop_var_564;
  memop_var_564 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_563 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_565;
  memop_var_565 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_565, obsv_ds_bases_size_$1_565, obsv_ds_size_$1_565);
  uint32 memop_var_566;
  memop_var_566 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_565 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_567;
  memop_var_567 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_567, obsv_ds_bases_size_$1_567, obsv_ds_size_$1_567);
  uint32 memop_var_568;
  memop_var_568 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_567 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_560 ^ memop_var_562) ^ memop_var_564) ^ memop_var_566) ^ memop_var_568), (unsigned int *) (&schedulekeys_half_keys[0 + 3]), obsv_ds_$1_569, obsv_ds_bases_size_$1_569, obsv_ds_size_$1_569);
  uint32 memop_var_570;
  memop_var_570 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_570, obsv_ds_bases_size_$1_570, obsv_ds_size_$1_570);
  uint32 memop_var_571;
  memop_var_571 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_571, obsv_ds_bases_size_$1_571, obsv_ds_size_$1_571);
  uint32 memop_var_572;
  memop_var_572 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_571 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_573;
  memop_var_573 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_573, obsv_ds_bases_size_$1_573, obsv_ds_size_$1_573);
  uint32 memop_var_574;
  memop_var_574 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_573 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_575;
  memop_var_575 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_575, obsv_ds_bases_size_$1_575, obsv_ds_size_$1_575);
  uint32 memop_var_576;
  memop_var_576 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_575 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_577;
  memop_var_577 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_577, obsv_ds_bases_size_$1_577, obsv_ds_size_$1_577);
  uint32 memop_var_578;
  memop_var_578 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_577 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_579;
  memop_var_579 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_579, obsv_ds_bases_size_$1_579, obsv_ds_size_$1_579);
  uint32 memop_var_580;
  memop_var_580 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_579 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_570 ^ memop_var_572) ^ memop_var_574) ^ memop_var_576) ^ memop_var_578) ^ memop_var_580), (unsigned int *) schedulekeys_half_x, obsv_ds_$1_581, obsv_ds_bases_size_$1_581, obsv_ds_size_$1_581);
  uint32 memop_var_582;
  memop_var_582 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_z, obsv_ds_$1_582, obsv_ds_bases_size_$1_582, obsv_ds_size_$1_582);
  uint32 memop_var_583;
  memop_var_583 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_583, obsv_ds_bases_size_$1_583, obsv_ds_size_$1_583);
  uint32 memop_var_584;
  memop_var_584 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_583 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_585;
  memop_var_585 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_585, obsv_ds_bases_size_$1_585, obsv_ds_size_$1_585);
  uint32 memop_var_586;
  memop_var_586 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_585 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_587;
  memop_var_587 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_587, obsv_ds_bases_size_$1_587, obsv_ds_size_$1_587);
  uint32 memop_var_588;
  memop_var_588 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_587 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_589;
  memop_var_589 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_589, obsv_ds_bases_size_$1_589, obsv_ds_size_$1_589);
  uint32 memop_var_590;
  memop_var_590 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_589 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_591;
  memop_var_591 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_591, obsv_ds_bases_size_$1_591, obsv_ds_size_$1_591);
  uint32 memop_var_592;
  memop_var_592 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_591 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_582 ^ memop_var_584) ^ memop_var_586) ^ memop_var_588) ^ memop_var_590) ^ memop_var_592), (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_593, obsv_ds_bases_size_$1_593, obsv_ds_size_$1_593);
  uint32 memop_var_594;
  memop_var_594 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_594, obsv_ds_bases_size_$1_594, obsv_ds_size_$1_594);
  uint32 memop_var_595;
  memop_var_595 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_595, obsv_ds_bases_size_$1_595, obsv_ds_size_$1_595);
  uint32 memop_var_596;
  memop_var_596 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_595 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_597;
  memop_var_597 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_597, obsv_ds_bases_size_$1_597, obsv_ds_size_$1_597);
  uint32 memop_var_598;
  memop_var_598 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_597 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_599;
  memop_var_599 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_599, obsv_ds_bases_size_$1_599, obsv_ds_size_$1_599);
  uint32 memop_var_600;
  memop_var_600 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_599 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_601;
  memop_var_601 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_601, obsv_ds_bases_size_$1_601, obsv_ds_size_$1_601);
  uint32 memop_var_602;
  memop_var_602 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_601 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_603;
  memop_var_603 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_603, obsv_ds_bases_size_$1_603, obsv_ds_size_$1_603);
  uint32 memop_var_604;
  memop_var_604 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_603 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_594 ^ memop_var_596) ^ memop_var_598) ^ memop_var_600) ^ memop_var_602) ^ memop_var_604), (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_605, obsv_ds_bases_size_$1_605, obsv_ds_size_$1_605);
  uint32 memop_var_606;
  memop_var_606 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_606, obsv_ds_bases_size_$1_606, obsv_ds_size_$1_606);
  uint32 memop_var_607;
  memop_var_607 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_607, obsv_ds_bases_size_$1_607, obsv_ds_size_$1_607);
  uint32 memop_var_608;
  memop_var_608 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_607 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_609;
  memop_var_609 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_609, obsv_ds_bases_size_$1_609, obsv_ds_size_$1_609);
  uint32 memop_var_610;
  memop_var_610 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_609 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_611;
  memop_var_611 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_611, obsv_ds_bases_size_$1_611, obsv_ds_size_$1_611);
  uint32 memop_var_612;
  memop_var_612 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_611 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_613;
  memop_var_613 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_613, obsv_ds_bases_size_$1_613, obsv_ds_size_$1_613);
  uint32 memop_var_614;
  memop_var_614 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_613 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_615;
  memop_var_615 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_615, obsv_ds_bases_size_$1_615, obsv_ds_size_$1_615);
  uint32 memop_var_616;
  memop_var_616 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_615 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_606 ^ memop_var_608) ^ memop_var_610) ^ memop_var_612) ^ memop_var_614) ^ memop_var_616), (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_617, obsv_ds_bases_size_$1_617, obsv_ds_size_$1_617);
  uint32 memop_var_618;
  memop_var_618 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_618, obsv_ds_bases_size_$1_618, obsv_ds_size_$1_618);
  uint32 memop_var_619;
  memop_var_619 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_618 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_620;
  memop_var_620 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_620, obsv_ds_bases_size_$1_620, obsv_ds_size_$1_620);
  uint32 memop_var_621;
  memop_var_621 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_620 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_622;
  memop_var_622 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_622, obsv_ds_bases_size_$1_622, obsv_ds_size_$1_622);
  uint32 memop_var_623;
  memop_var_623 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_622 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_624;
  memop_var_624 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_624, obsv_ds_bases_size_$1_624, obsv_ds_size_$1_624);
  uint32 memop_var_625;
  memop_var_625 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_624 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_626;
  memop_var_626 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_626, obsv_ds_bases_size_$1_626, obsv_ds_size_$1_626);
  uint32 memop_var_627;
  memop_var_627 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_626 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_619 ^ memop_var_621) ^ memop_var_623) ^ memop_var_625) ^ memop_var_627), (unsigned int *) (&schedulekeys_half_keys[4 + 0]), obsv_ds_$1_628, obsv_ds_bases_size_$1_628, obsv_ds_size_$1_628);
  uint32 memop_var_629;
  memop_var_629 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_629, obsv_ds_bases_size_$1_629, obsv_ds_size_$1_629);
  uint32 memop_var_630;
  memop_var_630 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_629 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_631;
  memop_var_631 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_631, obsv_ds_bases_size_$1_631, obsv_ds_size_$1_631);
  uint32 memop_var_632;
  memop_var_632 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_631 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_633;
  memop_var_633 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_633, obsv_ds_bases_size_$1_633, obsv_ds_size_$1_633);
  uint32 memop_var_634;
  memop_var_634 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_633 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_635;
  memop_var_635 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_635, obsv_ds_bases_size_$1_635, obsv_ds_size_$1_635);
  uint32 memop_var_636;
  memop_var_636 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_635 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_637;
  memop_var_637 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_637, obsv_ds_bases_size_$1_637, obsv_ds_size_$1_637);
  uint32 memop_var_638;
  memop_var_638 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_637 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_630 ^ memop_var_632) ^ memop_var_634) ^ memop_var_636) ^ memop_var_638), (unsigned int *) (&schedulekeys_half_keys[4 + 1]), obsv_ds_$1_639, obsv_ds_bases_size_$1_639, obsv_ds_size_$1_639);
  uint32 memop_var_640;
  memop_var_640 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_640, obsv_ds_bases_size_$1_640, obsv_ds_size_$1_640);
  uint32 memop_var_641;
  memop_var_641 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_640 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_642;
  memop_var_642 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_642, obsv_ds_bases_size_$1_642, obsv_ds_size_$1_642);
  uint32 memop_var_643;
  memop_var_643 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_642 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_644;
  memop_var_644 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_644, obsv_ds_bases_size_$1_644, obsv_ds_size_$1_644);
  uint32 memop_var_645;
  memop_var_645 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_644 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_646;
  memop_var_646 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_646, obsv_ds_bases_size_$1_646, obsv_ds_size_$1_646);
  uint32 memop_var_647;
  memop_var_647 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_646 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_648;
  memop_var_648 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_648, obsv_ds_bases_size_$1_648, obsv_ds_size_$1_648);
  uint32 memop_var_649;
  memop_var_649 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_648 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_641 ^ memop_var_643) ^ memop_var_645) ^ memop_var_647) ^ memop_var_649), (unsigned int *) (&schedulekeys_half_keys[4 + 2]), obsv_ds_$1_650, obsv_ds_bases_size_$1_650, obsv_ds_size_$1_650);
  uint32 memop_var_651;
  memop_var_651 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_651, obsv_ds_bases_size_$1_651, obsv_ds_size_$1_651);
  uint32 memop_var_652;
  memop_var_652 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_651 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_653;
  memop_var_653 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_653, obsv_ds_bases_size_$1_653, obsv_ds_size_$1_653);
  uint32 memop_var_654;
  memop_var_654 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_653 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_655;
  memop_var_655 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_655, obsv_ds_bases_size_$1_655, obsv_ds_size_$1_655);
  uint32 memop_var_656;
  memop_var_656 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_655 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_657;
  memop_var_657 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_657, obsv_ds_bases_size_$1_657, obsv_ds_size_$1_657);
  uint32 memop_var_658;
  memop_var_658 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_657 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_659;
  memop_var_659 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_659, obsv_ds_bases_size_$1_659, obsv_ds_size_$1_659);
  uint32 memop_var_660;
  memop_var_660 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_659 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_652 ^ memop_var_654) ^ memop_var_656) ^ memop_var_658) ^ memop_var_660), (unsigned int *) (&schedulekeys_half_keys[4 + 3]), obsv_ds_$1_661, obsv_ds_bases_size_$1_661, obsv_ds_size_$1_661);
  uint32 memop_var_662;
  memop_var_662 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_662, obsv_ds_bases_size_$1_662, obsv_ds_size_$1_662);
  uint32 memop_var_663;
  memop_var_663 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_663, obsv_ds_bases_size_$1_663, obsv_ds_size_$1_663);
  uint32 memop_var_664;
  memop_var_664 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_663 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_665;
  memop_var_665 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_665, obsv_ds_bases_size_$1_665, obsv_ds_size_$1_665);
  uint32 memop_var_666;
  memop_var_666 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_665 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_667;
  memop_var_667 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_667, obsv_ds_bases_size_$1_667, obsv_ds_size_$1_667);
  uint32 memop_var_668;
  memop_var_668 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_667 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_669;
  memop_var_669 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_669, obsv_ds_bases_size_$1_669, obsv_ds_size_$1_669);
  uint32 memop_var_670;
  memop_var_670 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_669 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_671;
  memop_var_671 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_671, obsv_ds_bases_size_$1_671, obsv_ds_size_$1_671);
  uint32 memop_var_672;
  memop_var_672 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_671 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_662 ^ memop_var_664) ^ memop_var_666) ^ memop_var_668) ^ memop_var_670) ^ memop_var_672), (unsigned int *) schedulekeys_half_z, obsv_ds_$1_673, obsv_ds_bases_size_$1_673, obsv_ds_size_$1_673);
  uint32 memop_var_674;
  memop_var_674 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_674, obsv_ds_bases_size_$1_674, obsv_ds_size_$1_674);
  uint32 memop_var_675;
  memop_var_675 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_675, obsv_ds_bases_size_$1_675, obsv_ds_size_$1_675);
  uint32 memop_var_676;
  memop_var_676 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_675 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_677;
  memop_var_677 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_677, obsv_ds_bases_size_$1_677, obsv_ds_size_$1_677);
  uint32 memop_var_678;
  memop_var_678 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_677 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_679;
  memop_var_679 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_679, obsv_ds_bases_size_$1_679, obsv_ds_size_$1_679);
  uint32 memop_var_680;
  memop_var_680 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_679 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_681;
  memop_var_681 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_681, obsv_ds_bases_size_$1_681, obsv_ds_size_$1_681);
  uint32 memop_var_682;
  memop_var_682 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_681 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_683;
  memop_var_683 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_683, obsv_ds_bases_size_$1_683, obsv_ds_size_$1_683);
  uint32 memop_var_684;
  memop_var_684 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_683 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_674 ^ memop_var_676) ^ memop_var_678) ^ memop_var_680) ^ memop_var_682) ^ memop_var_684), (unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_685, obsv_ds_bases_size_$1_685, obsv_ds_size_$1_685);
  uint32 memop_var_686;
  memop_var_686 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_686, obsv_ds_bases_size_$1_686, obsv_ds_size_$1_686);
  uint32 memop_var_687;
  memop_var_687 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_687, obsv_ds_bases_size_$1_687, obsv_ds_size_$1_687);
  uint32 memop_var_688;
  memop_var_688 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_687 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_689;
  memop_var_689 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_689, obsv_ds_bases_size_$1_689, obsv_ds_size_$1_689);
  uint32 memop_var_690;
  memop_var_690 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_689 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_691;
  memop_var_691 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_691, obsv_ds_bases_size_$1_691, obsv_ds_size_$1_691);
  uint32 memop_var_692;
  memop_var_692 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_691 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_693;
  memop_var_693 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_693, obsv_ds_bases_size_$1_693, obsv_ds_size_$1_693);
  uint32 memop_var_694;
  memop_var_694 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_693 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_695;
  memop_var_695 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_695, obsv_ds_bases_size_$1_695, obsv_ds_size_$1_695);
  uint32 memop_var_696;
  memop_var_696 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_695 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_686 ^ memop_var_688) ^ memop_var_690) ^ memop_var_692) ^ memop_var_694) ^ memop_var_696), (unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_697, obsv_ds_bases_size_$1_697, obsv_ds_size_$1_697);
  uint32 memop_var_698;
  memop_var_698 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_698, obsv_ds_bases_size_$1_698, obsv_ds_size_$1_698);
  uint32 memop_var_699;
  memop_var_699 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_699, obsv_ds_bases_size_$1_699, obsv_ds_size_$1_699);
  uint32 memop_var_700;
  memop_var_700 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_699 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_701;
  memop_var_701 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_701, obsv_ds_bases_size_$1_701, obsv_ds_size_$1_701);
  uint32 memop_var_702;
  memop_var_702 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_701 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_703;
  memop_var_703 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_703, obsv_ds_bases_size_$1_703, obsv_ds_size_$1_703);
  uint32 memop_var_704;
  memop_var_704 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_703 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_705;
  memop_var_705 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_705, obsv_ds_bases_size_$1_705, obsv_ds_size_$1_705);
  uint32 memop_var_706;
  memop_var_706 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_705 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_707;
  memop_var_707 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_707, obsv_ds_bases_size_$1_707, obsv_ds_size_$1_707);
  uint32 memop_var_708;
  memop_var_708 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_707 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_698 ^ memop_var_700) ^ memop_var_702) ^ memop_var_704) ^ memop_var_706) ^ memop_var_708), (unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_709, obsv_ds_bases_size_$1_709, obsv_ds_size_$1_709);
  uint32 memop_var_710;
  memop_var_710 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_710, obsv_ds_bases_size_$1_710, obsv_ds_size_$1_710);
  uint32 memop_var_711;
  memop_var_711 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_710 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_712;
  memop_var_712 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_712, obsv_ds_bases_size_$1_712, obsv_ds_size_$1_712);
  uint32 memop_var_713;
  memop_var_713 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_712 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_714;
  memop_var_714 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_714, obsv_ds_bases_size_$1_714, obsv_ds_size_$1_714);
  uint32 memop_var_715;
  memop_var_715 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_714 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_716;
  memop_var_716 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[13 / 4]), obsv_ds_$1_716, obsv_ds_bases_size_$1_716, obsv_ds_size_$1_716);
  uint32 memop_var_717;
  memop_var_717 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_716 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_718;
  memop_var_718 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_718, obsv_ds_bases_size_$1_718, obsv_ds_size_$1_718);
  uint32 memop_var_719;
  memop_var_719 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_718 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_711 ^ memop_var_713) ^ memop_var_715) ^ memop_var_717) ^ memop_var_719), (unsigned int *) (&schedulekeys_half_keys[8 + 0]), obsv_ds_$1_720, obsv_ds_bases_size_$1_720, obsv_ds_size_$1_720);
  uint32 memop_var_721;
  memop_var_721 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_721, obsv_ds_bases_size_$1_721, obsv_ds_size_$1_721);
  uint32 memop_var_722;
  memop_var_722 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_721 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_723;
  memop_var_723 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_723, obsv_ds_bases_size_$1_723, obsv_ds_size_$1_723);
  uint32 memop_var_724;
  memop_var_724 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_723 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_725;
  memop_var_725 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[14 / 4]), obsv_ds_$1_725, obsv_ds_bases_size_$1_725, obsv_ds_size_$1_725);
  uint32 memop_var_726;
  memop_var_726 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_725 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_727;
  memop_var_727 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[15 / 4]), obsv_ds_$1_727, obsv_ds_bases_size_$1_727, obsv_ds_size_$1_727);
  uint32 memop_var_728;
  memop_var_728 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_727 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_729;
  memop_var_729 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[12 / 4]), obsv_ds_$1_729, obsv_ds_bases_size_$1_729, obsv_ds_size_$1_729);
  uint32 memop_var_730;
  memop_var_730 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_729 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_722 ^ memop_var_724) ^ memop_var_726) ^ memop_var_728) ^ memop_var_730), (unsigned int *) (&schedulekeys_half_keys[8 + 1]), obsv_ds_$1_731, obsv_ds_bases_size_$1_731, obsv_ds_size_$1_731);
  uint32 memop_var_732;
  memop_var_732 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_732, obsv_ds_bases_size_$1_732, obsv_ds_size_$1_732);
  uint32 memop_var_733;
  memop_var_733 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_732 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_734;
  memop_var_734 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_734, obsv_ds_bases_size_$1_734, obsv_ds_size_$1_734);
  uint32 memop_var_735;
  memop_var_735 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_734 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_736;
  memop_var_736 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[8 / 4]), obsv_ds_$1_736, obsv_ds_bases_size_$1_736, obsv_ds_size_$1_736);
  uint32 memop_var_737;
  memop_var_737 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_736 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_738;
  memop_var_738 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[9 / 4]), obsv_ds_$1_738, obsv_ds_bases_size_$1_738, obsv_ds_size_$1_738);
  uint32 memop_var_739;
  memop_var_739 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_738 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_740;
  memop_var_740 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_740, obsv_ds_bases_size_$1_740, obsv_ds_size_$1_740);
  uint32 memop_var_741;
  memop_var_741 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_740 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_733 ^ memop_var_735) ^ memop_var_737) ^ memop_var_739) ^ memop_var_741), (unsigned int *) (&schedulekeys_half_keys[8 + 2]), obsv_ds_$1_742, obsv_ds_bases_size_$1_742, obsv_ds_size_$1_742);
  uint32 memop_var_743;
  memop_var_743 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_743, obsv_ds_bases_size_$1_743, obsv_ds_size_$1_743);
  uint32 memop_var_744;
  memop_var_744 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_743 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_745;
  memop_var_745 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_745, obsv_ds_bases_size_$1_745, obsv_ds_size_$1_745);
  uint32 memop_var_746;
  memop_var_746 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_745 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_747;
  memop_var_747 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[10 / 4]), obsv_ds_$1_747, obsv_ds_bases_size_$1_747, obsv_ds_size_$1_747);
  uint32 memop_var_748;
  memop_var_748 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_747 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_749;
  memop_var_749 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[11 / 4]), obsv_ds_$1_749, obsv_ds_bases_size_$1_749, obsv_ds_size_$1_749);
  uint32 memop_var_750;
  memop_var_750 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_749 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_751;
  memop_var_751 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_751, obsv_ds_bases_size_$1_751, obsv_ds_size_$1_751);
  uint32 memop_var_752;
  memop_var_752 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_751 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_744 ^ memop_var_746) ^ memop_var_748) ^ memop_var_750) ^ memop_var_752), (unsigned int *) (&schedulekeys_half_keys[8 + 3]), obsv_ds_$1_753, obsv_ds_bases_size_$1_753, obsv_ds_size_$1_753);
  uint32 memop_var_754;
  memop_var_754 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2]), obsv_ds_$1_754, obsv_ds_bases_size_$1_754, obsv_ds_size_$1_754);
  uint32 memop_var_755;
  memop_var_755 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[5 / 4]), obsv_ds_$1_755, obsv_ds_bases_size_$1_755, obsv_ds_size_$1_755);
  uint32 memop_var_756;
  memop_var_756 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_755 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_757;
  memop_var_757 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[7 / 4]), obsv_ds_$1_757, obsv_ds_bases_size_$1_757, obsv_ds_size_$1_757);
  uint32 memop_var_758;
  memop_var_758 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_757 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_759;
  memop_var_759 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[4 / 4]), obsv_ds_$1_759, obsv_ds_bases_size_$1_759, obsv_ds_size_$1_759);
  uint32 memop_var_760;
  memop_var_760 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_759 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_761;
  memop_var_761 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[6 / 4]), obsv_ds_$1_761, obsv_ds_bases_size_$1_761, obsv_ds_size_$1_761);
  uint32 memop_var_762;
  memop_var_762 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_761 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_763;
  memop_var_763 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[0 / 4]), obsv_ds_$1_763, obsv_ds_bases_size_$1_763, obsv_ds_size_$1_763);
  uint32 memop_var_764;
  memop_var_764 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_763 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_754 ^ memop_var_756) ^ memop_var_758) ^ memop_var_760) ^ memop_var_762) ^ memop_var_764), (unsigned int *) schedulekeys_half_x, obsv_ds_$1_765, obsv_ds_bases_size_$1_765, obsv_ds_size_$1_765);
  uint32 memop_var_766;
  memop_var_766 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_z, obsv_ds_$1_766, obsv_ds_bases_size_$1_766, obsv_ds_size_$1_766);
  uint32 memop_var_767;
  memop_var_767 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_767, obsv_ds_bases_size_$1_767, obsv_ds_size_$1_767);
  uint32 memop_var_768;
  memop_var_768 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_767 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_769;
  memop_var_769 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_769, obsv_ds_bases_size_$1_769, obsv_ds_size_$1_769);
  uint32 memop_var_770;
  memop_var_770 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_769 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_771;
  memop_var_771 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_771, obsv_ds_bases_size_$1_771, obsv_ds_size_$1_771);
  uint32 memop_var_772;
  memop_var_772 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_771 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_773;
  memop_var_773 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_773, obsv_ds_bases_size_$1_773, obsv_ds_size_$1_773);
  uint32 memop_var_774;
  memop_var_774 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_773 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_775;
  memop_var_775 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[2 / 4]), obsv_ds_$1_775, obsv_ds_bases_size_$1_775, obsv_ds_size_$1_775);
  uint32 memop_var_776;
  memop_var_776 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_775 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_766 ^ memop_var_768) ^ memop_var_770) ^ memop_var_772) ^ memop_var_774) ^ memop_var_776), (unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_777, obsv_ds_bases_size_$1_777, obsv_ds_size_$1_777);
  uint32 memop_var_778;
  memop_var_778 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1]), obsv_ds_$1_778, obsv_ds_bases_size_$1_778, obsv_ds_size_$1_778);
  uint32 memop_var_779;
  memop_var_779 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_779, obsv_ds_bases_size_$1_779, obsv_ds_size_$1_779);
  uint32 memop_var_780;
  memop_var_780 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_779 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_781;
  memop_var_781 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_781, obsv_ds_bases_size_$1_781, obsv_ds_size_$1_781);
  uint32 memop_var_782;
  memop_var_782 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_781 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_783;
  memop_var_783 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_783, obsv_ds_bases_size_$1_783, obsv_ds_size_$1_783);
  uint32 memop_var_784;
  memop_var_784 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_783 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_785;
  memop_var_785 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_785, obsv_ds_bases_size_$1_785, obsv_ds_size_$1_785);
  uint32 memop_var_786;
  memop_var_786 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_785 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_787;
  memop_var_787 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[1 / 4]), obsv_ds_$1_787, obsv_ds_bases_size_$1_787, obsv_ds_size_$1_787);
  uint32 memop_var_788;
  memop_var_788 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_787 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_778 ^ memop_var_780) ^ memop_var_782) ^ memop_var_784) ^ memop_var_786) ^ memop_var_788), (unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_789, obsv_ds_bases_size_$1_789, obsv_ds_size_$1_789);
  uint32 memop_var_790;
  memop_var_790 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3]), obsv_ds_$1_790, obsv_ds_bases_size_$1_790, obsv_ds_size_$1_790);
  uint32 memop_var_791;
  memop_var_791 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_791, obsv_ds_bases_size_$1_791, obsv_ds_size_$1_791);
  uint32 memop_var_792;
  memop_var_792 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_791 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_793;
  memop_var_793 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_793, obsv_ds_bases_size_$1_793, obsv_ds_size_$1_793);
  uint32 memop_var_794;
  memop_var_794 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_793 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_795;
  memop_var_795 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_795, obsv_ds_bases_size_$1_795, obsv_ds_size_$1_795);
  uint32 memop_var_796;
  memop_var_796 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_795 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_797;
  memop_var_797 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_797, obsv_ds_bases_size_$1_797, obsv_ds_size_$1_797);
  uint32 memop_var_798;
  memop_var_798 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_797 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_799;
  memop_var_799 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_z[3 / 4]), obsv_ds_$1_799, obsv_ds_bases_size_$1_799, obsv_ds_size_$1_799);
  uint32 memop_var_800;
  memop_var_800 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_799 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) (((((memop_var_790 ^ memop_var_792) ^ memop_var_794) ^ memop_var_796) ^ memop_var_798) ^ memop_var_800), (unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_801, obsv_ds_bases_size_$1_801, obsv_ds_size_$1_801);
  uint32 memop_var_802;
  memop_var_802 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_802, obsv_ds_bases_size_$1_802, obsv_ds_size_$1_802);
  uint32 memop_var_803;
  memop_var_803 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_802 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_804;
  memop_var_804 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[9 / 4]), obsv_ds_$1_804, obsv_ds_bases_size_$1_804, obsv_ds_size_$1_804);
  uint32 memop_var_805;
  memop_var_805 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_804 >> (24 - ((9 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_806;
  memop_var_806 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_806, obsv_ds_bases_size_$1_806, obsv_ds_size_$1_806);
  uint32 memop_var_807;
  memop_var_807 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_806 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_808;
  memop_var_808 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[6 / 4]), obsv_ds_$1_808, obsv_ds_bases_size_$1_808, obsv_ds_size_$1_808);
  uint32 memop_var_809;
  memop_var_809 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_808 >> (24 - ((6 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_810;
  memop_var_810 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_810, obsv_ds_bases_size_$1_810, obsv_ds_size_$1_810);
  uint32 memop_var_811;
  memop_var_811 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_810 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_803 ^ memop_var_805) ^ memop_var_807) ^ memop_var_809) ^ memop_var_811), (unsigned int *) (&schedulekeys_half_keys[12 + 0]), obsv_ds_$1_812, obsv_ds_bases_size_$1_812, obsv_ds_size_$1_812);
  uint32 memop_var_813;
  memop_var_813 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[10 / 4]), obsv_ds_$1_813, obsv_ds_bases_size_$1_813, obsv_ds_size_$1_813);
  uint32 memop_var_814;
  memop_var_814 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_813 >> (24 - ((10 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_815;
  memop_var_815 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[11 / 4]), obsv_ds_$1_815, obsv_ds_bases_size_$1_815, obsv_ds_size_$1_815);
  uint32 memop_var_816;
  memop_var_816 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_815 >> (24 - ((11 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_817;
  memop_var_817 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[5 / 4]), obsv_ds_$1_817, obsv_ds_bases_size_$1_817, obsv_ds_size_$1_817);
  uint32 memop_var_818;
  memop_var_818 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_817 >> (24 - ((5 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_819;
  memop_var_819 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[4 / 4]), obsv_ds_$1_819, obsv_ds_bases_size_$1_819, obsv_ds_size_$1_819);
  uint32 memop_var_820;
  memop_var_820 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_819 >> (24 - ((4 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_821;
  memop_var_821 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[7 / 4]), obsv_ds_$1_821, obsv_ds_bases_size_$1_821, obsv_ds_size_$1_821);
  uint32 memop_var_822;
  memop_var_822 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_821 >> (24 - ((7 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_814 ^ memop_var_816) ^ memop_var_818) ^ memop_var_820) ^ memop_var_822), (unsigned int *) (&schedulekeys_half_keys[12 + 1]), obsv_ds_$1_823, obsv_ds_bases_size_$1_823, obsv_ds_size_$1_823);
  uint32 memop_var_824;
  memop_var_824 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[12 / 4]), obsv_ds_$1_824, obsv_ds_bases_size_$1_824, obsv_ds_size_$1_824);
  uint32 memop_var_825;
  memop_var_825 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_824 >> (24 - ((12 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_826;
  memop_var_826 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_826, obsv_ds_bases_size_$1_826, obsv_ds_size_$1_826);
  uint32 memop_var_827;
  memop_var_827 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_826 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_828;
  memop_var_828 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3 / 4]), obsv_ds_$1_828, obsv_ds_bases_size_$1_828, obsv_ds_size_$1_828);
  uint32 memop_var_829;
  memop_var_829 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_828 >> (24 - ((3 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_830;
  memop_var_830 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2 / 4]), obsv_ds_$1_830, obsv_ds_bases_size_$1_830, obsv_ds_size_$1_830);
  uint32 memop_var_831;
  memop_var_831 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_830 >> (24 - ((2 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_832;
  memop_var_832 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[8 / 4]), obsv_ds_$1_832, obsv_ds_bases_size_$1_832, obsv_ds_size_$1_832);
  uint32 memop_var_833;
  memop_var_833 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_832 >> (24 - ((8 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_825 ^ memop_var_827) ^ memop_var_829) ^ memop_var_831) ^ memop_var_833), (unsigned int *) (&schedulekeys_half_keys[12 + 2]), obsv_ds_$1_834, obsv_ds_bases_size_$1_834, obsv_ds_size_$1_834);
  uint32 memop_var_835;
  memop_var_835 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[14 / 4]), obsv_ds_$1_835, obsv_ds_bases_size_$1_835, obsv_ds_size_$1_835);
  uint32 memop_var_836;
  memop_var_836 = uint32_t_secure_load_onebase((unsigned int *) (&S5[(signed int) ((memop_var_835 >> (24 - ((14 & 3) * 8))) & 255u)]), (char *) S5, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_837;
  memop_var_837 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[15 / 4]), obsv_ds_$1_837, obsv_ds_bases_size_$1_837, obsv_ds_size_$1_837);
  uint32 memop_var_838;
  memop_var_838 = uint32_t_secure_load_onebase((unsigned int *) (&S6[(signed int) ((memop_var_837 >> (24 - ((15 & 3) * 8))) & 255u)]), (char *) S6, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_839;
  memop_var_839 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1 / 4]), obsv_ds_$1_839, obsv_ds_bases_size_$1_839, obsv_ds_size_$1_839);
  uint32 memop_var_840;
  memop_var_840 = uint32_t_secure_load_onebase((unsigned int *) (&S7[(signed int) ((memop_var_839 >> (24 - ((1 & 3) * 8))) & 255u)]), (char *) S7, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_841;
  memop_var_841 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[0 / 4]), obsv_ds_$1_841, obsv_ds_bases_size_$1_841, obsv_ds_size_$1_841);
  uint32 memop_var_842;
  memop_var_842 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_841 >> (24 - ((0 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_843;
  memop_var_843 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[13 / 4]), obsv_ds_$1_843, obsv_ds_bases_size_$1_843, obsv_ds_size_$1_843);
  uint32 memop_var_844;
  memop_var_844 = uint32_t_secure_load_onebase((unsigned int *) (&S8[(signed int) ((memop_var_843 >> (24 - ((13 & 3) * 8))) & 255u)]), (char *) S8, 0, 256, 0, 0, 1020, 0, 0);
  uint32_t_secure_store_single((unsigned int) ((((memop_var_836 ^ memop_var_838) ^ memop_var_840) ^ memop_var_842) ^ memop_var_844), (unsigned int *) (&schedulekeys_half_keys[12 + 3]), obsv_ds_$1_845, obsv_ds_bases_size_$1_845, obsv_ds_size_$1_845);
  uint32 memop_var_846;
  memop_var_846 = uint32_t_secure_load_single((unsigned int *) schedulekeys_half_x, obsv_ds_$1_846, obsv_ds_bases_size_$1_846, obsv_ds_size_$1_846);
  uint32_t_secure_store_single((unsigned int) memop_var_846, (unsigned int *) (&schedulekeys_half_in[0]), obsv_ds_$1_847, obsv_ds_bases_size_$1_847, obsv_ds_size_$1_847);
  uint32 memop_var_848;
  memop_var_848 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[1]), obsv_ds_$1_848, obsv_ds_bases_size_$1_848, obsv_ds_size_$1_848);
  uint32_t_secure_store_single((unsigned int) memop_var_848, (unsigned int *) (&schedulekeys_half_in[1]), obsv_ds_$1_849, obsv_ds_bases_size_$1_849, obsv_ds_size_$1_849);
  uint32 memop_var_850;
  memop_var_850 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[2]), obsv_ds_$1_850, obsv_ds_bases_size_$1_850, obsv_ds_size_$1_850);
  uint32_t_secure_store_single((unsigned int) memop_var_850, (unsigned int *) (&schedulekeys_half_in[2]), obsv_ds_$1_851, obsv_ds_bases_size_$1_851, obsv_ds_size_$1_851);
  uint32 memop_var_852;
  memop_var_852 = uint32_t_secure_load_single((unsigned int *) (&schedulekeys_half_x[3]), obsv_ds_$1_852, obsv_ds_bases_size_$1_852, obsv_ds_size_$1_852);
  uint32_t_secure_store_single((unsigned int) memop_var_852, (unsigned int *) (&schedulekeys_half_in[3]), obsv_ds_$1_853, obsv_ds_bases_size_$1_853, obsv_ds_size_$1_853);
  ;
  castschedulekeys_i = 0;
  uint32 memop_var_854;
  memop_var_854 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_854, obsv_ds_bases_size_$1_854, obsv_ds_size_$1_854);
  uint8_t_secure_store_single((uint8) (memop_var_854 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_855, obsv_ds_bases_size_$1_855, obsv_ds_size_$1_855);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_856;
  memop_var_856 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_856, obsv_ds_bases_size_$1_856, obsv_ds_size_$1_856);
  uint8_t_secure_store_single((uint8) (memop_var_856 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_857, obsv_ds_bases_size_$1_857, obsv_ds_size_$1_857);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_858;
  memop_var_858 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_858, obsv_ds_bases_size_$1_858, obsv_ds_size_$1_858);
  uint8_t_secure_store_single((uint8) (memop_var_858 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_859, obsv_ds_bases_size_$1_859, obsv_ds_size_$1_859);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_860;
  memop_var_860 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_860, obsv_ds_bases_size_$1_860, obsv_ds_size_$1_860);
  uint8_t_secure_store_single((uint8) (memop_var_860 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_861, obsv_ds_bases_size_$1_861, obsv_ds_size_$1_861);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_862;
  memop_var_862 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_862, obsv_ds_bases_size_$1_862, obsv_ds_size_$1_862);
  uint8_t_secure_store_single((uint8) (memop_var_862 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_863, obsv_ds_bases_size_$1_863, obsv_ds_size_$1_863);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_864;
  memop_var_864 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_864, obsv_ds_bases_size_$1_864, obsv_ds_size_$1_864);
  uint8_t_secure_store_single((uint8) (memop_var_864 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_865, obsv_ds_bases_size_$1_865, obsv_ds_size_$1_865);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_866;
  memop_var_866 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_866, obsv_ds_bases_size_$1_866, obsv_ds_size_$1_866);
  uint8_t_secure_store_single((uint8) (memop_var_866 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_867, obsv_ds_bases_size_$1_867, obsv_ds_size_$1_867);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_868;
  memop_var_868 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_868, obsv_ds_bases_size_$1_868, obsv_ds_size_$1_868);
  uint8_t_secure_store_single((uint8) (memop_var_868 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_869, obsv_ds_bases_size_$1_869, obsv_ds_size_$1_869);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_870;
  memop_var_870 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_870, obsv_ds_bases_size_$1_870, obsv_ds_size_$1_870);
  uint8_t_secure_store_single((uint8) (memop_var_870 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_871, obsv_ds_bases_size_$1_871, obsv_ds_size_$1_871);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_872;
  memop_var_872 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_872, obsv_ds_bases_size_$1_872, obsv_ds_size_$1_872);
  uint8_t_secure_store_single((uint8) (memop_var_872 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_873, obsv_ds_bases_size_$1_873, obsv_ds_size_$1_873);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_874;
  memop_var_874 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_874, obsv_ds_bases_size_$1_874, obsv_ds_size_$1_874);
  uint8_t_secure_store_single((uint8) (memop_var_874 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_875, obsv_ds_bases_size_$1_875, obsv_ds_size_$1_875);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_876;
  memop_var_876 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_876, obsv_ds_bases_size_$1_876, obsv_ds_size_$1_876);
  uint8_t_secure_store_single((uint8) (memop_var_876 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_877, obsv_ds_bases_size_$1_877, obsv_ds_size_$1_877);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_878;
  memop_var_878 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_878, obsv_ds_bases_size_$1_878, obsv_ds_size_$1_878);
  uint8_t_secure_store_single((uint8) (memop_var_878 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_879, obsv_ds_bases_size_$1_879, obsv_ds_size_$1_879);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_880;
  memop_var_880 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_880, obsv_ds_bases_size_$1_880, obsv_ds_size_$1_880);
  uint8_t_secure_store_single((uint8) (memop_var_880 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_881, obsv_ds_bases_size_$1_881, obsv_ds_size_$1_881);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_882;
  memop_var_882 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_882, obsv_ds_bases_size_$1_882, obsv_ds_size_$1_882);
  uint8_t_secure_store_single((uint8) (memop_var_882 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_883, obsv_ds_bases_size_$1_883, obsv_ds_size_$1_883);
  castschedulekeys_i = castschedulekeys_i + 1;
  uint32 memop_var_884;
  memop_var_884 = uint32_t_secure_load_single((unsigned int *) (&castschedulekeys_Kr_wide[castschedulekeys_i]), obsv_ds_$1_884, obsv_ds_bases_size_$1_884, obsv_ds_size_$1_884);
  uint8_t_secure_store_single((uint8) (memop_var_884 & 31u), (unsigned char *) (&castschedulekeys_schedule->Kr[castschedulekeys_i]), obsv_ds_$1_885, obsv_ds_bases_size_$1_885, obsv_ds_size_$1_885);
  castschedulekeys_i = castschedulekeys_i + 1;
  ;
  ;
  __CPROVER_DUMP_L6:
  ;

  ;
  block_encrypt_self = &st;
  block_encrypt_in = in_pub;
  block_encrypt_out = out;
  memcpy((void *) block_encrypt_out, (const void *) block_encrypt_in, 8u);
  ;
  castcrypt_key = block_encrypt_self;
  castcrypt_block = block_encrypt_out;
  castcrypt_decrypt = 0;
  uint8 memop_var_886;
  memop_var_886 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[0]), obsv_ds__886, obsv_ds_bases_size__886, obsv_ds_size__886);
  uint8 memop_var_887;
  memop_var_887 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[0 + 1]), obsv_ds__887, obsv_ds_bases_size__887, obsv_ds_size__887);
  uint8 memop_var_888;
  memop_var_888 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[0 + 2]), obsv_ds__888, obsv_ds_bases_size__888, obsv_ds_size__888);
  uint8 memop_var_889;
  memop_var_889 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[0 + 3]), obsv_ds__889, obsv_ds_bases_size__889, obsv_ds_size__889);
  castcrypt_L = (uint32) ((((((((signed int) memop_var_886) << 8) | ((signed int) memop_var_887)) << 8) | ((signed int) memop_var_888)) << 8) | ((signed int) memop_var_889));
  uint8 memop_var_890;
  memop_var_890 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[4]), obsv_ds__890, obsv_ds_bases_size__890, obsv_ds_size__890);
  uint8 memop_var_891;
  memop_var_891 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[4 + 1]), obsv_ds__891, obsv_ds_bases_size__891, obsv_ds_size__891);
  uint8 memop_var_892;
  memop_var_892 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[4 + 2]), obsv_ds__892, obsv_ds_bases_size__892, obsv_ds_size__892);
  uint8 memop_var_893;
  memop_var_893 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_block[4 + 3]), obsv_ds__893, obsv_ds_bases_size__893, obsv_ds_size__893);
  castcrypt_R = (uint32) ((((((((signed int) memop_var_890) << 8) | ((signed int) memop_var_891)) << 8) | ((signed int) memop_var_892)) << 8) | ((signed int) memop_var_893));
  castcrypt_round = 0;
  uint32 memop_var_894;
  uint8 memop_var_895;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$2");
    memop_var_894 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$2_894, obsv_ds_bases_size_$2_894, obsv_ds_size_$2_894);
    castcrypt_Kmi = memop_var_894;
    memop_var_895 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$2_895, obsv_ds_bases_size_$2_895, obsv_ds_size_$2_895);
    castcrypt_Kri = memop_var_895;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L9;
  }

  branch_id("$3");
  signed int memop_var_896;
  memop_var_896 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_897;
  memop_var_897 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_896 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_897;
  signed int memop_var_898;
  memop_var_898 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_899;
  memop_var_899 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_898 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_899;
  signed int memop_var_900;
  memop_var_900 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_900 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L9:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$4");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L14;
    }

    branch_id("$4$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L15;
    }

    branch_id("$4$0$0");
    goto __CPROVER_DUMP_L15;
  }

  branch_id("$5");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L16;
  __CPROVER_DUMP_L14:
  ;

  branch_id("$4$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L16;
  __CPROVER_DUMP_L15:
  ;

  branch_id("$4$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L16:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$6");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L21;
    }

    branch_id("$6$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L22;
    }

    branch_id("$6$0$0");
    goto __CPROVER_DUMP_L22;
  }

  branch_id("$7");
  uint32 memop_var_901;
  memop_var_901 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_902;
  memop_var_902 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_903;
  memop_var_903 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_904;
  memop_var_904 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_901 ^ memop_var_902) - memop_var_903) + memop_var_904;
  goto __CPROVER_DUMP_L23;
  __CPROVER_DUMP_L21:
  ;

  branch_id("$6$1");
  uint32 memop_var_905;
  memop_var_905 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_906;
  memop_var_906 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_907;
  memop_var_907 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_908;
  memop_var_908 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_905 - memop_var_906) + memop_var_907) ^ memop_var_908;
  goto __CPROVER_DUMP_L23;
  __CPROVER_DUMP_L22:
  ;

  branch_id("$6$0$1");
  uint32 memop_var_909;
  memop_var_909 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_910;
  memop_var_910 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_911;
  memop_var_911 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_912;
  memop_var_912 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_909 + memop_var_910) ^ memop_var_911) - memop_var_912;
  __CPROVER_DUMP_L23:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_913;
  uint8 memop_var_914;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$8");
    memop_var_913 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$8_913, obsv_ds_bases_size_$8_913, obsv_ds_size_$8_913);
    castcrypt_Kmi = memop_var_913;
    memop_var_914 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$8_914, obsv_ds_bases_size_$8_914, obsv_ds_size_$8_914);
    castcrypt_Kri = memop_var_914;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L26;
  }

  branch_id("$9");
  signed int memop_var_915;
  memop_var_915 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_916;
  memop_var_916 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_915 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_916;
  signed int memop_var_917;
  memop_var_917 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_918;
  memop_var_918 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_917 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_918;
  signed int memop_var_919;
  memop_var_919 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_919 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L26:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$10");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L31;
    }

    branch_id("$10$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L32;
    }

    branch_id("$10$0$0");
    goto __CPROVER_DUMP_L32;
  }

  branch_id("$11");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L33;
  __CPROVER_DUMP_L31:
  ;

  branch_id("$10$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L33;
  __CPROVER_DUMP_L32:
  ;

  branch_id("$10$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L33:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$12");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L38;
    }

    branch_id("$12$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L39;
    }

    branch_id("$12$0$0");
    goto __CPROVER_DUMP_L39;
  }

  branch_id("$13");
  uint32 memop_var_920;
  memop_var_920 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_921;
  memop_var_921 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_922;
  memop_var_922 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_923;
  memop_var_923 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_920 ^ memop_var_921) - memop_var_922) + memop_var_923;
  goto __CPROVER_DUMP_L40;
  __CPROVER_DUMP_L38:
  ;

  branch_id("$12$1");
  uint32 memop_var_924;
  memop_var_924 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_925;
  memop_var_925 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_926;
  memop_var_926 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_927;
  memop_var_927 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_924 - memop_var_925) + memop_var_926) ^ memop_var_927;
  goto __CPROVER_DUMP_L40;
  __CPROVER_DUMP_L39:
  ;

  branch_id("$12$0$1");
  uint32 memop_var_928;
  memop_var_928 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_929;
  memop_var_929 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_930;
  memop_var_930 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_931;
  memop_var_931 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_928 + memop_var_929) ^ memop_var_930) - memop_var_931;
  __CPROVER_DUMP_L40:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_932;
  uint8 memop_var_933;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$14");
    memop_var_932 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$14_932, obsv_ds_bases_size_$14_932, obsv_ds_size_$14_932);
    castcrypt_Kmi = memop_var_932;
    memop_var_933 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$14_933, obsv_ds_bases_size_$14_933, obsv_ds_size_$14_933);
    castcrypt_Kri = memop_var_933;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L43;
  }

  branch_id("$15");
  signed int memop_var_934;
  memop_var_934 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_935;
  memop_var_935 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_934 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_935;
  signed int memop_var_936;
  memop_var_936 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_937;
  memop_var_937 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_936 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_937;
  signed int memop_var_938;
  memop_var_938 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_938 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L43:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$16");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L48;
    }

    branch_id("$16$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L49;
    }

    branch_id("$16$0$0");
    goto __CPROVER_DUMP_L49;
  }

  branch_id("$17");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L50;
  __CPROVER_DUMP_L48:
  ;

  branch_id("$16$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L50;
  __CPROVER_DUMP_L49:
  ;

  branch_id("$16$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L50:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$18");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L55;
    }

    branch_id("$18$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L56;
    }

    branch_id("$18$0$0");
    goto __CPROVER_DUMP_L56;
  }

  branch_id("$19");
  uint32 memop_var_939;
  memop_var_939 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_940;
  memop_var_940 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_941;
  memop_var_941 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_942;
  memop_var_942 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_939 ^ memop_var_940) - memop_var_941) + memop_var_942;
  goto __CPROVER_DUMP_L57;
  __CPROVER_DUMP_L55:
  ;

  branch_id("$18$1");
  uint32 memop_var_943;
  memop_var_943 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_944;
  memop_var_944 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_945;
  memop_var_945 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_946;
  memop_var_946 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_943 - memop_var_944) + memop_var_945) ^ memop_var_946;
  goto __CPROVER_DUMP_L57;
  __CPROVER_DUMP_L56:
  ;

  branch_id("$18$0$1");
  uint32 memop_var_947;
  memop_var_947 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_948;
  memop_var_948 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_949;
  memop_var_949 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_950;
  memop_var_950 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_947 + memop_var_948) ^ memop_var_949) - memop_var_950;
  __CPROVER_DUMP_L57:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_951;
  uint8 memop_var_952;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$20");
    memop_var_951 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$20_951, obsv_ds_bases_size_$20_951, obsv_ds_size_$20_951);
    castcrypt_Kmi = memop_var_951;
    memop_var_952 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$20_952, obsv_ds_bases_size_$20_952, obsv_ds_size_$20_952);
    castcrypt_Kri = memop_var_952;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L60;
  }

  branch_id("$21");
  signed int memop_var_953;
  memop_var_953 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_954;
  memop_var_954 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_953 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_954;
  signed int memop_var_955;
  memop_var_955 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_956;
  memop_var_956 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_955 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_956;
  signed int memop_var_957;
  memop_var_957 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_957 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L60:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$22");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L65;
    }

    branch_id("$22$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L66;
    }

    branch_id("$22$0$0");
    goto __CPROVER_DUMP_L66;
  }

  branch_id("$23");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L67;
  __CPROVER_DUMP_L65:
  ;

  branch_id("$22$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L67;
  __CPROVER_DUMP_L66:
  ;

  branch_id("$22$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L67:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$24");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L72;
    }

    branch_id("$24$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L73;
    }

    branch_id("$24$0$0");
    goto __CPROVER_DUMP_L73;
  }

  branch_id("$25");
  uint32 memop_var_958;
  memop_var_958 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_959;
  memop_var_959 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_960;
  memop_var_960 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_961;
  memop_var_961 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_958 ^ memop_var_959) - memop_var_960) + memop_var_961;
  goto __CPROVER_DUMP_L74;
  __CPROVER_DUMP_L72:
  ;

  branch_id("$24$1");
  uint32 memop_var_962;
  memop_var_962 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_963;
  memop_var_963 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_964;
  memop_var_964 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_965;
  memop_var_965 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_962 - memop_var_963) + memop_var_964) ^ memop_var_965;
  goto __CPROVER_DUMP_L74;
  __CPROVER_DUMP_L73:
  ;

  branch_id("$24$0$1");
  uint32 memop_var_966;
  memop_var_966 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_967;
  memop_var_967 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_968;
  memop_var_968 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_969;
  memop_var_969 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_966 + memop_var_967) ^ memop_var_968) - memop_var_969;
  __CPROVER_DUMP_L74:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_970;
  uint8 memop_var_971;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$26");
    memop_var_970 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$26_970, obsv_ds_bases_size_$26_970, obsv_ds_size_$26_970);
    castcrypt_Kmi = memop_var_970;
    memop_var_971 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$26_971, obsv_ds_bases_size_$26_971, obsv_ds_size_$26_971);
    castcrypt_Kri = memop_var_971;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L77;
  }

  branch_id("$27");
  signed int memop_var_972;
  memop_var_972 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_973;
  memop_var_973 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_972 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_973;
  signed int memop_var_974;
  memop_var_974 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_975;
  memop_var_975 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_974 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_975;
  signed int memop_var_976;
  memop_var_976 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_976 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L77:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$28");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L82;
    }

    branch_id("$28$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L83;
    }

    branch_id("$28$0$0");
    goto __CPROVER_DUMP_L83;
  }

  branch_id("$29");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L84;
  __CPROVER_DUMP_L82:
  ;

  branch_id("$28$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L84;
  __CPROVER_DUMP_L83:
  ;

  branch_id("$28$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L84:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$30");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L89;
    }

    branch_id("$30$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L90;
    }

    branch_id("$30$0$0");
    goto __CPROVER_DUMP_L90;
  }

  branch_id("$31");
  uint32 memop_var_977;
  memop_var_977 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_978;
  memop_var_978 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_979;
  memop_var_979 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_980;
  memop_var_980 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_977 ^ memop_var_978) - memop_var_979) + memop_var_980;
  goto __CPROVER_DUMP_L91;
  __CPROVER_DUMP_L89:
  ;

  branch_id("$30$1");
  uint32 memop_var_981;
  memop_var_981 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_982;
  memop_var_982 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_983;
  memop_var_983 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_984;
  memop_var_984 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_981 - memop_var_982) + memop_var_983) ^ memop_var_984;
  goto __CPROVER_DUMP_L91;
  __CPROVER_DUMP_L90:
  ;

  branch_id("$30$0$1");
  uint32 memop_var_985;
  memop_var_985 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_986;
  memop_var_986 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_987;
  memop_var_987 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_988;
  memop_var_988 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_985 + memop_var_986) ^ memop_var_987) - memop_var_988;
  __CPROVER_DUMP_L91:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_989;
  uint8 memop_var_990;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$32");
    memop_var_989 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$32_989, obsv_ds_bases_size_$32_989, obsv_ds_size_$32_989);
    castcrypt_Kmi = memop_var_989;
    memop_var_990 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$32_990, obsv_ds_bases_size_$32_990, obsv_ds_size_$32_990);
    castcrypt_Kri = memop_var_990;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L94;
  }

  branch_id("$33");
  signed int memop_var_991;
  memop_var_991 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_992;
  memop_var_992 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_991 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_992;
  signed int memop_var_993;
  memop_var_993 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_994;
  memop_var_994 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_993 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_994;
  signed int memop_var_995;
  memop_var_995 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_995 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L94:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$34");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L99;
    }

    branch_id("$34$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L100;
    }

    branch_id("$34$0$0");
    goto __CPROVER_DUMP_L100;
  }

  branch_id("$35");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L101;
  __CPROVER_DUMP_L99:
  ;

  branch_id("$34$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L101;
  __CPROVER_DUMP_L100:
  ;

  branch_id("$34$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L101:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$36");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L106;
    }

    branch_id("$36$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L107;
    }

    branch_id("$36$0$0");
    goto __CPROVER_DUMP_L107;
  }

  branch_id("$37");
  uint32 memop_var_996;
  memop_var_996 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_997;
  memop_var_997 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_998;
  memop_var_998 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_999;
  memop_var_999 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_996 ^ memop_var_997) - memop_var_998) + memop_var_999;
  goto __CPROVER_DUMP_L108;
  __CPROVER_DUMP_L106:
  ;

  branch_id("$36$1");
  uint32 memop_var_1000;
  memop_var_1000 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1001;
  memop_var_1001 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1002;
  memop_var_1002 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1003;
  memop_var_1003 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1000 - memop_var_1001) + memop_var_1002) ^ memop_var_1003;
  goto __CPROVER_DUMP_L108;
  __CPROVER_DUMP_L107:
  ;

  branch_id("$36$0$1");
  uint32 memop_var_1004;
  memop_var_1004 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1005;
  memop_var_1005 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1006;
  memop_var_1006 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1007;
  memop_var_1007 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1004 + memop_var_1005) ^ memop_var_1006) - memop_var_1007;
  __CPROVER_DUMP_L108:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1008;
  uint8 memop_var_1009;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$38");
    memop_var_1008 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$38_1008, obsv_ds_bases_size_$38_1008, obsv_ds_size_$38_1008);
    castcrypt_Kmi = memop_var_1008;
    memop_var_1009 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$38_1009, obsv_ds_bases_size_$38_1009, obsv_ds_size_$38_1009);
    castcrypt_Kri = memop_var_1009;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L111;
  }

  branch_id("$39");
  signed int memop_var_1010;
  memop_var_1010 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1011;
  memop_var_1011 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1010 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1011;
  signed int memop_var_1012;
  memop_var_1012 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1013;
  memop_var_1013 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1012 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1013;
  signed int memop_var_1014;
  memop_var_1014 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1014 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L111:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$40");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L116;
    }

    branch_id("$40$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L117;
    }

    branch_id("$40$0$0");
    goto __CPROVER_DUMP_L117;
  }

  branch_id("$41");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L118;
  __CPROVER_DUMP_L116:
  ;

  branch_id("$40$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L118;
  __CPROVER_DUMP_L117:
  ;

  branch_id("$40$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L118:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$42");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L123;
    }

    branch_id("$42$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L124;
    }

    branch_id("$42$0$0");
    goto __CPROVER_DUMP_L124;
  }

  branch_id("$43");
  uint32 memop_var_1015;
  memop_var_1015 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1016;
  memop_var_1016 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1017;
  memop_var_1017 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1018;
  memop_var_1018 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1015 ^ memop_var_1016) - memop_var_1017) + memop_var_1018;
  goto __CPROVER_DUMP_L125;
  __CPROVER_DUMP_L123:
  ;

  branch_id("$42$1");
  uint32 memop_var_1019;
  memop_var_1019 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1020;
  memop_var_1020 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1021;
  memop_var_1021 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1022;
  memop_var_1022 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1019 - memop_var_1020) + memop_var_1021) ^ memop_var_1022;
  goto __CPROVER_DUMP_L125;
  __CPROVER_DUMP_L124:
  ;

  branch_id("$42$0$1");
  uint32 memop_var_1023;
  memop_var_1023 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1024;
  memop_var_1024 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1025;
  memop_var_1025 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1026;
  memop_var_1026 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1023 + memop_var_1024) ^ memop_var_1025) - memop_var_1026;
  __CPROVER_DUMP_L125:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1027;
  uint8 memop_var_1028;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$44");
    memop_var_1027 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$44_1027, obsv_ds_bases_size_$44_1027, obsv_ds_size_$44_1027);
    castcrypt_Kmi = memop_var_1027;
    memop_var_1028 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$44_1028, obsv_ds_bases_size_$44_1028, obsv_ds_size_$44_1028);
    castcrypt_Kri = memop_var_1028;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L128;
  }

  branch_id("$45");
  signed int memop_var_1029;
  memop_var_1029 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1030;
  memop_var_1030 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1029 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1030;
  signed int memop_var_1031;
  memop_var_1031 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1032;
  memop_var_1032 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1031 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1032;
  signed int memop_var_1033;
  memop_var_1033 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1033 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L128:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$46");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L133;
    }

    branch_id("$46$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L134;
    }

    branch_id("$46$0$0");
    goto __CPROVER_DUMP_L134;
  }

  branch_id("$47");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L135;
  __CPROVER_DUMP_L133:
  ;

  branch_id("$46$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L135;
  __CPROVER_DUMP_L134:
  ;

  branch_id("$46$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L135:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$48");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L140;
    }

    branch_id("$48$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L141;
    }

    branch_id("$48$0$0");
    goto __CPROVER_DUMP_L141;
  }

  branch_id("$49");
  uint32 memop_var_1034;
  memop_var_1034 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1035;
  memop_var_1035 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1036;
  memop_var_1036 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1037;
  memop_var_1037 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1034 ^ memop_var_1035) - memop_var_1036) + memop_var_1037;
  goto __CPROVER_DUMP_L142;
  __CPROVER_DUMP_L140:
  ;

  branch_id("$48$1");
  uint32 memop_var_1038;
  memop_var_1038 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1039;
  memop_var_1039 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1040;
  memop_var_1040 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1041;
  memop_var_1041 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1038 - memop_var_1039) + memop_var_1040) ^ memop_var_1041;
  goto __CPROVER_DUMP_L142;
  __CPROVER_DUMP_L141:
  ;

  branch_id("$48$0$1");
  uint32 memop_var_1042;
  memop_var_1042 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1043;
  memop_var_1043 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1044;
  memop_var_1044 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1045;
  memop_var_1045 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1042 + memop_var_1043) ^ memop_var_1044) - memop_var_1045;
  __CPROVER_DUMP_L142:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1046;
  uint8 memop_var_1047;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$50");
    memop_var_1046 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$50_1046, obsv_ds_bases_size_$50_1046, obsv_ds_size_$50_1046);
    castcrypt_Kmi = memop_var_1046;
    memop_var_1047 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$50_1047, obsv_ds_bases_size_$50_1047, obsv_ds_size_$50_1047);
    castcrypt_Kri = memop_var_1047;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L145;
  }

  branch_id("$51");
  signed int memop_var_1048;
  memop_var_1048 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1049;
  memop_var_1049 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1048 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1049;
  signed int memop_var_1050;
  memop_var_1050 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1051;
  memop_var_1051 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1050 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1051;
  signed int memop_var_1052;
  memop_var_1052 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1052 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L145:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$52");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L150;
    }

    branch_id("$52$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L151;
    }

    branch_id("$52$0$0");
    goto __CPROVER_DUMP_L151;
  }

  branch_id("$53");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L152;
  __CPROVER_DUMP_L150:
  ;

  branch_id("$52$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L152;
  __CPROVER_DUMP_L151:
  ;

  branch_id("$52$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L152:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$54");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L157;
    }

    branch_id("$54$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L158;
    }

    branch_id("$54$0$0");
    goto __CPROVER_DUMP_L158;
  }

  branch_id("$55");
  uint32 memop_var_1053;
  memop_var_1053 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1054;
  memop_var_1054 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1055;
  memop_var_1055 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1056;
  memop_var_1056 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1053 ^ memop_var_1054) - memop_var_1055) + memop_var_1056;
  goto __CPROVER_DUMP_L159;
  __CPROVER_DUMP_L157:
  ;

  branch_id("$54$1");
  uint32 memop_var_1057;
  memop_var_1057 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1058;
  memop_var_1058 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1059;
  memop_var_1059 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1060;
  memop_var_1060 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1057 - memop_var_1058) + memop_var_1059) ^ memop_var_1060;
  goto __CPROVER_DUMP_L159;
  __CPROVER_DUMP_L158:
  ;

  branch_id("$54$0$1");
  uint32 memop_var_1061;
  memop_var_1061 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1062;
  memop_var_1062 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1063;
  memop_var_1063 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1064;
  memop_var_1064 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1061 + memop_var_1062) ^ memop_var_1063) - memop_var_1064;
  __CPROVER_DUMP_L159:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1065;
  uint8 memop_var_1066;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$56");
    memop_var_1065 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$56_1065, obsv_ds_bases_size_$56_1065, obsv_ds_size_$56_1065);
    castcrypt_Kmi = memop_var_1065;
    memop_var_1066 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$56_1066, obsv_ds_bases_size_$56_1066, obsv_ds_size_$56_1066);
    castcrypt_Kri = memop_var_1066;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L162;
  }

  branch_id("$57");
  signed int memop_var_1067;
  memop_var_1067 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1068;
  memop_var_1068 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1067 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1068;
  signed int memop_var_1069;
  memop_var_1069 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1070;
  memop_var_1070 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1069 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1070;
  signed int memop_var_1071;
  memop_var_1071 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1071 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L162:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$58");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L167;
    }

    branch_id("$58$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L168;
    }

    branch_id("$58$0$0");
    goto __CPROVER_DUMP_L168;
  }

  branch_id("$59");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L169;
  __CPROVER_DUMP_L167:
  ;

  branch_id("$58$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L169;
  __CPROVER_DUMP_L168:
  ;

  branch_id("$58$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L169:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$60");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L174;
    }

    branch_id("$60$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L175;
    }

    branch_id("$60$0$0");
    goto __CPROVER_DUMP_L175;
  }

  branch_id("$61");
  uint32 memop_var_1072;
  memop_var_1072 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1073;
  memop_var_1073 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1074;
  memop_var_1074 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1075;
  memop_var_1075 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1072 ^ memop_var_1073) - memop_var_1074) + memop_var_1075;
  goto __CPROVER_DUMP_L176;
  __CPROVER_DUMP_L174:
  ;

  branch_id("$60$1");
  uint32 memop_var_1076;
  memop_var_1076 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1077;
  memop_var_1077 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1078;
  memop_var_1078 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1079;
  memop_var_1079 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1076 - memop_var_1077) + memop_var_1078) ^ memop_var_1079;
  goto __CPROVER_DUMP_L176;
  __CPROVER_DUMP_L175:
  ;

  branch_id("$60$0$1");
  uint32 memop_var_1080;
  memop_var_1080 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1081;
  memop_var_1081 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1082;
  memop_var_1082 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1083;
  memop_var_1083 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1080 + memop_var_1081) ^ memop_var_1082) - memop_var_1083;
  __CPROVER_DUMP_L176:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1084;
  uint8 memop_var_1085;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$62");
    memop_var_1084 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$62_1084, obsv_ds_bases_size_$62_1084, obsv_ds_size_$62_1084);
    castcrypt_Kmi = memop_var_1084;
    memop_var_1085 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$62_1085, obsv_ds_bases_size_$62_1085, obsv_ds_size_$62_1085);
    castcrypt_Kri = memop_var_1085;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L179;
  }

  branch_id("$63");
  signed int memop_var_1086;
  memop_var_1086 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1087;
  memop_var_1087 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1086 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1087;
  signed int memop_var_1088;
  memop_var_1088 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1089;
  memop_var_1089 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1088 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1089;
  signed int memop_var_1090;
  memop_var_1090 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1090 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L179:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$64");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L184;
    }

    branch_id("$64$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L185;
    }

    branch_id("$64$0$0");
    goto __CPROVER_DUMP_L185;
  }

  branch_id("$65");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L186;
  __CPROVER_DUMP_L184:
  ;

  branch_id("$64$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L186;
  __CPROVER_DUMP_L185:
  ;

  branch_id("$64$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L186:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$66");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L191;
    }

    branch_id("$66$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L192;
    }

    branch_id("$66$0$0");
    goto __CPROVER_DUMP_L192;
  }

  branch_id("$67");
  uint32 memop_var_1091;
  memop_var_1091 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1092;
  memop_var_1092 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1093;
  memop_var_1093 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1094;
  memop_var_1094 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1091 ^ memop_var_1092) - memop_var_1093) + memop_var_1094;
  goto __CPROVER_DUMP_L193;
  __CPROVER_DUMP_L191:
  ;

  branch_id("$66$1");
  uint32 memop_var_1095;
  memop_var_1095 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1096;
  memop_var_1096 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1097;
  memop_var_1097 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1098;
  memop_var_1098 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1095 - memop_var_1096) + memop_var_1097) ^ memop_var_1098;
  goto __CPROVER_DUMP_L193;
  __CPROVER_DUMP_L192:
  ;

  branch_id("$66$0$1");
  uint32 memop_var_1099;
  memop_var_1099 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1100;
  memop_var_1100 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1101;
  memop_var_1101 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1102;
  memop_var_1102 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1099 + memop_var_1100) ^ memop_var_1101) - memop_var_1102;
  __CPROVER_DUMP_L193:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1103;
  uint8 memop_var_1104;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$68");
    memop_var_1103 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$68_1103, obsv_ds_bases_size_$68_1103, obsv_ds_size_$68_1103);
    castcrypt_Kmi = memop_var_1103;
    memop_var_1104 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$68_1104, obsv_ds_bases_size_$68_1104, obsv_ds_size_$68_1104);
    castcrypt_Kri = memop_var_1104;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L196;
  }

  branch_id("$69");
  signed int memop_var_1105;
  memop_var_1105 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1106;
  memop_var_1106 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1105 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1106;
  signed int memop_var_1107;
  memop_var_1107 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1108;
  memop_var_1108 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1107 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1108;
  signed int memop_var_1109;
  memop_var_1109 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1109 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L196:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$70");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L201;
    }

    branch_id("$70$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L202;
    }

    branch_id("$70$0$0");
    goto __CPROVER_DUMP_L202;
  }

  branch_id("$71");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L203;
  __CPROVER_DUMP_L201:
  ;

  branch_id("$70$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L203;
  __CPROVER_DUMP_L202:
  ;

  branch_id("$70$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L203:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$72");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L208;
    }

    branch_id("$72$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L209;
    }

    branch_id("$72$0$0");
    goto __CPROVER_DUMP_L209;
  }

  branch_id("$73");
  uint32 memop_var_1110;
  memop_var_1110 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1111;
  memop_var_1111 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1112;
  memop_var_1112 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1113;
  memop_var_1113 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1110 ^ memop_var_1111) - memop_var_1112) + memop_var_1113;
  goto __CPROVER_DUMP_L210;
  __CPROVER_DUMP_L208:
  ;

  branch_id("$72$1");
  uint32 memop_var_1114;
  memop_var_1114 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1115;
  memop_var_1115 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1116;
  memop_var_1116 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1117;
  memop_var_1117 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1114 - memop_var_1115) + memop_var_1116) ^ memop_var_1117;
  goto __CPROVER_DUMP_L210;
  __CPROVER_DUMP_L209:
  ;

  branch_id("$72$0$1");
  uint32 memop_var_1118;
  memop_var_1118 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1119;
  memop_var_1119 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1120;
  memop_var_1120 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1121;
  memop_var_1121 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1118 + memop_var_1119) ^ memop_var_1120) - memop_var_1121;
  __CPROVER_DUMP_L210:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1122;
  uint8 memop_var_1123;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$74");
    memop_var_1122 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$74_1122, obsv_ds_bases_size_$74_1122, obsv_ds_size_$74_1122);
    castcrypt_Kmi = memop_var_1122;
    memop_var_1123 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$74_1123, obsv_ds_bases_size_$74_1123, obsv_ds_size_$74_1123);
    castcrypt_Kri = memop_var_1123;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L213;
  }

  branch_id("$75");
  signed int memop_var_1124;
  memop_var_1124 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1125;
  memop_var_1125 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1124 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1125;
  signed int memop_var_1126;
  memop_var_1126 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1127;
  memop_var_1127 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1126 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1127;
  signed int memop_var_1128;
  memop_var_1128 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1128 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L213:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$76");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L218;
    }

    branch_id("$76$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L219;
    }

    branch_id("$76$0$0");
    goto __CPROVER_DUMP_L219;
  }

  branch_id("$77");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L220;
  __CPROVER_DUMP_L218:
  ;

  branch_id("$76$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L220;
  __CPROVER_DUMP_L219:
  ;

  branch_id("$76$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L220:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$78");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L225;
    }

    branch_id("$78$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L226;
    }

    branch_id("$78$0$0");
    goto __CPROVER_DUMP_L226;
  }

  branch_id("$79");
  uint32 memop_var_1129;
  memop_var_1129 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1130;
  memop_var_1130 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1131;
  memop_var_1131 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1132;
  memop_var_1132 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1129 ^ memop_var_1130) - memop_var_1131) + memop_var_1132;
  goto __CPROVER_DUMP_L227;
  __CPROVER_DUMP_L225:
  ;

  branch_id("$78$1");
  uint32 memop_var_1133;
  memop_var_1133 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1134;
  memop_var_1134 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1135;
  memop_var_1135 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1136;
  memop_var_1136 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1133 - memop_var_1134) + memop_var_1135) ^ memop_var_1136;
  goto __CPROVER_DUMP_L227;
  __CPROVER_DUMP_L226:
  ;

  branch_id("$78$0$1");
  uint32 memop_var_1137;
  memop_var_1137 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1138;
  memop_var_1138 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1139;
  memop_var_1139 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1140;
  memop_var_1140 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1137 + memop_var_1138) ^ memop_var_1139) - memop_var_1140;
  __CPROVER_DUMP_L227:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1141;
  uint8 memop_var_1142;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$80");
    memop_var_1141 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$80_1141, obsv_ds_bases_size_$80_1141, obsv_ds_size_$80_1141);
    castcrypt_Kmi = memop_var_1141;
    memop_var_1142 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$80_1142, obsv_ds_bases_size_$80_1142, obsv_ds_size_$80_1142);
    castcrypt_Kri = memop_var_1142;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L230;
  }

  branch_id("$81");
  signed int memop_var_1143;
  memop_var_1143 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1144;
  memop_var_1144 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1143 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1144;
  signed int memop_var_1145;
  memop_var_1145 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1146;
  memop_var_1146 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1145 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1146;
  signed int memop_var_1147;
  memop_var_1147 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1147 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L230:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$82");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L235;
    }

    branch_id("$82$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L236;
    }

    branch_id("$82$0$0");
    goto __CPROVER_DUMP_L236;
  }

  branch_id("$83");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L237;
  __CPROVER_DUMP_L235:
  ;

  branch_id("$82$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L237;
  __CPROVER_DUMP_L236:
  ;

  branch_id("$82$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L237:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$84");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L242;
    }

    branch_id("$84$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L243;
    }

    branch_id("$84$0$0");
    goto __CPROVER_DUMP_L243;
  }

  branch_id("$85");
  uint32 memop_var_1148;
  memop_var_1148 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1149;
  memop_var_1149 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1150;
  memop_var_1150 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1151;
  memop_var_1151 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1148 ^ memop_var_1149) - memop_var_1150) + memop_var_1151;
  goto __CPROVER_DUMP_L244;
  __CPROVER_DUMP_L242:
  ;

  branch_id("$84$1");
  uint32 memop_var_1152;
  memop_var_1152 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1153;
  memop_var_1153 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1154;
  memop_var_1154 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1155;
  memop_var_1155 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1152 - memop_var_1153) + memop_var_1154) ^ memop_var_1155;
  goto __CPROVER_DUMP_L244;
  __CPROVER_DUMP_L243:
  ;

  branch_id("$84$0$1");
  uint32 memop_var_1156;
  memop_var_1156 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1157;
  memop_var_1157 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1158;
  memop_var_1158 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1159;
  memop_var_1159 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1156 + memop_var_1157) ^ memop_var_1158) - memop_var_1159;
  __CPROVER_DUMP_L244:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1160;
  uint8 memop_var_1161;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$86");
    memop_var_1160 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$86_1160, obsv_ds_bases_size_$86_1160, obsv_ds_size_$86_1160);
    castcrypt_Kmi = memop_var_1160;
    memop_var_1161 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$86_1161, obsv_ds_bases_size_$86_1161, obsv_ds_size_$86_1161);
    castcrypt_Kri = memop_var_1161;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L247;
  }

  branch_id("$87");
  signed int memop_var_1162;
  memop_var_1162 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1163;
  memop_var_1163 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1162 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1163;
  signed int memop_var_1164;
  memop_var_1164 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1165;
  memop_var_1165 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1164 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1165;
  signed int memop_var_1166;
  memop_var_1166 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1166 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L247:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$88");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L252;
    }

    branch_id("$88$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L253;
    }

    branch_id("$88$0$0");
    goto __CPROVER_DUMP_L253;
  }

  branch_id("$89");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L254;
  __CPROVER_DUMP_L252:
  ;

  branch_id("$88$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L254;
  __CPROVER_DUMP_L253:
  ;

  branch_id("$88$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L254:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$90");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L259;
    }

    branch_id("$90$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L260;
    }

    branch_id("$90$0$0");
    goto __CPROVER_DUMP_L260;
  }

  branch_id("$91");
  uint32 memop_var_1167;
  memop_var_1167 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1168;
  memop_var_1168 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1169;
  memop_var_1169 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1170;
  memop_var_1170 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1167 ^ memop_var_1168) - memop_var_1169) + memop_var_1170;
  goto __CPROVER_DUMP_L261;
  __CPROVER_DUMP_L259:
  ;

  branch_id("$90$1");
  uint32 memop_var_1171;
  memop_var_1171 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1172;
  memop_var_1172 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1173;
  memop_var_1173 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1174;
  memop_var_1174 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1171 - memop_var_1172) + memop_var_1173) ^ memop_var_1174;
  goto __CPROVER_DUMP_L261;
  __CPROVER_DUMP_L260:
  ;

  branch_id("$90$0$1");
  uint32 memop_var_1175;
  memop_var_1175 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1176;
  memop_var_1176 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1177;
  memop_var_1177 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1178;
  memop_var_1178 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1175 + memop_var_1176) ^ memop_var_1177) - memop_var_1178;
  __CPROVER_DUMP_L261:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint32 memop_var_1179;
  uint8 memop_var_1180;
  if (castcrypt_decrypt == 0)
  {
    branch_id("$92");
    memop_var_1179 = uint32_t_secure_load_single((unsigned int *) (&castcrypt_key->Km[(signed int) castcrypt_round]), obsv_ds_$92_1179, obsv_ds_bases_size_$92_1179, obsv_ds_size_$92_1179);
    castcrypt_Kmi = memop_var_1179;
    memop_var_1180 = uint8_t_secure_load_single((unsigned char *) (&castcrypt_key->Kr[(signed int) castcrypt_round]), obsv_ds_$92_1180, obsv_ds_bases_size_$92_1180, obsv_ds_size_$92_1180);
    castcrypt_Kri = memop_var_1180;
    castcrypt_functype = (signed short int) (((signed int) castcrypt_round) % 3);
    goto __CPROVER_DUMP_L264;
  }

  branch_id("$93");
  signed int memop_var_1181;
  memop_var_1181 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1182;
  memop_var_1182 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->Km[(memop_var_1181 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kmi = memop_var_1182;
  signed int memop_var_1183;
  memop_var_1183 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint8 memop_var_1184;
  memop_var_1184 = uint8_t_secure_load((unsigned char *) (&castcrypt_key->Kr[(memop_var_1183 - ((signed int) castcrypt_round)) - 1]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_Kri = memop_var_1184;
  signed int memop_var_1185;
  memop_var_1185 = uint32_t_secure_load((unsigned int *) (&castcrypt_key->rounds), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castcrypt_functype = (signed short int) (((memop_var_1185 - ((signed int) castcrypt_round)) - 1) % 3);
  ;
  __CPROVER_DUMP_L264:
  ;

  castfunc_D = castcrypt_R;
  castfunc_Kmi = castcrypt_Kmi;
  castfunc_Kri = castcrypt_Kri;
  castfunc_type = (signed int) castcrypt_functype;
  if (!(castfunc_type == 0))
  {
    branch_id("$94");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L269;
    }

    branch_id("$94$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L270;
    }

    branch_id("$94$0$0");
    goto __CPROVER_DUMP_L270;
  }

  branch_id("$95");
  castfunc_I = castfunc_Kmi + castfunc_D;
  goto __CPROVER_DUMP_L271;
  __CPROVER_DUMP_L269:
  ;

  branch_id("$94$1");
  castfunc_I = castfunc_Kmi ^ castfunc_D;
  goto __CPROVER_DUMP_L271;
  __CPROVER_DUMP_L270:
  ;

  branch_id("$94$0$1");
  castfunc_I = castfunc_Kmi - castfunc_D;
  __CPROVER_DUMP_L271:
  ;

  castfunc_I = castfunc_I & 0xFFFFFFFFu;
  castfunc_I = (castfunc_I << ((signed int) castfunc_Kri)) | (castfunc_I >> (32 - ((signed int) castfunc_Kri)));
  castfunc_Ia = (signed short int) ((castfunc_I >> 24) & 255u);
  castfunc_Ib = (signed short int) ((castfunc_I >> 16) & 255u);
  castfunc_Ic = (signed short int) ((castfunc_I >> 8) & 255u);
  castfunc_Id = (signed short int) (castfunc_I & 255u);
  if (!(castfunc_type == 0))
  {
    branch_id("$96");
    if (castfunc_type == 1)
    {
      goto __CPROVER_DUMP_L276;
    }

    branch_id("$96$0");
    if (castfunc_type == 2)
    {
      goto __CPROVER_DUMP_L277;
    }

    branch_id("$96$0$0");
    goto __CPROVER_DUMP_L277;
  }

  branch_id("$97");
  uint32 memop_var_1186;
  memop_var_1186 = uint32_t_secure_load_onebase((unsigned int *) (&S1[(signed int) castfunc_Ia]), (char *) S1, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1187;
  memop_var_1187 = uint32_t_secure_load_onebase((unsigned int *) (&S2[(signed int) castfunc_Ib]), (char *) S2, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1188;
  memop_var_1188 = uint32_t_secure_load_onebase((unsigned int *) (&S3[(signed int) castfunc_Ic]), (char *) S3, 0, 256, 0, 0, 1020, 0, 0);
  uint32 memop_var_1189;
  memop_var_1189 = uint32_t_secure_load_onebase((unsigned int *) (&S4[(signed int) castfunc_Id]), (char *) S4, 0, 256, 0, 0, 1020, 0, 0);
  castfunc_f = ((memop_var_1186 ^ memop_var_1187) - memop_var_1188) + memop_var_1189;
  goto __CPROVER_DUMP_L278;
  __CPROVER_DUMP_L276:
  ;

  branch_id("$96$1");
  uint32 memop_var_1190;
  memop_var_1190 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1191;
  memop_var_1191 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1192;
  memop_var_1192 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1193;
  memop_var_1193 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1190 - memop_var_1191) + memop_var_1192) ^ memop_var_1193;
  goto __CPROVER_DUMP_L278;
  __CPROVER_DUMP_L277:
  ;

  branch_id("$96$0$1");
  uint32 memop_var_1194;
  memop_var_1194 = uint32_t_secure_load((unsigned int *) (&S1[(signed int) castfunc_Ia]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1195;
  memop_var_1195 = uint32_t_secure_load((unsigned int *) (&S2[(signed int) castfunc_Ib]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1196;
  memop_var_1196 = uint32_t_secure_load((unsigned int *) (&S3[(signed int) castfunc_Ic]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  uint32 memop_var_1197;
  memop_var_1197 = uint32_t_secure_load((unsigned int *) (&S4[(signed int) castfunc_Id]), obsv_ds_nil, obsv_ds_bases_size_nil, obsv_ds_size_nil);
  castfunc_f = ((memop_var_1194 + memop_var_1195) ^ memop_var_1196) - memop_var_1197;
  __CPROVER_DUMP_L278:
  ;

  castcrypt_f = castfunc_f;
  ;
  castcrypt_tmp = castcrypt_L;
  castcrypt_L = castcrypt_R;
  castcrypt_R = castcrypt_tmp ^ castcrypt_f;
  castcrypt_round = castcrypt_round + 1;
  uint8_t_secure_store_single((uint8) ((castcrypt_R & 0xFF000000u) >> 24), (unsigned char *) (&castcrypt_block[0]), obsv_ds__1198, obsv_ds_bases_size__1198, obsv_ds_size__1198);
  uint8_t_secure_store_single((uint8) ((castcrypt_R & 16711680u) >> 16), (unsigned char *) (&castcrypt_block[1]), obsv_ds__1199, obsv_ds_bases_size__1199, obsv_ds_size__1199);
  uint8_t_secure_store_single((uint8) ((castcrypt_R & 65280u) >> 8), (unsigned char *) (&castcrypt_block[2]), obsv_ds__1200, obsv_ds_bases_size__1200, obsv_ds_size__1200);
  uint8_t_secure_store_single((uint8) (castcrypt_R & 255u), (unsigned char *) (&castcrypt_block[3]), obsv_ds__1201, obsv_ds_bases_size__1201, obsv_ds_size__1201);
  uint8_t_secure_store_single((uint8) ((castcrypt_L & 0xFF000000u) >> 24), (unsigned char *) (&castcrypt_block[4]), obsv_ds__1202, obsv_ds_bases_size__1202, obsv_ds_size__1202);
  uint8_t_secure_store_single((uint8) ((castcrypt_L & 16711680u) >> 16), (unsigned char *) (&castcrypt_block[5]), obsv_ds__1203, obsv_ds_bases_size__1203, obsv_ds_size__1203);
  uint8_t_secure_store_single((uint8) ((castcrypt_L & 65280u) >> 8), (unsigned char *) (&castcrypt_block[6]), obsv_ds__1204, obsv_ds_bases_size__1204, obsv_ds_size__1204);
  uint8_t_secure_store_single((uint8) (castcrypt_L & 255u), (unsigned char *) (&castcrypt_block[7]), obsv_ds__1205, obsv_ds_bases_size__1205, obsv_ds_size__1205);
  ;
  ;
  ;
  block_finalize_self = &st;
  ;
  write(1, (const void *) out, 8u);
  return 0;
}

extern void *memcpy(void *dst, const void *src, size_t n)
{
  __CPROVER_HIDE:
  ;

  if (n >= 1u)
  {
    const unsigned int src_n$array_size = (unsigned int) ((signed int) n);
    char src_n[src_n$array_size];
    ARRAY_COPY((const void *) src_n, (const void *) ((char *) src));
    ARRAY_REPLACE((const void *) ((char *) dst), (const void *) src_n);
  }

  return dst;
}

