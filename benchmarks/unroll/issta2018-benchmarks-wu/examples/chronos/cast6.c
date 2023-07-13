#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-cast6_ctx
// file cast6.c line 31
struct cast6_ctx;


typedef unsigned long int size_t;
typedef signed long int ssize_t;



// Q
// file cast6.c line 422
static inline void Q(uint32_t *block, uint8_t *Kr, uint32_t *Km);
// QBAR
// file cast6.c line 432
static inline void QBAR(uint32_t *block, uint8_t *Kr, uint32_t *Km);
// W
// file cast6.c line 372
static inline void W(uint32_t *key, unsigned int i);
// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// cast6_decrypt
// file cast6.c line 473
void cast6_decrypt(struct cast6_ctx *c, uint8_t *outbuf, const uint8_t *inbuf);
// cast6_encrypt
// file cast6.c line 441
void cast6_encrypt(struct cast6_ctx *c, uint8_t *outbuf, const uint8_t *inbuf);
// cast6_setkey
// file cast6.c line 386
signed int cast6_setkey(const uint8_t *in_key, struct cast6_ctx *c, unsigned int key_len);

struct cast6_ctx
{
  // Km
  uint32_t Km[12][4];
  // Kr
  uint8_t Kr[12][4];
};


// Tm
// file cast6.c line 311
static const uint32_t Tm[24][8]={ { 1518500249u, 0xC95C653Au, 943083739u, 0xA7103C7Cu, 367667229u, 0x84C413BEu, 0xF39DFF5Fu, 1652026112u }, 
    { 0xD151D6A1u, 1076609602u, 0xAF05ADE3u, 501193092u, 0x8CB98525u, 0xFB9370C6u, 1785551975u, 0xD9474808u }, 
    { 1210135465u, 0xB6FB1F4Au, 634718955u, 0x94AEF68Cu, 59302445u, 1919077838u, 0xE13CB96Fu, 1343661328u }, 
    { 0xBEF090B1u, 768244818u, 0x9CA467F3u, 192828308u, 2052603701u, 0xE9322AD6u, 1477187191u, 0xC6E60218u }, 
    { 901770681u, 0xA499D95Au, 326354171u, 0x824DB09Cu, 0xF1279C3Du, 1610713054u, 0xCEDB737Fu, 1035296544u }, 
    { 0xAC8F4AC1u, 459880034u, 0x8A432203u, 0xF91D0DA4u, 1744238917u, 0xD6D0E4E6u, 1168822407u, 0xB484BC28u }, 
    { 593405897u, 0x9238936Au, 17989387u, 1877764780u, 0xDEC6564Du, 1302348270u, 0xBC7A2D8Fu, 726931760u }, 
    { 0x9A2E04D1u, 151515250u, 2011290643u, 0xE6BBC7B4u, 1435874133u, 0xC46F9EF6u, 860457623u, 0xA2237638u }, 
    { 285041113u, 2144816506u, 0xEEB1391Bu, 1569399996u, 0xCC65105Du, 993983486u, 0xAA18E79Fu, 418566976u }, 
    { 0x87CCBEE1u, 0xF6A6AA82u, 1702925859u, 0xD45A81C4u, 1127509349u, 0xB20E5906u, 552092839u, 0x8FC23048u }, 
    { 0xFE9C1BE9u, 1836451722u, 0xDC4FF32Bu, 1261035212u, 0xBA03CA6Du, 685618702u, 0x97B7A1AFu, 110202192u }, 
    { 1969977585u, 0xE4456492u, 1394561075u, 0xC1F93BD4u, 819144565u, 0x9FAD1316u, 243728055u, 2103503448u }, 
    { 0xEC3AD5F9u, 1528086938u, 0xC9EEAD3Bu, 952670428u, 0xA7A2847Du, 377253918u, 0x85565BBFu, 0xF4304760u }, 
    { 1661612801u, 0xD1E41EA2u, 1086196291u, 0xAF97F5E4u, 510779781u, 0x8D4BCD26u, 0xFC25B8C7u, 1795138664u }, 
    { 0xD9D99009u, 1219722154u, 0xB78D674Bu, 644305644u, 0x95413E8Du, 68889134u, 1928664527u, 0xE1CF0170u }, 
    { 1353248017u, 0xBF82D8B2u, 777831507u, 0x9D36AFF4u, 202414997u, 2062190390u, 0xE9C472D7u, 1486773880u }, 
    { 0xC7784A19u, 911357370u, 0xA52C215Bu, 335940860u, 0x82DFF89Du, 0xF1B9E43Eu, 1620299743u, 0xCF6DBB80u }, 
    { 1044883233u, 0xAD2192C2u, 469466723u, 0x8AD56A04u, 0xF9AF55A5u, 1753825606u, 0xD7632CE7u, 1178409096u }, 
    { 0xB5170429u, 602992586u, 0x92CADB6Bu, 27576076u, 1887351469u, 0xDF589E4Eu, 1311934959u, 0xBD0C7590u }, 
    { 736518449u, 0x9AC04CD2u, 161101939u, 2020877332u, 0xE74E0FB5u, 1445460822u, 0xC501E6F7u, 870044312u }, 
    { 0xA2B5BE39u, 294627802u, 0x8069957Bu, 0xEF43811Cu, 1578986685u, 0xCCF7585Eu, 1003570175u, 0xAAAB2FA0u }, 
    { 428153665u, 0x885F06E2u, 0xF738F283u, 1712512548u, 0xD4ECC9C5u, 1137096038u, 0xB2A0A107u, 561679528u }, 
    { 0x90547849u, 0xFF2E63EAu, 1846038411u, 0xDCE23B2Cu, 1270621901u, 0xBA96126Eu, 695205391u, 0x9849E9B0u }, 
    { 119788881u, 1979564274u, 0xE4D7AC93u, 1404147764u, 0xC28B83D5u, 828731254u, 0xA03F5B17u, 253314744u } };
