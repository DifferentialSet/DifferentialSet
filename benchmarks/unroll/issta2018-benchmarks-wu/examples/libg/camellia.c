#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
typedef unsigned long int size_t;
typedef signed long int ssize_t;



// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// buf_get_be32
// file camellia.c line 444
inline uint32_t buf_get_be32(const void *_buf);
// buf_put_be32
// file camellia.c line 451
inline void buf_put_be32(void *_buf, uint32_t val);
// camellia_setup128
// file camellia.c line 467
void camellia_setup128(const unsigned char *key, uint32_t *subkey);

// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// buf_get_be32__return_value
// 
static uint32_t buf_get_be32__return_value;
// camellia_sp0222
// file camellia.c line 240
static const uint32_t camellia_sp0222[256]={ 14737632u, 328965u, 5789784u, 14277081u, 6776679u, 5131854u, 8487297u, 13355979u, 13224393u, 723723u, 11447982u, 6974058u, 14013909u, 1579032u, 6118749u, 8553090u, 4605510u, 14671839u, 14079702u, 2565927u, 9079434u, 3289650u, 4934475u, 4342338u, 14408667u, 1842204u, 10395294u, 10263708u, 3815994u, 13290186u, 2434341u, 8092539u, 855309u, 7434609u, 6250335u, 2039583u, 16316664u, 14145495u, 4079166u, 10329501u, 8158332u, 6316128u, 12171705u, 12500670u, 12369084u, 9145227u, 1447446u, 3421236u, 5066061u, 12829635u, 7500402u, 9803157u, 11250603u, 9342606u, 12237498u, 8026746u, 11776947u, 131586u, 11842740u, 11382189u, 10658466u, 11316396u, 14211288u, 10132122u, 1513239u, 1710618u, 3487029u, 13421772u, 16250871u, 10066329u, 6381921u, 5921370u, 15263976u, 2368548u, 5658198u, 4210752u, 14803425u, 6513507u, 592137u, 3355443u, 12566463u, 10000536u, 9934743u, 8750469u, 6842472u, 16579836u, 15527148u, 657930u, 14342874u, 7303023u, 5460819u, 6447714u, 10724259u, 3026478u, 526344u, 11513775u, 2631720u, 11579568u, 7631988u, 12763842u, 12434877u, 3552822u, 2236962u, 3684408u, 6579300u, 1973790u, 3750201u, 2894892u, 10921638u, 3158064u, 15066597u, 4473924u, 16645629u, 8947848u, 10461087u, 6645093u, 8882055u, 7039851u, 16053492u, 2302755u, 4737096u, 1052688u, 13750737u, 5329233u, 12632256u, 16382457u, 13816530u, 10526880u, 5592405u, 10592673u, 4276545u, 16448250u, 4408131u, 1250067u, 12895428u, 3092271u, 11053224u, 11974326u, 3947580u, 2829099u, 12698049u, 16777215u, 13158600u, 10855845u, 2105376u, 9013641u, 0u, 9474192u, 4671303u, 15724527u, 15395562u, 12040119u, 1381653u, 394758u, 13487565u, 11908533u, 1184274u, 8289918u, 12303291u, 2697513u, 986895u, 12105912u, 460551u, 263172u, 10197915u, 9737364u, 2171169u, 6710886u, 15132390u, 13553358u, 15592941u, 15198183u, 3881787u, 16711422u, 8355711u, 12961221u, 10790052u, 3618615u, 11645361u, 5000268u, 9539985u, 7237230u, 9276813u, 7763574u, 197379u, 2960685u, 14606046u, 9868950u, 2500134u, 8224125u, 13027014u, 6052956u, 13882323u, 15921906u, 5197647u, 1644825u, 4144959u, 14474460u, 7960953u, 1907997u, 5395026u, 15461355u, 15987699u, 7171437u, 6184542u, 16514043u, 6908265u, 11711154u, 15790320u, 3223857u, 789516u, 13948116u, 13619151u, 9211020u, 14869218u, 7697781u, 11119017u, 4868682u, 5723991u, 8684676u, 1118481u, 4539717u, 1776411u, 16119285u, 15000804u, 921102u, 7566195u, 11184810u, 15856113u, 14540253u, 5855577u, 1315860u, 7105644u, 9605778u, 5526612u, 13684944u, 7895160u, 7368816u, 14935011u, 4802889u, 8421504u, 5263440u, 10987431u, 16185078u, 7829367u, 9671571u, 8816262u, 8618883u, 2763306u, 13092807u, 5987163u, 15329769u, 15658734u, 9408399u, 65793u, 4013373u };
// camellia_sp1110
// file camellia.c line 173
static const uint32_t camellia_sp1110[256]={ 1886416896u, 0x82828200u, 741092352u, 0xECECEC00u, 0xB3B3B300u, 656877312u, 0xC0C0C000u, 0xE5E5E500u, 0xE4E4E400u, 0x85858500u, 1465341696u, 892679424u, 0xEAEAEA00u, 202116096u, 0xAEAEAE00u, 1094795520u, 589505280u, 0xEFEFEF00u, 1802201856u, 0x93939300u, 1162167552u, 421075200u, 0xA5A5A500u, 555819264u, 0xEDEDED00u, 235802112u, 1330597632u, 1313754624u, 488447232u, 1701143808u, 0x92929200u, 0xBDBDBD00u, 0x86868600u, 0xB8B8B800u, 0xAFAFAF00u, 0x8F8F8F00u, 2088532992u, 0xEBEBEB00u, 522133248u, 0xCECECE00u, 1044266496u, 808464384u, 0xDCDCDC00u, 1600085760u, 1583242752u, 0xC5C5C500u, 185273088u, 437918208u, 0xA6A6A600u, 0xE1E1E100u, 960051456u, 0xCACACA00u, 0xD5D5D500u, 1195853568u, 1566399744u, 1027423488u, 0xD9D9D900u, 16843008u, 1515870720u, 0xD6D6D600u, 1364283648u, 1448498688u, 1819044864u, 1296911616u, 0x8B8B8B00u, 218959104u, 0x9A9A9A00u, 1717986816u, 0xFBFBFB00u, 0xCCCCCC00u, 0xB0B0B000u, 757935360u, 1953788928u, 303174144u, 724249344u, 538976256u, 0xF0F0F000u, 0xB1B1B100u, 0x84848400u, 0x99999900u, 0xDFDFDF00u, 1280068608u, 0xCBCBCB00u, 0xC2C2C200u, 875836416u, 2122219008u, 1987474944u, 84215040u, 1835887872u, 0xB7B7B700u, 0xA9A9A900u, 825307392u, 0xD1D1D100u, 387389184u, 67372032u, 0xD7D7D700u, 336860160u, 1482184704u, 976894464u, 1633771776u, 0xDEDEDE00u, 454761216u, 286331136u, 471604224u, 842150400u, 252645120u, 0x9C9C9C00u, 370546176u, 1397969664u, 404232192u, 0xF2F2F200u, 572662272u, 0xFEFEFE00u, 1145324544u, 0xCFCFCF00u, 0xB2B2B200u, 0xC3C3C300u, 0xB5B5B500u, 2054846976u, 0x91919100u, 606348288u, 134744064u, 0xE8E8E800u, 0xA8A8A800u, 1616928768u, 0xFCFCFC00u, 1768515840u, 1347440640u, 0xAAAAAA00u, 0xD0D0D000u, 0xA0A0A000u, 2105376000u, 0xA1A1A100u, 0x89898900u, 1650614784u, 0x97979700u, 1414812672u, 1532713728u, 505290240u, 0x95959500u, 0xE0E0E000u, 0xFFFFFF00u, 1684300800u, 0xD2D2D200u, 269488128u, 0xC4C4C400u, 0u, 1212696576u, 0xA3A3A300u, 0xF7F7F700u, 1970631936u, 0xDBDBDB00u, 0x8A8A8A00u, 50529024u, 0xE6E6E600u, 0xDADADA00u, 151587072u, 1061109504u, 0xDDDDDD00u, 0x94949400u, 0x87878700u, 1549556736u, 0x83838300u, 33686016u, 0xCDCDCD00u, 1246382592u, 0x90909000u, 858993408u, 1936945920u, 1734829824u, 0xF6F6F600u, 0xF3F3F300u, 0x9D9D9D00u, 2139062016u, 0xBFBFBF00u, 0xE2E2E200u, 1381126656u, 0x9B9B9B00u, 0xD8D8D800u, 640034304u, 0xC8C8C800u, 926365440u, 0xC6C6C600u, 993737472u, 0x81818100u, 0x96969600u, 1869573888u, 1263225600u, 320017152u, 0xBEBEBE00u, 1667457792u, 774778368u, 0xE9E9E900u, 2038003968u, 0xA7A7A700u, 0x8C8C8C00u, 0x9F9F9F00u, 1852730880u, 0xBCBCBC00u, 0x8E8E8E00u, 690563328u, 0xF5F5F500u, 0xF9F9F900u, 0xB6B6B600u, 791621376u, 0xFDFDFD00u, 0xB4B4B400u, 1499027712u, 2021160960u, 0x98989800u, 101058048u, 1785358848u, 0xE7E7E700u, 1179010560u, 1903259904u, 0xBABABA00u, 0xD4D4D400u, 623191296u, 0xABABAB00u, 1111638528u, 0x88888800u, 0xA2A2A200u, 0x8D8D8D00u, 0xFAFAFA00u, 1920102912u, 117901056u, 0xB9B9B900u, 1431655680u, 0xF8F8F800u, 0xEEEEEE00u, 0xACACAC00u, 168430080u, 909522432u, 1229539584u, 707406336u, 1751672832u, 1010580480u, 943208448u, 0xF1F1F100u, 0xA4A4A400u, 1077952512u, 673720320u, 0xD3D3D300u, 2071689984u, 0xBBBBBB00u, 0xC9C9C900u, 1128481536u, 0xC1C1C100u, 353703168u, 0xE3E3E300u, 0xADADAD00u, 0xF4F4F400u, 2004317952u, 0xC7C7C700u, 0x80808000u, 0x9E9E9E00u };
// camellia_sp3033
// file camellia.c line 307
static const uint32_t camellia_sp3033[256]={ 939538488u, 1090535745u, 369104406u, 1979741814u, 0xD900D9D9u, 0x93009393u, 1610637408u, 0xF200F2F2u, 1912631922u, 0xC200C2C2u, 0xAB00ABABu, 0x9A009A9Au, 1962964341u, 100664838u, 1459640151u, 0xA000A0A0u, 0x91009191u, 0xF700F7F7u, 0xB500B5B5u, 0xC900C9C9u, 0xA200A2A2u, 0x8C008C8Cu, 0xD200D2D2u, 0x90009090u, 0xF600F6F6u, 117442311u, 0xA700A7A7u, 654321447u, 0x8E008E8Eu, 0xB200B2B2u, 1224755529u, 0xDE00DEDEu, 1124090691u, 1543527516u, 0xD700D7D7u, 0xC700C7C7u, 1040203326u, 0xF500F5F5u, 0x8F008F8Fu, 1728079719u, 520101663u, 402659352u, 1845522030u, 0xAF00AFAFu, 788541231u, 0xE200E2E2u, 0x85008585u, 218107149u, 1392530259u, 0xF000F0F0u, 0x9C009C9Cu, 1694524773u, 0xEA00EAEAu, 0xA300A3A3u, 0xAE00AEAEu, 0x9E009E9Eu, 0xEC00ECECu, 0x80008080u, 754986285u, 1795189611u, 0xA800A8A8u, 721431339u, 905983542u, 0xA600A6A6u, 0xC500C5C5u, 0x86008686u, 1291865421u, 855651123u, 0xFD00FDFDu, 1711302246u, 1476417624u, 0x96009696u, 973093434u, 150997257u, 0x95009595u, 268439568u, 2013296760u, 0xD800D8D8u, 1107313218u, 0xCC00CCCCu, 0xEF00EFEFu, 637543974u, 0xE500E5E5u, 1627414881u, 436214298u, 1056980799u, 989870907u, 0x82008282u, 0xB600B6B6u, 0xDB00DBDBu, 0xD400D4D4u, 0x98009898u, 0xE800E8E8u, 0x8B008B8Bu, 33554946u, 0xEB00EBEBu, 167774730u, 738208812u, 486546717u, 0xB000B0B0u, 1862299503u, 0x8D008D8Du, 0x88008888u, 234884622u, 419436825u, 0x87008787u, 1308642894u, 184552203u, 0xA900A9A9u, 201329676u, 2030074233u, 285217041u, 2130739071u, 570434082u, 0xE700E7E7u, 1493195097u, 0xE100E1E1u, 0xDA00DADAu, 1023425853u, 0xC800C8C8u, 301994514u, 67109892u, 1946186868u, 1409307732u, 805318704u, 2113961598u, 0xB400B4B4u, 671098920u, 1426085205u, 1744857192u, 1342197840u, 0xBE00BEBEu, 0xD000D0D0u, 0xC400C4C4u, 822096177u, 0xCB00CBCBu, 704653866u, 0xAD00ADADu, 251662095u, 0xCA00CACAu, 1879076976u, 0xFF00FFFFu, 838873650u, 1761634665u, 134219784u, 1644192354u, 0u, 603989028u, 0xD100D1D1u, 0xFB00FBFBu, 0xBA00BABAu, 0xED00EDEDu, 1157645637u, 0x81008181u, 1929409395u, 1828744557u, 0x84008484u, 0x9F009F9Fu, 0xEE00EEEEu, 1241533002u, 0xC300C3C3u, 771763758u, 0xC100C1C1u, 16777473u, 0xE600E6E6u, 620766501u, 1207978056u, 0x99009999u, 0xB900B9B9u, 0xB300B3B3u, 2063629179u, 0xF900F9F9u, 0xCE00CECEu, 0xBF00BFBFu, 0xDF00DFDFu, 1895854449u, 687876393u, 0xCD00CDCDu, 1811967084u, 318771987u, 1677747300u, 0x9B009B9Bu, 1660969827u, 0x9D009D9Du, 0xC000C0C0u, 1258310475u, 0xB700B7B7u, 0xA500A5A5u, 0x89008989u, 1593859935u, 0xB100B1B1u, 385881879u, 0xF400F4F4u, 0xBC00BCBCu, 0xD300D3D3u, 1174423110u, 0xCF00CFCFu, 922761015u, 1577082462u, 1191200583u, 0x94009494u, 0xFA00FAFAu, 0xFC00FCFCu, 1526750043u, 0x97009797u, 0xFE00FEFEu, 1509972570u, 0xAC00ACACu, 1006648380u, 1275087948u, 50332419u, 889206069u, 0xF300F3F3u, 587211555u, 0xB800B8B8u, 1560304989u, 1778412138u, 0x92009292u, 0xD500D5D5u, 553656609u, 1140868164u, 1358975313u, 0xC600C6C6u, 2097184125u, 956315961u, 0x83008383u, 0xDC00DCDCu, 0xAA00AAAAu, 2080406652u, 1996519287u, 1442862678u, 83887365u, 452991771u, 0xA400A4A4u, 352326933u, 872428596u, 503324190u, 469769244u, 0xF800F8F8u, 1375752786u, 536879136u, 335549460u, 0xE900E9E9u, 0xBD00BDBDu, 0xDD00DDDDu, 0xE400E4E4u, 0xA100A1A1u, 0xE000E0E0u, 0x8A008A8Au, 0xF100F1F1u, 0xD600D6D6u, 2046851706u, 0xBB00BBBBu, 0xE300E3E3u, 1073758272u, 1325420367u };
// camellia_sp4404
// file camellia.c line 374
static const uint32_t camellia_sp4404[256]={ 1886388336u, 741081132u, 0xB3B300B3u, 0xC0C000C0u, 0xE4E400E4u, 1465319511u, 0xEAEA00EAu, 0xAEAE00AEu, 589496355u, 1802174571u, 1162149957u, 0xA5A500A5u, 0xEDED00EDu, 1330577487u, 488439837u, 0x92920092u, 0x86860086u, 0xAFAF00AFu, 2088501372u, 522125343u, 1044250686u, 0xDCDC00DCu, 1583218782u, 185270283u, 0xA6A600A6u, 960036921u, 0xD5D500D5u, 1566376029u, 0xD9D900D9u, 1515847770u, 1364262993u, 1819017324u, 0x8B8B008Bu, 0x9A9A009Au, 0xFBFB00FBu, 0xB0B000B0u, 1953759348u, 724238379u, 0xF0F000F0u, 0x84840084u, 0xDFDF00DFu, 0xCBCB00CBu, 875823156u, 1987444854u, 1835860077u, 0xA9A900A9u, 0xD1D100D1u, 67371012u, 336855060u, 976879674u, 0xDEDE00DEu, 286326801u, 842137650u, 0x9C9C009Cu, 1397948499u, 0xF2F200F2u, 0xFEFE00FEu, 0xCFCF00CFu, 0xC3C300C3u, 2054815866u, 606339108u, 0xE8E800E8u, 1616904288u, 1768489065u, 0xAAAA00AAu, 0xA0A000A0u, 0xA1A100A1u, 1650589794u, 1414791252u, 505282590u, 0xE0E000E0u, 1684275300u, 269484048u, 0u, 0xA3A300A3u, 1970602101u, 0x8A8A008Au, 0xE6E600E6u, 151584777u, 0xDDDD00DDu, 0x87870087u, 0x83830083u, 0xCDCD00CDu, 0x90900090u, 1936916595u, 0xF6F600F6u, 0x9D9D009Du, 0xBFBF00BFu, 1381105746u, 0xD8D800D8u, 0xC8C800C8u, 0xC6C600C6u, 0x81810081u, 1869545583u, 320012307u, 1667432547u, 0xE9E900E9u, 0xA7A700A7u, 0x9F9F009Fu, 0xBCBC00BCu, 690552873u, 0xF9F900F9u, 791609391u, 0xB4B400B4u, 2021130360u, 101056518u, 0xE7E700E7u, 1903231089u, 0xD4D400D4u, 0xABAB00ABu, 0x88880088u, 0x8D8D008Du, 1920073842u, 0xB9B900B9u, 0xF8F800F8u, 0xACAC00ACu, 909508662u, 707395626u, 1010565180u, 0xF1F100F1u, 1077936192u, 0xD3D300D3u, 0xBBBB00BBu, 1128464451u, 353697813u, 0xADAD00ADu, 2004287607u, 0x80800080u, 0x82820082u, 0xECEC00ECu, 656867367u, 0xE5E500E5u, 0x85850085u, 892665909u, 202113036u, 1094778945u, 0xEFEF00EFu, 0x93930093u, 421068825u, 555810849u, 235798542u, 1313734734u, 1701118053u, 0xBDBD00BDu, 0xB8B800B8u, 0x8F8F008Fu, 0xEBEB00EBu, 0xCECE00CEu, 808452144u, 1600061535u, 0xC5C500C5u, 437911578u, 0xE1E100E1u, 0xCACA00CAu, 1195835463u, 1027407933u, 16842753u, 0xD6D600D6u, 1448476758u, 1296891981u, 218955789u, 1717960806u, 0xCCCC00CCu, 757923885u, 303169554u, 538968096u, 0xB1B100B1u, 0x99990099u, 1280049228u, 0xC2C200C2u, 2122186878u, 84213765u, 0xB7B700B7u, 825294897u, 387383319u, 0xD7D700D7u, 1482162264u, 1633747041u, 454754331u, 471597084u, 252641295u, 370540566u, 404226072u, 572653602u, 1145307204u, 0xB2B200B2u, 0xB5B500B5u, 0x91910091u, 134742024u, 0xA8A800A8u, 0xFCFC00FCu, 1347420240u, 0xD0D000D0u, 2105344125u, 0x89890089u, 0x97970097u, 1532690523u, 0x95950095u, 0xFFFF00FFu, 0xD2D200D2u, 0xC4C400C4u, 1212678216u, 0xF7F700F7u, 0xDBDB00DBu, 50528259u, 0xDADA00DAu, 1061093439u, 0x94940094u, 1549533276u, 33685506u, 1246363722u, 858980403u, 1734803559u, 0xF3F300F3u, 2139029631u, 0xE2E200E2u, 0x9B9B009Bu, 640024614u, 926351415u, 993722427u, 0x96960096u, 1263206475u, 0xBEBE00BEu, 774766638u, 2037973113u, 0x8C8C008Cu, 1852702830u, 0x8E8E008Eu, 0xF5F500F5u, 0xB6B600B6u, 0xFDFD00FDu, 1499005017u, 0x98980098u, 1785331818u, 1178992710u, 0xBABA00BAu, 623181861u, 1111621698u, 0xA2A200A2u, 0xFAFA00FAu, 117899271u, 1431634005u, 0xEEEE00EEu, 168427530u, 1229520969u, 1751646312u, 943194168u, 0xA4A400A4u, 673710120u, 2071658619u, 0xC9C900C9u, 0xC1C100C1u, 0xE3E300E3u, 0xF4F400F4u, 0xC7C700C7u, 0x9E9E009Eu };
// in_key
// file camellia.c line 640
static uint8_t in_key[24]={ 230, 206, 204, 99, 222, 174, 15, 99, 194, 200, 123, 233, 145, 84, 160, 149, 219, 114, 38, 185, 31, 54, 185, 40 };
// main__return_value
// 
static signed int main__return_value;
// read__return_value
// 
static ssize_t read__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file camellia.c line 642
signed int main(int argc, char** argv)
{
  const uint8_t *buf_get_be32_in;
  const void *buf_get_be32__buf;
  uint32_t camellia_setup128_subR[26];
  uint32_t camellia_setup128_subL[26];
  uint32_t camellia_setup128_tr;
  uint32_t camellia_setup128_tl;
  uint32_t camellia_setup128_dw;
  uint32_t camellia_setup128_kw4r;
  uint32_t camellia_setup128_kw4l;
  uint32_t camellia_setup128_w1;
  uint32_t camellia_setup128_w0;
  uint32_t camellia_setup128_t1;
  uint32_t camellia_setup128_t0;
  uint32_t camellia_setup128_ir;
  uint32_t camellia_setup128_il;
  uint32_t camellia_setup128_krr;
  uint32_t camellia_setup128_krl;
  uint32_t camellia_setup128_klr;
  uint32_t camellia_setup128_kll;
  uint32_t *camellia_setup128_subkey;
  const unsigned char *camellia_setup128_key;
  read(0, (void *)in_key, 24ul);
  /* begin function camellia_setup128 */
  ;
  camellia_setup128_key = in_key;
  uint32_t main_subkey[50]={ 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u };
  camellia_setup128_subkey = main_subkey;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)camellia_setup128_key;
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  camellia_setup128_kll = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(camellia_setup128_key + 4);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  camellia_setup128_klr = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(camellia_setup128_key + 8);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  camellia_setup128_krl = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(camellia_setup128_key + 12);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  camellia_setup128_krr = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  camellia_setup128_subL[0] = camellia_setup128_kll;
  camellia_setup128_subR[0] = camellia_setup128_klr;
  camellia_setup128_subL[1] = camellia_setup128_krl;
  camellia_setup128_subR[1] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[4] = camellia_setup128_kll;
  camellia_setup128_subR[4] = camellia_setup128_klr;
  camellia_setup128_subL[5] = camellia_setup128_krl;
  camellia_setup128_subR[5] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 30) + (camellia_setup128_klr >> 32 - 30);
  camellia_setup128_klr = (camellia_setup128_klr << 30) + (camellia_setup128_krl >> 32 - 30);
  camellia_setup128_krl = (camellia_setup128_krl << 30) + (camellia_setup128_krr >> 32 - 30);
  camellia_setup128_krr = (camellia_setup128_krr << 30) + (camellia_setup128_w0 >> 32 - 30);
  camellia_setup128_subL[10] = camellia_setup128_kll;
  camellia_setup128_subR[10] = camellia_setup128_klr;
  camellia_setup128_subL[11] = camellia_setup128_krl;
  camellia_setup128_subR[11] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[13] = camellia_setup128_krl;
  camellia_setup128_subR[13] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 17) + (camellia_setup128_klr >> 32 - 17);
  camellia_setup128_klr = (camellia_setup128_klr << 17) + (camellia_setup128_krl >> 32 - 17);
  camellia_setup128_krl = (camellia_setup128_krl << 17) + (camellia_setup128_krr >> 32 - 17);
  camellia_setup128_krr = (camellia_setup128_krr << 17) + (camellia_setup128_w0 >> 32 - 17);
  camellia_setup128_subL[16] = camellia_setup128_kll;
  camellia_setup128_subR[16] = camellia_setup128_klr;
  camellia_setup128_subL[17] = camellia_setup128_krl;
  camellia_setup128_subR[17] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 17) + (camellia_setup128_klr >> 32 - 17);
  camellia_setup128_klr = (camellia_setup128_klr << 17) + (camellia_setup128_krl >> 32 - 17);
  camellia_setup128_krl = (camellia_setup128_krl << 17) + (camellia_setup128_krr >> 32 - 17);
  camellia_setup128_krr = (camellia_setup128_krr << 17) + (camellia_setup128_w0 >> 32 - 17);
  camellia_setup128_subL[18] = camellia_setup128_kll;
  camellia_setup128_subR[18] = camellia_setup128_klr;
  camellia_setup128_subL[19] = camellia_setup128_krl;
  camellia_setup128_subR[19] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 17) + (camellia_setup128_klr >> 32 - 17);
  camellia_setup128_klr = (camellia_setup128_klr << 17) + (camellia_setup128_krl >> 32 - 17);
  camellia_setup128_krl = (camellia_setup128_krl << 17) + (camellia_setup128_krr >> 32 - 17);
  camellia_setup128_krr = (camellia_setup128_krr << 17) + (camellia_setup128_w0 >> 32 - 17);
  camellia_setup128_subL[22] = camellia_setup128_kll;
  camellia_setup128_subR[22] = camellia_setup128_klr;
  camellia_setup128_subL[23] = camellia_setup128_krl;
  camellia_setup128_subR[23] = camellia_setup128_krr;
  camellia_setup128_kll = camellia_setup128_subL[0];
  camellia_setup128_klr = camellia_setup128_subR[0];
  camellia_setup128_krl = camellia_setup128_subL[1];
  camellia_setup128_krr = camellia_setup128_subR[1];
  camellia_setup128_il = (uint32_t)((signed long int)camellia_setup128_kll ^ 0xA09E667Fl);
  camellia_setup128_ir = (uint32_t)((signed long int)camellia_setup128_klr ^ 0x3BCC908Bl);
  camellia_setup128_t0 = camellia_setup128_il >> 16;
  camellia_setup128_t1 = camellia_setup128_ir >> 16;
  camellia_setup128_w0 = camellia_sp1110[(signed int)(camellia_setup128_ir & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t1 >> 8 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_t1 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_ir >> 8 & 255u)];
  camellia_setup128_w1 = camellia_sp1110[(signed int)(camellia_setup128_t0 >> 8 & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t0 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_il >> 8 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_il & 255u)];
  camellia_setup128_w0 = camellia_setup128_w0 ^ camellia_setup128_w1;
  camellia_setup128_w1 = (camellia_setup128_w1 >> 8) + (camellia_setup128_w1 << 24);
  camellia_setup128_w1 = camellia_setup128_w1 ^ camellia_setup128_w0;
  camellia_setup128_krl = camellia_setup128_krl ^ camellia_setup128_w0;
  camellia_setup128_krr = camellia_setup128_krr ^ camellia_setup128_w1;
  camellia_setup128_il = (uint32_t)((signed long int)camellia_setup128_krl ^ 0xB67AE858l);
  camellia_setup128_ir = (uint32_t)((signed long int)camellia_setup128_krr ^ 0x4CAA73B2l);
  camellia_setup128_t0 = camellia_setup128_il >> 16;
  camellia_setup128_t1 = camellia_setup128_ir >> 16;
  camellia_setup128_kll = camellia_sp1110[(signed int)(camellia_setup128_ir & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t1 >> 8 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_t1 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_ir >> 8 & 255u)];
  camellia_setup128_klr = camellia_sp1110[(signed int)(camellia_setup128_t0 >> 8 & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t0 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_il >> 8 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_il & 255u)];
  camellia_setup128_kll = camellia_setup128_kll ^ camellia_setup128_klr;
  camellia_setup128_klr = (camellia_setup128_klr >> 8) + (camellia_setup128_klr << 24);
  camellia_setup128_klr = camellia_setup128_klr ^ camellia_setup128_kll;
  camellia_setup128_il = (uint32_t)((signed long int)camellia_setup128_kll ^ 0xC6EF372Fl);
  camellia_setup128_ir = (uint32_t)((signed long int)camellia_setup128_klr ^ 0xE94F82BEl);
  camellia_setup128_t0 = camellia_setup128_il >> 16;
  camellia_setup128_t1 = camellia_setup128_ir >> 16;
  camellia_setup128_krl = camellia_sp1110[(signed int)(camellia_setup128_ir & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t1 >> 8 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_t1 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_ir >> 8 & 255u)];
  camellia_setup128_krr = camellia_sp1110[(signed int)(camellia_setup128_t0 >> 8 & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t0 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_il >> 8 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_il & 255u)];
  camellia_setup128_krl = camellia_setup128_krl ^ camellia_setup128_krr;
  camellia_setup128_krr = (camellia_setup128_krr >> 8) + (camellia_setup128_krr << 24);
  camellia_setup128_krr = camellia_setup128_krr ^ camellia_setup128_krl;
  camellia_setup128_krl = camellia_setup128_krl ^ camellia_setup128_w0;
  camellia_setup128_krr = camellia_setup128_krr ^ camellia_setup128_w1;
  camellia_setup128_il = (uint32_t)((signed long int)camellia_setup128_krl ^ 0x54FF53A5l);
  camellia_setup128_ir = (uint32_t)((signed long int)camellia_setup128_krr ^ 0xF1D36F1Cl);
  camellia_setup128_t0 = camellia_setup128_il >> 16;
  camellia_setup128_t1 = camellia_setup128_ir >> 16;
  camellia_setup128_w0 = camellia_sp1110[(signed int)(camellia_setup128_ir & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t1 >> 8 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_t1 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_ir >> 8 & 255u)];
  camellia_setup128_w1 = camellia_sp1110[(signed int)(camellia_setup128_t0 >> 8 & 255u)] ^ camellia_sp0222[(signed int)(camellia_setup128_t0 & 255u)] ^ camellia_sp3033[(signed int)(camellia_setup128_il >> 8 & 255u)] ^ camellia_sp4404[(signed int)(camellia_setup128_il & 255u)];
  camellia_setup128_w0 = camellia_setup128_w0 ^ camellia_setup128_w1;
  camellia_setup128_w1 = (camellia_setup128_w1 >> 8) + (camellia_setup128_w1 << 24);
  camellia_setup128_w1 = camellia_setup128_w1 ^ camellia_setup128_w0;
  camellia_setup128_kll = camellia_setup128_kll ^ camellia_setup128_w0;
  camellia_setup128_klr = camellia_setup128_klr ^ camellia_setup128_w1;
  camellia_setup128_subL[2] = camellia_setup128_kll;
  camellia_setup128_subR[2] = camellia_setup128_klr;
  camellia_setup128_subL[3] = camellia_setup128_krl;
  camellia_setup128_subR[3] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[6] = camellia_setup128_kll;
  camellia_setup128_subR[6] = camellia_setup128_klr;
  camellia_setup128_subL[7] = camellia_setup128_krl;
  camellia_setup128_subR[7] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[8] = camellia_setup128_kll;
  camellia_setup128_subR[8] = camellia_setup128_klr;
  camellia_setup128_subL[9] = camellia_setup128_krl;
  camellia_setup128_subR[9] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[12] = camellia_setup128_kll;
  camellia_setup128_subR[12] = camellia_setup128_klr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 15) + (camellia_setup128_klr >> 32 - 15);
  camellia_setup128_klr = (camellia_setup128_klr << 15) + (camellia_setup128_krl >> 32 - 15);
  camellia_setup128_krl = (camellia_setup128_krl << 15) + (camellia_setup128_krr >> 32 - 15);
  camellia_setup128_krr = (camellia_setup128_krr << 15) + (camellia_setup128_w0 >> 32 - 15);
  camellia_setup128_subL[14] = camellia_setup128_kll;
  camellia_setup128_subR[14] = camellia_setup128_klr;
  camellia_setup128_subL[15] = camellia_setup128_krl;
  camellia_setup128_subR[15] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_w1 = camellia_setup128_klr;
  camellia_setup128_kll = (camellia_setup128_klr << 34 - 32) + (camellia_setup128_krl >> 64 - 34);
  camellia_setup128_klr = (camellia_setup128_krl << 34 - 32) + (camellia_setup128_krr >> 64 - 34);
  camellia_setup128_krl = (camellia_setup128_krr << 34 - 32) + (camellia_setup128_w0 >> 64 - 34);
  camellia_setup128_krr = (camellia_setup128_w0 << 34 - 32) + (camellia_setup128_w1 >> 64 - 34);
  camellia_setup128_subL[20] = camellia_setup128_kll;
  camellia_setup128_subR[20] = camellia_setup128_klr;
  camellia_setup128_subL[21] = camellia_setup128_krl;
  camellia_setup128_subR[21] = camellia_setup128_krr;
  camellia_setup128_w0 = camellia_setup128_kll;
  camellia_setup128_kll = (camellia_setup128_kll << 17) + (camellia_setup128_klr >> 32 - 17);
  camellia_setup128_klr = (camellia_setup128_klr << 17) + (camellia_setup128_krl >> 32 - 17);
  camellia_setup128_krl = (camellia_setup128_krl << 17) + (camellia_setup128_krr >> 32 - 17);
  camellia_setup128_krr = (camellia_setup128_krr << 17) + (camellia_setup128_w0 >> 32 - 17);
  camellia_setup128_subL[24] = camellia_setup128_kll;
  camellia_setup128_subR[24] = camellia_setup128_klr;
  camellia_setup128_subL[25] = camellia_setup128_krl;
  camellia_setup128_subR[25] = camellia_setup128_krr;
  camellia_setup128_subL[3] = camellia_setup128_subL[3] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[3] = camellia_setup128_subR[3] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[5] = camellia_setup128_subL[5] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[5] = camellia_setup128_subR[5] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[7] = camellia_setup128_subL[7] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[7] = camellia_setup128_subR[7] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[1] = camellia_setup128_subL[1] ^ camellia_setup128_subR[1] & ~camellia_setup128_subR[9];
  camellia_setup128_dw = camellia_setup128_subL[1] & camellia_setup128_subL[9];
  camellia_setup128_subR[1] = camellia_setup128_subR[1] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subL[11] = camellia_setup128_subL[11] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[11] = camellia_setup128_subR[11] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[13] = camellia_setup128_subL[13] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[13] = camellia_setup128_subR[13] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[15] = camellia_setup128_subL[15] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[15] = camellia_setup128_subR[15] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[1] = camellia_setup128_subL[1] ^ camellia_setup128_subR[1] & ~camellia_setup128_subR[17];
  camellia_setup128_dw = camellia_setup128_subL[1] & camellia_setup128_subL[17];
  camellia_setup128_subR[1] = camellia_setup128_subR[1] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subL[19] = camellia_setup128_subL[19] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[19] = camellia_setup128_subR[19] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[21] = camellia_setup128_subL[21] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[21] = camellia_setup128_subR[21] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[23] = camellia_setup128_subL[23] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[23] = camellia_setup128_subR[23] ^ camellia_setup128_subR[1];
  camellia_setup128_subL[24] = camellia_setup128_subL[24] ^ camellia_setup128_subL[1];
  camellia_setup128_subR[24] = camellia_setup128_subR[24] ^ camellia_setup128_subR[1];
  camellia_setup128_kw4l = camellia_setup128_subL[25];
  camellia_setup128_kw4r = camellia_setup128_subR[25];
  camellia_setup128_subL[22] = camellia_setup128_subL[22] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[22] = camellia_setup128_subR[22] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[20] = camellia_setup128_subL[20] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[20] = camellia_setup128_subR[20] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[18] = camellia_setup128_subL[18] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[18] = camellia_setup128_subR[18] ^ camellia_setup128_kw4r;
  camellia_setup128_kw4l = camellia_setup128_kw4l ^ camellia_setup128_kw4r & ~camellia_setup128_subR[16];
  camellia_setup128_dw = camellia_setup128_kw4l & camellia_setup128_subL[16];
  camellia_setup128_kw4r = camellia_setup128_kw4r ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subL[14] = camellia_setup128_subL[14] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[14] = camellia_setup128_subR[14] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[12] = camellia_setup128_subL[12] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[12] = camellia_setup128_subR[12] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[10] = camellia_setup128_subL[10] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[10] = camellia_setup128_subR[10] ^ camellia_setup128_kw4r;
  camellia_setup128_kw4l = camellia_setup128_kw4l ^ camellia_setup128_kw4r & ~camellia_setup128_subR[8];
  camellia_setup128_dw = camellia_setup128_kw4l & camellia_setup128_subL[8];
  camellia_setup128_kw4r = camellia_setup128_kw4r ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subL[6] = camellia_setup128_subL[6] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[6] = camellia_setup128_subR[6] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[4] = camellia_setup128_subL[4] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[4] = camellia_setup128_subR[4] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[2] = camellia_setup128_subL[2] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[2] = camellia_setup128_subR[2] ^ camellia_setup128_kw4r;
  camellia_setup128_subL[0] = camellia_setup128_subL[0] ^ camellia_setup128_kw4l;
  camellia_setup128_subR[0] = camellia_setup128_subR[0] ^ camellia_setup128_kw4r;
  camellia_setup128_subkey[0 * 2] = camellia_setup128_subL[0] ^ camellia_setup128_subL[2];
  camellia_setup128_subkey[0 * 2 + 1] = camellia_setup128_subR[0] ^ camellia_setup128_subR[2];
  camellia_setup128_subkey[2 * 2] = camellia_setup128_subL[3];
  camellia_setup128_subkey[2 * 2 + 1] = camellia_setup128_subR[3];
  camellia_setup128_subkey[3 * 2] = camellia_setup128_subL[2] ^ camellia_setup128_subL[4];
  camellia_setup128_subkey[3 * 2 + 1] = camellia_setup128_subR[2] ^ camellia_setup128_subR[4];
  camellia_setup128_subkey[4 * 2] = camellia_setup128_subL[3] ^ camellia_setup128_subL[5];
  camellia_setup128_subkey[4 * 2 + 1] = camellia_setup128_subR[3] ^ camellia_setup128_subR[5];
  camellia_setup128_subkey[5 * 2] = camellia_setup128_subL[4] ^ camellia_setup128_subL[6];
  camellia_setup128_subkey[5 * 2 + 1] = camellia_setup128_subR[4] ^ camellia_setup128_subR[6];
  camellia_setup128_subkey[6 * 2] = camellia_setup128_subL[5] ^ camellia_setup128_subL[7];
  camellia_setup128_subkey[6 * 2 + 1] = camellia_setup128_subR[5] ^ camellia_setup128_subR[7];
  camellia_setup128_tl = camellia_setup128_subL[10] ^ camellia_setup128_subR[10] & ~camellia_setup128_subR[8];
  camellia_setup128_dw = camellia_setup128_tl & camellia_setup128_subL[8];
  camellia_setup128_tr = camellia_setup128_subR[10] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subkey[7 * 2] = camellia_setup128_subL[6] ^ camellia_setup128_tl;
  camellia_setup128_subkey[7 * 2 + 1] = camellia_setup128_subR[6] ^ camellia_setup128_tr;
  camellia_setup128_subkey[8 * 2] = camellia_setup128_subL[8];
  camellia_setup128_subkey[8 * 2 + 1] = camellia_setup128_subR[8];
  camellia_setup128_subkey[9 * 2] = camellia_setup128_subL[9];
  camellia_setup128_subkey[9 * 2 + 1] = camellia_setup128_subR[9];
  camellia_setup128_tl = camellia_setup128_subL[7] ^ camellia_setup128_subR[7] & ~camellia_setup128_subR[9];
  camellia_setup128_dw = camellia_setup128_tl & camellia_setup128_subL[9];
  camellia_setup128_tr = camellia_setup128_subR[7] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subkey[10 * 2] = camellia_setup128_tl ^ camellia_setup128_subL[11];
  camellia_setup128_subkey[10 * 2 + 1] = camellia_setup128_tr ^ camellia_setup128_subR[11];
  camellia_setup128_subkey[11 * 2] = camellia_setup128_subL[10] ^ camellia_setup128_subL[12];
  camellia_setup128_subkey[11 * 2 + 1] = camellia_setup128_subR[10] ^ camellia_setup128_subR[12];
  camellia_setup128_subkey[12 * 2] = camellia_setup128_subL[11] ^ camellia_setup128_subL[13];
  camellia_setup128_subkey[12 * 2 + 1] = camellia_setup128_subR[11] ^ camellia_setup128_subR[13];
  camellia_setup128_subkey[13 * 2] = camellia_setup128_subL[12] ^ camellia_setup128_subL[14];
  camellia_setup128_subkey[13 * 2 + 1] = camellia_setup128_subR[12] ^ camellia_setup128_subR[14];
  camellia_setup128_subkey[14 * 2] = camellia_setup128_subL[13] ^ camellia_setup128_subL[15];
  camellia_setup128_subkey[14 * 2 + 1] = camellia_setup128_subR[13] ^ camellia_setup128_subR[15];
  camellia_setup128_tl = camellia_setup128_subL[18] ^ camellia_setup128_subR[18] & ~camellia_setup128_subR[16];
  camellia_setup128_dw = camellia_setup128_tl & camellia_setup128_subL[16];
  camellia_setup128_tr = camellia_setup128_subR[18] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subkey[15 * 2] = camellia_setup128_subL[14] ^ camellia_setup128_tl;
  camellia_setup128_subkey[15 * 2 + 1] = camellia_setup128_subR[14] ^ camellia_setup128_tr;
  camellia_setup128_subkey[16 * 2] = camellia_setup128_subL[16];
  camellia_setup128_subkey[16 * 2 + 1] = camellia_setup128_subR[16];
  camellia_setup128_subkey[17 * 2] = camellia_setup128_subL[17];
  camellia_setup128_subkey[17 * 2 + 1] = camellia_setup128_subR[17];
  camellia_setup128_tl = camellia_setup128_subL[15] ^ camellia_setup128_subR[15] & ~camellia_setup128_subR[17];
  camellia_setup128_dw = camellia_setup128_tl & camellia_setup128_subL[17];
  camellia_setup128_tr = camellia_setup128_subR[15] ^ (camellia_setup128_dw << 1) + (camellia_setup128_dw >> 31);
  camellia_setup128_subkey[18 * 2] = camellia_setup128_tl ^ camellia_setup128_subL[19];
  camellia_setup128_subkey[18 * 2 + 1] = camellia_setup128_tr ^ camellia_setup128_subR[19];
  camellia_setup128_subkey[19 * 2] = camellia_setup128_subL[18] ^ camellia_setup128_subL[20];
  camellia_setup128_subkey[19 * 2 + 1] = camellia_setup128_subR[18] ^ camellia_setup128_subR[20];
  camellia_setup128_subkey[20 * 2] = camellia_setup128_subL[19] ^ camellia_setup128_subL[21];
  camellia_setup128_subkey[20 * 2 + 1] = camellia_setup128_subR[19] ^ camellia_setup128_subR[21];
  camellia_setup128_subkey[21 * 2] = camellia_setup128_subL[20] ^ camellia_setup128_subL[22];
  camellia_setup128_subkey[21 * 2 + 1] = camellia_setup128_subR[20] ^ camellia_setup128_subR[22];
  camellia_setup128_subkey[22 * 2] = camellia_setup128_subL[21] ^ camellia_setup128_subL[23];
  camellia_setup128_subkey[22 * 2 + 1] = camellia_setup128_subR[21] ^ camellia_setup128_subR[23];
  camellia_setup128_subkey[23 * 2] = camellia_setup128_subL[22];
  camellia_setup128_subkey[23 * 2 + 1] = camellia_setup128_subR[22];
  camellia_setup128_subkey[24 * 2] = camellia_setup128_subL[24] ^ camellia_setup128_subL[23];
  camellia_setup128_subkey[24 * 2 + 1] = camellia_setup128_subR[24] ^ camellia_setup128_subR[23];
  /* end function camellia_setup128 */
  ;
  write(1, (const void *)main_subkey, (size_t)sizeof(uint32_t [50]) /*200ul*/ );
  main__return_value = 0;
}