// Tr
// file cast6.c line 362
static const uint8_t Tr[4][8]={ { 19, 4, 21, 6, 23, 8, 25, 10 }, { 27, 12, 29, 14, 31, 16, 1, 18 }, { 3, 20, 5, 22, 7, 24, 9, 26 }, { 11, 28, 13, 30, 15, 0, 17, 2 } };
// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// cast6_setkey__return_value
// 
static signed int cast6_setkey__return_value;
// in_key
// file cast6.c line 505
static uint8_t in_key[32]={ 171, 124, 26, 1, 28, 58, 37, 38, 73, 55, 169, 62, 45, 157, 243, 189, 83, 23, 66, 202, 85, 241, 186, 75, 82, 12, 163, 232, 58, 132, 235, 61 };
// in_pub
// file cast6.c line 506
static uint8_t in_pub[16]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// main__return_value
// 
static signed int main__return_value;
// out
// file cast6.c line 507
static uint8_t out[16]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// read__return_value
// 
static ssize_t read__return_value;
// s1
// file cast6.c line 43
static const uint32_t s1[256]={ 821772500u, 0x9FA0FF0Bu, 1810681135u, 1059425402u, 505495343u, 0x9C004DD3u, 1610868032u, 0xCF9FC949u, 0xBFD4AF27u, 0x88BBBDB5u, 0xE2034090u, 0x98D09675u, 1852023008u, 365126098u, 0xC2E7661Du, 584384398u, 677919599u, 0xC07FD059u, 0xFF2379C8u, 2002735330u, 1136869587u, 0xDF2F8656u, 0x887CA41Au, 0xA2D2BD2Du, 0xA1C9E0D6u, 879511577u, 1639411079u, 575934255u, 717107937u, 0xAA54166Bu, 576097850u, 0xA2D341D0u, 1725645000u, 0xA784392Fu, 5111599u, 767152862u, 0x97943FACu, 1251459544u, 1383482551u, 0xB5F437A7u, 0xB82CBAEFu, 0xD751D159u, 1878520045u, 1510570527u, 0x827B68D0u, 0x90ECF52Eu, 582008916u, 0xBC8E5935u, 1265446783u, 1354458274u, 0xD2664910u, 0xBEE5812Du, 0xB7332290u, 0xE93B159Fu, 0xB48EE411u, 1275016285u, 0xFD45C240u, 0xAD31973Fu, 0xC4F6D02Eu, 1442611557u, 0xD5B1CAADu, 0xA1AC2DAEu, 0xA2D4B76Du, 0xC19B0C50u, 0x882240F2u, 208555832u, 0xA4E4BFD7u, 1331405426u, 1447828783u, 0xC59C5319u, 0xB949E354u, 0xB04669FEu, 0xB1B6AB8Au, 0xC71358DDu, 1669711173u, 286233437u, 1465092821u, 1782121619u, 0xE63D37E0u, 710211251u, 980974943u, 1651941557u, 430374111u, 2051154026u, 704238805u, 0xF61B1891u, 0xBB72275Eu, 0xAA508167u, 948965521u, 0xC6B505EBu, 0x84C7CB8Cu, 718756367u, 0x874A1427u, 0xA2D1936Bu, 718440111u, 0xAA56D291u, 0xD7894360u, 1113355533u, 0x93B39E26u, 410092745u, 1811985197u, 1944238868u, 0xA0BEBC3Cu, 1415722873u, 1682284203u, 1060277122u, 1998114690u, 1503841958u, 82706478u, 0x89FE78E6u, 1068173648u, 845149890u, 0x81383F05u, 1768146376u, 1993038550u, 0xD49974C9u, 0xCA180DCFu, 940016341u, 0xC7FA5CF6u, 0x8AC31511u, 904371731u, 1205506512u, 0xF40F9086u, 0xA7E2419Eu, 825647681u, 85914773u, 0xAA573B04u, 1249926541u, 1417871568u, 3287612u, 0xBF64CDDFu, 0xBA57A68Eu, 1975924523u, 1353700161u, 0xA7C13275u, 0x915A0BF5u, 1800716203u, 722146342u, 0xAB4CC9D7u, 1151126914u, 0xF7FBF265u, 0xAB85C5F3u, 458611604u, 0xAAD4E324u, 0xCFA4BD3Fu, 770352098u, 0x9E204D02u, 0xC8BD25ACu, 0xEADF55B3u, 0xD5BD9E98u, 0xE31231B2u, 718646636u, 0x954329DEu, 0xADBE4528u, 0xD8710F69u, 0xAA51C90Fu, 0xAA786BF6u, 575749918u, 0xAA51A79Bu, 718488780u, 2069512688u, 0xD37CFBADu, 453416197u, 1106044049u, 0xB4C332E6u, 52586708u, 0xC9600ACCu, 0xCE387E6Du, 0xBF6BB16Cu, 1785789304u, 218356169u, 0xD4DF39DEu, 0xE01063DAu, 1194783844u, 1523787992u, 0xB347CC96u, 1975193539u, 0x98511BFBu, 1341901877u, 0xB58BCF6Au, 0xE11F0ABCu, 0xBFC5FE4Au, 0xA70AEC10u, 0xAC39570Au, 1057244207u, 1636348243u, 0xE0397A2Eu, 1462225785u, 0x9CEB418Fu, 481089165u, 718503062u, 24497053u, 0xC69DFF09u, 0xC75B65F0u, 0xD9DB40D8u, 0xEC0E7779u, 1195698900u, 0xB11C3274u, 0xDD24CB9Eu, 2115785917u, 0xF01144F9u, 0xD2240EB1u, 0x9675B3FDu, 0xA3AC3755u, 0xD47C27AFu, 1372086093u, 1452307862u, 0xA5BB15E6u, 1476592880u, 0xCA042CF1u, 18495466u, 0x8DBFAADBu, 901398090u, 891748256u, 0xC37B4D09u, 0xBC306ED9u, 0x98A52666u, 1447622437u, 0xFF5E569Du, 216884176u, 2086908623u, 1879786977u, 0xD5EA50F1u, 0x85A92872u, 0xAF1FBDA7u, 0xD4234870u, 0xA7870BF3u, 758861177u, 1121993112u, 215018983u, 642190776u, 0xF881814Cu, 1196255959u, 2081185372u, 0xD1231959u, 941322904u, 0xF5D2F4DBu, 0xAB838653u, 1848581667u, 0x83719C9Eu, 0xBD91E046u, 0x9A56456Eu, 0xDC39200Cu, 550028657u, 0x962BDA1Cu, 0xE1E696FFu, 0xB141AB08u, 2093648313u, 443148163u, 46942275u, 0xA2F7C579u, 1117713533u, 1115362972u, 1523183689u, 0xDD8F0F00u, 1551984063u };
// s2
// file cast6.c line 110
static const uint32_t s2[256]={ 522195092u, 0xEF0BA75Bu, 1776537470u, 960447360u, 0xFE61CF7Au, 0xEEC5207Au, 1435016340u, 1929119313u, 0xADA7EF79u, 1310552629u, 0xD55A63CEu, 0xDE0436BAu, 0x99C430EFu, 1594623892u, 417127293u, 0xA1D6EFF3u, 0xA0B52F7Bu, 1508390405u, 0xEE15B094u, 0xE9FFD909u, 0xDC440086u, 0xEF944459u, 0xBA83CCB3u, 0xE0C3CDFBu, 0xD1DA4181u, 990456497u, 0xF997F1C1u, 0xA5E6CF7Bu, 21106139u, 0xE4E7EF5Bu, 631373633u, 0xE180F806u, 532942976u, 396095098u, 0xD37AC6A9u, 0xFE5830A4u, 0x98DE8B7Fu, 2011709262u, 2039648873u, 620404603u, 0xE113C85Bu, 0xACC40083u, 0xD7503525u, 0xF7EA615Fu, 1645490516u, 223693667u, 1567101217u, 0xC866C359u, 1029951347u, 0xCEE234C0u, 0xD4D87E87u, 1550265121u, 119497089u, 972513919u, 907948164u, 0xE4EB573Bu, 1613718692u, 0xD63ACD9Cu, 465323573u, 0x9E81032Du, 654439692u, 0x99847AB4u, 0xA0E3DF79u, 0xBA6CF38Cu, 277098644u, 624404830u, 0xF46F6FFEu, 0xA1FF3B1Fu, 546110314u, 0x8F458C74u, 0xD9E0A227u, 1321679412u, 0xFC884F69u, 1045293279u, 0xEF0E0088u, 895050893u, 0x8A45388Cu, 494945126u, 1914543101u, 0xA58684BBu, 0xE8256333u, 0x844E8212u, 311263384u, 0xFED33FB4u, 0xCE280AE1u, 669096869u, 0xD5A6C252u, 0xE49754BDu, 0xC5D655DDu, 0xEB667064u, 2005142349u, 0xA1B6A801u, 0x84DB26A9u, 0xE0B56714u, 569394103u, 0xE5D05860u, 1425027204u, 108000370u, 0xA31AA153u, 0xDADC4755u, 0xB5625DBFu, 1750473702u, 0x83CA6B94u, 762237499u, 0xECCF01DBu, 0xA6D3D0BAu, 0xB6803D5Cu, 0xAF77A709u, 867476300u, 964413654u, 1591880597u, 1594774276u, 0x81ED6F61u, 552026980u, 0xB45E1378u, 0xDE18639Bu, 0x881CA122u, 0xB96726D1u, 0x8049A7E8u, 582474363u, 1582640421u, 1383256631u, 2043843868u, 0xC60D894Cu, 1217180674u, 463797851u, 0xA4B09F6Bu, 480777679u, 0xA20C3005u, 0x8871DF63u, 0xB9DE2FCBu, 214354409u, 200212307u, 0xE3214517u, 0xB4542835u, 0x9F63293Cu, 0xEE41E729u, 1847405948u, 1342460550u, 510035443u, 0xF33401C6u, 815934613u, 833030224u, 1620250387u, 1945732119u, 0xA1269859u, 0xEC645C44u, 1388869545u, 0xCDFF33A6u, 0xA02B1741u, 2092620194u, 562037615u, 1356438536u, 0xCB3F4861u, 0xC26BD765u, 1688467115u, 0x80342676u, 631725691u, 0xE4E6D1FCu, 549916902u, 0xCDF0B680u, 394546491u, 837744717u, 2114462948u, 751520235u, 0x846A3BAEu, 0x8FF77888u, 0xEE5D60F6u, 2063029875u, 803036379u, 0xA11631C1u, 821456707u, 0xB3FAEC54u, 360699898u, 0xEF8579CCu, 0xD152DE58u, 0xDB2FFD5Eu, 0x8F32CE19u, 812317050u, 49299192u, 0x99319AD5u, 0xC242FA0Fu, 0xA7E3EBB0u, 0xC68E4906u, 0xB8DA230Cu, 0x80823028u, 0xDCDEF3C8u, 0xD35FB171u, 143268808u, 0xBEC0C560u, 1638124008u, 0xBCA8F54Du, 0xC72FEFFAu, 578956953u, 0x82C570B4u, 0xD8D94E89u, 0x8B1C34BCu, 807278310u, 658237817u, 0xB0FFEAA6u, 1641658566u, 11683945u, 0xB7FFCE3Fu, 148645947u, 1138423386u, 0xF7E19798u, 1981396783u, 0x8F1C9BA4u, 0xDC8637A0u, 380097457u, 0x9FC393B7u, 0xA7136EEBu, 0xC6BCC63Eu, 441530178u, 0xEF6828BCu, 1375954390u, 761952171u, 891809099u, 0x821FD216u, 157052462u, 0xDB92F2FBu, 1592404427u, 341349109u, 0x91584F7Fu, 1417898363u, 644327628u, 0x85196048u, 0x8C4BACEAu, 0x833860D4u, 220455161u, 1815641738u, 182899273u, 0xB284600Cu, 0xD835731Du, 0xDCB1C647u, 0xAC4C56EAu, 1052606899u, 588164016u, 1681439879u, 0xF0B5B1FAu, 0x8F5EA2B3u, 0xFC184642u, 167996282u, 1336969661u, 1688053129u, 0xA345415Eu, 1543734051u, 1046297529u, 1138201970u, 2121126012u, 115334942u, 1819067631u, 1902159161u, 1941945968u, 0x83877605u, 1159982321u };
// s3
// file cast6.c line 177
static const uint32_t s3[256]={ 0x8DEFC240u, 637164959u, 0xEB903DBFu, 0xE810C907u, 1197506559u, 916448331u, 0x8C1FC644u, 0xAECECA90u, 0xBEB1F9BFu, 0xEEFBCAEAu, 0xE8CF1950u, 1373570990u, 0x920E8806u, 0xF0AD0548u, 0xE13C8D83u, 0x927010D5u, 286293407u, 124026297u, 0xB2E3E4D4u, 1028597854u, 0xB9AFA820u, 0xFADE82E0u, 0xA067268Bu, 0x8272792Eu, 1430237888u, 1218109995u, 0xD4EF9794u, 308166588u, 570424558u, 0x825B1BFDu, 0x9255C5EDu, 307733056u, 1310360322u, 0xBAE07FFFu, 1384269543u, 0x8E57140Eu, 863238079u, 0x8C9F8188u, 0xA6FC4EE8u, 0xC982B5A5u, 0xA8C01DB7u, 1470087780u, 1728663345u, 0xF2BD3F5Fu, 1090516929u, 532123132u, 0x8E6BD2C1u, 1132193179u, 0x99B03DBFu, 0xB5DBC64Bu, 1670234342u, 1434557849u, 0xA197C81Cu, 1241591150u, 0xC5884A28u, 0xCCC36F71u, 0xB843C213u, 1812415473u, 0x8309893Cu, 267246943u, 796911696u, 0xD7C07F7Eu, 38830015u, 1526438404u, 0xA747D2D0u, 374413614u, 0xAF70BF3Eu, 1489179520u, 1603809326u, 1920779204u, 168801282u, 260042626u, 0x8C96FDADu, 1563175598u, 0x8EE99A49u, 1356499128u, 0x8427F4A0u, 514611088u, 2037363785u, 0x8252DC15u, 0xEFBD7D9Bu, 0xA672597Du, 0xADA840D8u, 1173701892u, 0xFA5D7403u, 0xE83EC305u, 1334932762u, 0x925669C2u, 602925377u, 0xA903F12Eu, 1613172210u, 41346230u, 0x94FD6574u, 0x927985B2u, 0x8276DBCBu, 41386358u, 0xF8AF918Du, 1313404830u, 0x8F616DDFu, 0xE29D840Eu, 0x842F7D83u, 873260488u, 0x96BBB682u, 0x93B4B148u, 0xEF303CABu, 0x984FAF28u, 2006953883u, 0x92DC560Du, 575479328u, 0x8437AA88u, 2099895446u, 660001756u, 0x8B907CEEu, 0xB51FD240u, 0xE7C07CE3u, 0xE566B4A1u, 0xC3E9615Eu, 1022894237u, 1620365795u, 0xCD9CA341u, 1551255054u, 15374395u, 0xD4D67881u, 0xFD47572Cu, 0xF76CEDD9u, 0xBDA8229Cu, 310226346u, 1133119310u, 530038928u, 136043402u, 0x93A07EBEu, 0xB938CA15u, 0x97B03CFFu, 1036173560u, 0x8D1AB2ECu, 1681395281u, 1758231547u, 0xD90F2788u, 306774401u, 1575354324u, 0xDD7EF86Au, 1990386196u, 0xB9A40368u, 0x925D958Fu, 1262092282u, 0xBA39AEE9u, 0xA4FFD30Bu, 0xFAF7933Bu, 1833535011u, 423410938u, 660763973u, 0x825CF47Au, 1639812000u, 0xD11E42D1u, 0xCEAD04F4u, 310289298u, 272797111u, 0x8272A972u, 0x9270C4A8u, 310240523u, 677093832u, 1013118031u, 901835429u, 0xE805D231u, 1116285435u, 0xB4FCDF82u, 1337354835u, 243122523u, 520626091u, 277223598u, 0xFCFD086Du, 0xF9FF2889u, 1766575121u, 594173102u, 316590669u, 742362309u, 0xD2D02DFEu, 0xF8EF5896u, 0xE4CF52DAu, 0x95155B67u, 1229605004u, 0xB9B6A80Cu, 1552908988u, 0x89D36B45u, 979407927u, 0xEC00C9A9u, 1148277331u, 176638793u, 0xD773BC40u, 2083809052u, 40992502u, 1340822838u, 0xA2D02FFFu, 0xD2BF60C4u, 0xD43F03C0u, 1354035053u, 122129617u, 7215240u, 0xA2E53F55u, 0xB9E6D4BCu, 0xA2048016u, 0x97573833u, 0xD7207D67u, 0xDE0F8F3Du, 1928887091u, 0xABCC4F33u, 1988674909u, 2063640240u, 0x947B0001u, 1459647954u, 0xF9BB88F8u, 0x8942019Eu, 1113892351u, 0x856302E0u, 1927010603u, 0xEE971B69u, 1856122846u, 1594404395u, 0xAF7A616Du, 0xE5C98767u, 0xCF1FEBD2u, 1643104450u, 0xF1AC2571u, 0xCC8239C2u, 1730235576u, 0xB1E583D1u, 0xB7DC3E62u, 2131803598u, 0xF90A5C38u, 267404349u, 1617849798u, 1616132681u, 1462223176u, 736725533u, 0x8AB41738u, 551665188u, 0xAF96DA0Fu, 1749386277u, 0x99833BE5u, 1611482493u, 674206544u, 0x8334B362u, 0xD91D1120u, 728599968u, 1680547377u, 0x9C305A00u, 1388111496u, 453204106u, 0xF7BAEFD5u, 1094905244u, 0xA4315C11u, 0x83323EC5u, 0xDFEF4636u, 0xA133C501u, 0xE9D3531Cu, 0xEE353783u };
// s4
// file cast6.c line 244
static const uint32_t s4[256]={ 0x9DB30420u, 532081118u, 0xA7BE7BEFu, 0xD273A298u, 1246723035u, 1689095255u, 0x85510443u, 0xFA020ED1u, 2116582143u, 0xE60FB663u, 157234593u, 2045505824u, 0xFD059D43u, 1687664561u, 0xF3641F63u, 605965023u, 672431967u, 1336064205u, 0xC9430040u, 214114848u, 0xFDD30B30u, 0xC0A5374Fu, 489488601u, 605322005u, 0xEE4D111Au, 264917351u, 1912574028u, 756637694u, 436560991u, 202637054u, 135989450u, 85393697u, 0x80530100u, 0xE83E5EFEu, 0xAC9AF4F8u, 2145855233u, 0xD2B8EE5Fu, 115294817u, 0xBB9E9B8Au, 1922296357u, 0xCE84FFDFu, 0xF5718801u, 1037454084u, 0xA26F263Bu, 2127856640u, 1417604070u, 1148013728u, 1827919605u, 642362335u, 0xAEA0C7F5u, 909348033u, 1346338451u, 0xD3772061u, 297154785u, 1917849091u, 0xF80EB2BBu, 0xABE0502Eu, 0xEC8D77DEu, 1469521537u, 0xE14F6746u, 0xC9335400u, 1763717519u, 136166297u, 0xFFC304A5u, 1295325189u, 2134727907u, 0xA6C866C6u, 1566297257u, 0xDAEC6FEAu, 0x9F926F91u, 0x9F46222Fu, 965822077u, 0xA5BF6D8Eu, 289653839u, 1133871874u, 0xD0214EEBu, 35685304u, 1068898316u, 418943774u, 672553190u, 642281022u, 0x8BD78A70u, 1954014401u, 0xB506E07Cu, 0xF32D0A25u, 2030668546u, 0xE4EABB81u, 672283427u, 1776201016u, 359975446u, 0xDF871B62u, 555499703u, 0xA51A9EF9u, 1324923u, 69110472u, 152125443u, 0xBD59E4D2u, 0xE3D156D5u, 1340634837u, 798073664u, 1434183902u, 15393959u, 216384236u, 1303690150u, 0xE756BDFFu, 0xDD3369ACu, 0xEC17B035u, 106373927u, 0x99AFC8B0u, 1455997841u, 1801814300u, 1578393881u, 1854262133u, 0xBE07C002u, 0xC2325577u, 0x893FF4ECu, 1539295533u, 0xD0EC3B25u, 0xB7801AB7u, 0x8D6D3B24u, 549938159u, 0xC366A5FCu, 0x9C382880u, 181285381u, 0xAAC9548Au, 0xECA1D7C7u, 68876850u, 488006234u, 1728155692u, 0x9B757A54u, 836007927u, 0x9126B031u, 919367643u, 0xC70B8B46u, 0xD9E66A48u, 1457871481u, 40520939u, 1380155135u, 797931188u, 234455205u, 0x8674CDE3u, 0xEDDA04EBu, 397000196u, 739833055u, 0xB7747F9Du, 0xAB2AF7B4u, 0xEFC34D20u, 772369276u, 390177364u, 0xE5B6A035u, 557662966u, 740064294u, 1640166671u, 1699928825u, 0xD2C231F8u, 622006121u, 0xD8167FA2u, 68743880u, 1742502u, 219489963u, 1664179233u, 1577743084u, 1236991741u, 410585305u, 0x8D0DBD86u, 823226535u, 1050371084u, 0xCC3E10D7u, 0xD5CAD3B6u, 212779912u, 0xF73001E1u, 1819446015u, 1911218849u, 530248558u, 0xCFCBD12Fu, 0xC1DE8417u, 0xAC07BE6Bu, 0xCB44A1D8u, 0x8B9B0F56u, 20547779u, 0xB1C52FCAu, 0xB4BE31CDu, 0xD8782806u, 312714466u, 1870521650u, 1493008054u, 0xD01EE900u, 615382978u, 0xF4990FC5u, 0x9711AAC5u, 1932181u, 0x82E5E7D2u, 278426614u, 6369430u, 0xC32D9521u, 0xADA121FFu, 697336853u, 2143000447u, 0xAF9EB3DBu, 701099306u, 1558357093u, 0xA730F32Cu, 0xD0AA3FE8u, 0x8A5CC091u, 0xD49E2CE7u, 216290473u, 0xD60ACD86u, 23009561u, 1996984579u, 0xDEA03AF6u, 2024298078u, 0xDEE356DFu, 569400510u, 0x8B75E387u, 0xB3C50651u, 0xB8A5C3EFu, 0xD8EEB6D2u, 0xE523BE77u, 0xC2154529u, 795471839u, 0xAFE67AFBu, 0xF470C4B2u, 0xF3E0EB5Bu, 0xD6CC9876u, 971261452u, 534414648u, 428311343u, 0xCA007367u, 0xA99144F8u, 694888862u, 1227866773u, 0x9266BEABu, 0xB5676E69u, 0x9BD3DDDAu, 0xDF7E052Fu, 0xDB25701Cu, 459166190u, 0xF65324E6u, 1794958188u, 51825668u, 0x8644213Eu, 0xB7DC59D0u, 2036672799u, 0xCCD6FD43u, 1099053433u, 0x932BCDF6u, 0xB657C34Du, 1323291266u, 2061838604u, 1018778475u, 0x851E20FEu, 0x9833557Eu, 334295216u, 0xD3FFB372u, 1065731521u, 183467730u };
// write__return_value
// 
static ssize_t write__return_value;

// main
// file cast6.c line 508
signed int main(int argc, char** argv)
{
  uint32_t QBAR_I;
  uint32_t *QBAR_Km;
  uint8_t *QBAR_Kr;
  uint32_t *QBAR_block;
  uint32_t Q_I;
  uint32_t *Q_Km;
  uint8_t *Q_Kr;
  uint32_t *Q_block;
  uint8_t *cast6_encrypt_Kr;
  uint32_t *cast6_encrypt_Km;
  uint32_t cast6_encrypt_block[4];
  uint32_t *cast6_encrypt_dst;
  const uint32_t *cast6_encrypt_src;
  const uint8_t *cast6_encrypt_inbuf;
  uint8_t *cast6_encrypt_outbuf;
  struct cast6_ctx *cast6_encrypt_c;
  uint32_t W_I;
  unsigned int W_i;
  uint32_t *W_key;
  uint32_t *cast6_setkey_p_key;
  uint32_t cast6_setkey_key[8];
  signed int cast6_setkey_i;
  unsigned int cast6_setkey_key_len;
  struct cast6_ctx *cast6_setkey_c;
  const uint8_t *cast6_setkey_in_key;
  struct cast6_ctx main_ctx;
  main_ctx = (struct cast6_ctx){ .Km={ { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u }, { 0u, 0u, 0u, 0u } }, .Kr={ { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 } } };
  read(0, (void *)in_key, 32ul);
  read(0, (void *)in_pub, 16ul);
  /* begin function cast6_setkey */
  ;
  cast6_setkey_in_key = in_key;
  cast6_setkey_c = &main_ctx;
  cast6_setkey_key_len = 32u;
  cast6_setkey_key[0] = 0u;
  cast6_setkey_key[1] = 0u;
  cast6_setkey_key[2] = 0u;
  cast6_setkey_key[3] = 0u;
  cast6_setkey_key[4] = 0u;
  cast6_setkey_key[5] = 0u;
  cast6_setkey_key[6] = 0u;
  cast6_setkey_key[7] = 0u;
  cast6_setkey_p_key = (uint32_t *)cast6_setkey_in_key;
  cast6_setkey_key[0] = cast6_setkey_p_key[0];
  cast6_setkey_key[1] = cast6_setkey_p_key[1];
  cast6_setkey_key[2] = cast6_setkey_p_key[2];
  cast6_setkey_key[3] = cast6_setkey_p_key[3];
  cast6_setkey_key[4] = cast6_setkey_p_key[4];
  cast6_setkey_key[5] = cast6_setkey_p_key[5];
  cast6_setkey_key[6] = cast6_setkey_p_key[6];
  cast6_setkey_key[7] = cast6_setkey_p_key[7];
  cast6_setkey_i = 0;
  /* begin function W */
  ;
  W_key = cast6_setkey_key;
  W_i = (unsigned int)(2 * cast6_setkey_i);
  W_I = 0u;
  W_I = Tm[(signed int)W_i][0] + W_key[7];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][0] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][0] & 31);
  W_key[6] = W_key[6] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][1] ^ W_key[6];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][1] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][1] & 31);
  W_key[5] = W_key[5] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][2] - W_key[5];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][2] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][2] & 31);
  W_key[4] = W_key[4] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][3] + W_key[4];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][3] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][3] & 31);
  W_key[3] = W_key[3] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][4] ^ W_key[3];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][4] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][4] & 31);
  W_key[2] = W_key[2] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][5] - W_key[2];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][5] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][5] & 31);
  W_key[1] = W_key[1] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][6] + W_key[1];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][6] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][6] & 31);
  W_key[0] = W_key[0] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][7] ^ W_key[0];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][7] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][7] & 31);
  W_key[7] = W_key[7] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  /* end function W */
  ;
  /* begin function W */
  ;
  W_key = cast6_setkey_key;
  W_i = (unsigned int)(2 * cast6_setkey_i + 1);
  W_I = 0u;
  W_I = Tm[(signed int)W_i][0] + W_key[7];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][0] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][0] & 31);
  W_key[6] = W_key[6] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][1] ^ W_key[6];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][1] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][1] & 31);
  W_key[5] = W_key[5] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][2] - W_key[5];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][2] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][2] & 31);
  W_key[4] = W_key[4] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][3] + W_key[4];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][3] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][3] & 31);
  W_key[3] = W_key[3] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][4] ^ W_key[3];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][4] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][4] & 31);
  W_key[2] = W_key[2] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][5] - W_key[2];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][5] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][5] & 31);
  W_key[1] = W_key[1] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][6] + W_key[1];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][6] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][6] & 31);
  W_key[0] = W_key[0] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][7] ^ W_key[0];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][7] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][7] & 31);
  W_key[7] = W_key[7] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  /* end function W */
  ;
  cast6_setkey_c->Kr[cast6_setkey_i][0] = (uint8_t)(cast6_setkey_key[0] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][1] = (uint8_t)(cast6_setkey_key[2] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][2] = (uint8_t)(cast6_setkey_key[4] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][3] = (uint8_t)(cast6_setkey_key[6] & 31u);
  cast6_setkey_c->Km[cast6_setkey_i][0] = cast6_setkey_key[7];
  cast6_setkey_c->Km[cast6_setkey_i][1] = cast6_setkey_key[5];
  cast6_setkey_c->Km[cast6_setkey_i][2] = cast6_setkey_key[3];
  cast6_setkey_c->Km[cast6_setkey_i][3] = cast6_setkey_key[1];
  cast6_setkey_i = cast6_setkey_i + 1;
  /* begin function W */
  ;
  W_key = cast6_setkey_key;
  W_i = (unsigned int)(2 * cast6_setkey_i);
  W_I = 0u;
  W_I = Tm[(signed int)W_i][0] + W_key[7];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][0] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][0] & 31);
  W_key[6] = W_key[6] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][1] ^ W_key[6];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][1] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][1] & 31);
  W_key[5] = W_key[5] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][2] - W_key[5];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][2] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][2] & 31);
  W_key[4] = W_key[4] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][3] + W_key[4];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][3] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][3] & 31);
  W_key[3] = W_key[3] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][4] ^ W_key[3];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][4] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][4] & 31);
  W_key[2] = W_key[2] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][5] - W_key[2];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][5] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][5] & 31);
  W_key[1] = W_key[1] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][6] + W_key[1];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][6] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][6] & 31);
  W_key[0] = W_key[0] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][7] ^ W_key[0];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][7] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][7] & 31);
  W_key[7] = W_key[7] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  /* end function W */
  ;
  /* begin function W */
  ;
  W_key = cast6_setkey_key;
  W_i = (unsigned int)(2 * cast6_setkey_i + 1);
  W_I = 0u;
  W_I = Tm[(signed int)W_i][0] + W_key[7];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][0] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][0] & 31);
  W_key[6] = W_key[6] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][1] ^ W_key[6];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][1] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][1] & 31);
  W_key[5] = W_key[5] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][2] - W_key[5];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][2] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][2] & 31);
  W_key[4] = W_key[4] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][3] + W_key[4];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][3] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][3] & 31);
  W_key[3] = W_key[3] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][4] ^ W_key[3];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][4] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][4] & 31);
  W_key[2] = W_key[2] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][5] - W_key[2];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][5] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][5] & 31);
  W_key[1] = W_key[1] ^ (s1[(signed int)(W_I >> 24)] + s2[(signed int)(W_I >> 16 & 255u)] ^ s3[(signed int)(W_I >> 8 & 255u)]) - s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][6] + W_key[1];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][6] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][6] & 31);
  W_key[0] = W_key[0] ^ ((s1[(signed int)(W_I >> 24)] ^ s2[(signed int)(W_I >> 16 & 255u)]) - s3[(signed int)(W_I >> 8 & 255u)]) + s4[(signed int)(W_I & 255u)];
  W_I = Tm[(signed int)W_i][7] ^ W_key[0];
  W_I = W_I << ((signed int)Tr[(signed int)(W_i % 4u)][7] & 31) | W_I >> (32 - (signed int)Tr[(signed int)(W_i % 4u)][7] & 31);
  W_key[7] = W_key[7] ^ (s1[(signed int)(W_I >> 24)] - s2[(signed int)(W_I >> 16 & 255u)]) + s3[(signed int)(W_I >> 8 & 255u)] ^ s4[(signed int)(W_I & 255u)];
  /* end function W */
  ;
  cast6_setkey_c->Kr[cast6_setkey_i][0] = (uint8_t)(cast6_setkey_key[0] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][1] = (uint8_t)(cast6_setkey_key[2] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][2] = (uint8_t)(cast6_setkey_key[4] & 31u);
  cast6_setkey_c->Kr[cast6_setkey_i][3] = (uint8_t)(cast6_setkey_key[6] & 31u);
  cast6_setkey_c->Km[cast6_setkey_i][0] = cast6_setkey_key[7];
  cast6_setkey_c->Km[cast6_setkey_i][1] = cast6_setkey_key[5];
  cast6_setkey_c->Km[cast6_setkey_i][2] = cast6_setkey_key[3];
  cast6_setkey_c->Km[cast6_setkey_i][3] = cast6_setkey_key[1];
  cast6_setkey_i = cast6_setkey_i + 1;
  0;
  /* end function cast6_setkey */
  ;
  /* begin function cast6_encrypt */
  ;
  cast6_encrypt_c = &main_ctx;
  cast6_encrypt_outbuf = out;
  cast6_encrypt_inbuf = in_pub;
  cast6_encrypt_src = (const uint32_t *)cast6_encrypt_inbuf;
  cast6_encrypt_dst = (uint32_t *)cast6_encrypt_outbuf;
  cast6_encrypt_block[0] = cast6_encrypt_src[0];
  cast6_encrypt_block[1] = cast6_encrypt_src[1];
  cast6_encrypt_block[2] = cast6_encrypt_src[2];
  cast6_encrypt_block[3] = cast6_encrypt_src[3];
  cast6_encrypt_Km = cast6_encrypt_c->Km[0];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[0];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[1];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[1];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[2];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[2];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[3];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[3];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[4];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[4];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[5];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[5];
  /* begin function Q */
  ;
  Q_block = cast6_encrypt_block;
  Q_Kr = cast6_encrypt_Kr;
  Q_Km = cast6_encrypt_Km;
  Q_I = Q_Km[0] + Q_block[3];
  Q_I = Q_I << ((signed int)Q_Kr[0] & 31) | Q_I >> (32 - (signed int)Q_Kr[0] & 31);
  Q_block[2] = Q_block[2] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[1] ^ Q_block[2];
  Q_I = Q_I << ((signed int)Q_Kr[1] & 31) | Q_I >> (32 - (signed int)Q_Kr[1] & 31);
  Q_block[1] = Q_block[1] ^ (s1[(signed int)(Q_I >> 24)] - s2[(signed int)(Q_I >> 16 & 255u)]) + s3[(signed int)(Q_I >> 8 & 255u)] ^ s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[2] - Q_block[1];
  Q_I = Q_I << ((signed int)Q_Kr[2] & 31) | Q_I >> (32 - (signed int)Q_Kr[2] & 31);
  Q_block[0] = Q_block[0] ^ (s1[(signed int)(Q_I >> 24)] + s2[(signed int)(Q_I >> 16 & 255u)] ^ s3[(signed int)(Q_I >> 8 & 255u)]) - s4[(signed int)(Q_I & 255u)];
  Q_I = Q_Km[3] + Q_block[0];
  Q_I = Q_I << ((signed int)Q_Kr[3] & 31) | Q_I >> (32 - (signed int)Q_Kr[3] & 31);
  Q_block[3] = Q_block[3] ^ ((s1[(signed int)(Q_I >> 24)] ^ s2[(signed int)(Q_I >> 16 & 255u)]) - s3[(signed int)(Q_I >> 8 & 255u)]) + s4[(signed int)(Q_I & 255u)];
  /* end function Q */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[6];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[6];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[7];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[7];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[8];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[8];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[9];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[9];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[10];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[10];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_Km = cast6_encrypt_c->Km[11];
  cast6_encrypt_Kr = cast6_encrypt_c->Kr[11];
  /* begin function QBAR */
  ;
  QBAR_block = cast6_encrypt_block;
  QBAR_Kr = cast6_encrypt_Kr;
  QBAR_Km = cast6_encrypt_Km;
  QBAR_I = QBAR_Km[3] + QBAR_block[0];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[3] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[3] & 31);
  QBAR_block[3] = QBAR_block[3] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[2] - QBAR_block[1];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[2] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[2] & 31);
  QBAR_block[0] = QBAR_block[0] ^ (s1[(signed int)(QBAR_I >> 24)] + s2[(signed int)(QBAR_I >> 16 & 255u)] ^ s3[(signed int)(QBAR_I >> 8 & 255u)]) - s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[1] ^ QBAR_block[2];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[1] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[1] & 31);
  QBAR_block[1] = QBAR_block[1] ^ (s1[(signed int)(QBAR_I >> 24)] - s2[(signed int)(QBAR_I >> 16 & 255u)]) + s3[(signed int)(QBAR_I >> 8 & 255u)] ^ s4[(signed int)(QBAR_I & 255u)];
  QBAR_I = QBAR_Km[0] + QBAR_block[3];
  QBAR_I = QBAR_I << ((signed int)QBAR_Kr[0] & 31) | QBAR_I >> (32 - (signed int)QBAR_Kr[0] & 31);
  QBAR_block[2] = QBAR_block[2] ^ ((s1[(signed int)(QBAR_I >> 24)] ^ s2[(signed int)(QBAR_I >> 16 & 255u)]) - s3[(signed int)(QBAR_I >> 8 & 255u)]) + s4[(signed int)(QBAR_I & 255u)];
  /* end function QBAR */
  ;
  cast6_encrypt_dst[0] = cast6_encrypt_block[0];
  cast6_encrypt_dst[1] = cast6_encrypt_block[1];
  cast6_encrypt_dst[2] = cast6_encrypt_block[2];
  cast6_encrypt_dst[3] = cast6_encrypt_block[3];
  /* end function cast6_encrypt */
  ;
  write(1, (const void *)&out, 16ul);
  main__return_value = 0;
}

