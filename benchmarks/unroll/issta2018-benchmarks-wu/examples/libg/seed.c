#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
// tag-#anon#ST[ARR32{U32}$U32$'keyschedule']
// file seed.c line 38
struct anonymous;


typedef struct anonymous SEED_context;





// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// buf_get_be32
// file seed.c line 44
uint32_t buf_get_be32(const void *_buf);
// buf_put_be32
// file seed.c line 50
void buf_put_be32(void *_buf, uint32_t val);
// do_decrypt
// file seed.c line 384
void do_decrypt(SEED_context *ctx, uint8_t *outbuf, const uint8_t *inbuf);
// do_encrypt
// file seed.c line 338
void do_encrypt(const SEED_context *ctx, uint8_t *outbuf, const uint8_t *inbuf);
// do_setkey
// file seed.c line 269
void do_setkey(const uint8_t *key, SEED_context *ctx, const unsigned int keylen);

struct anonymous
{
  // keyschedule
  uint32_t keyschedule[32];
};


// KC
// file seed.c line 261
static const uint32_t KC[16]={ 0x9E3779B9u, 1013904243u, 2027808486u, 0xF1BBCDCCu, 0xE3779B99u, 0xC6EF3733u, 0x8DDE6E67u, 465362127u, 930724254u, 1861448508u, 0xDDE6E678u, 0xBBCDCCF1u, 2006686179u, 0xEF3733C6u, 0xDE6E678Du, 0xBCDCCF1Bu };
// SS0
// file seed.c line 77
static const uint32_t SS0[256]={ 696885672u, 92635524u, 382128852u, 331600848u, 340021332u, 487395612u, 747413676u, 621093156u, 491606364u, 54739776u, 403181592u, 504238620u, 289493328u, 1020063996u, 181060296u, 591618912u, 671621160u, 71581764u, 536879136u, 495817116u, 549511392u, 583197408u, 147374280u, 386339604u, 629514660u, 261063564u, 50529024u, 994800504u, 999011256u, 318968592u, 314757840u, 785310444u, 809529456u, 210534540u, 1057960764u, 680042664u, 839004720u, 500027868u, 919007988u, 876900468u, 751624428u, 361075092u, 185271048u, 390550356u, 474763356u, 457921368u, 1032696252u, 16843008u, 604250148u, 470552604u, 860058480u, 411603096u, 268439568u, 214745292u, 851636976u, 432656856u, 738992172u, 667411428u, 843215472u, 58950528u, 462132120u, 297914832u, 109478532u, 164217288u, 541089888u, 272650320u, 595829664u, 734782440u, 218956044u, 914797236u, 512660124u, 256852812u, 931640244u, 441078360u, 113689284u, 944271480u, 646357668u, 302125584u, 797942700u, 365285844u, 557932896u, 63161280u, 881111220u, 21053760u, 306336336u, 1028485500u, 227377548u, 134742024u, 521081628u, 428446104u, 0u, 420024600u, 67371012u, 323179344u, 935850996u, 566354400u, 1036907004u, 910586484u, 789521196u, 654779172u, 813740208u, 193692552u, 235799052u, 730571688u, 578986656u, 776888940u, 327390096u, 223166796u, 692674920u, 1011642492u, 151585032u, 168428040u, 1066382268u, 802153452u, 868479984u, 96846276u, 126321540u, 335810580u, 1053750012u, 608460900u, 516870876u, 772678188u, 189481800u, 436867608u, 101057028u, 553722144u, 726360936u, 642146916u, 33686016u, 902164980u, 310547088u, 176849544u, 202113036u, 864269232u, 1045328508u, 281071824u, 977957496u, 122110788u, 377918100u, 633725412u, 637936164u, 8421504u, 764256684u, 533713884u, 562143648u, 805318704u, 923218740u, 781099692u, 906375732u, 352653588u, 570565152u, 940060728u, 885321972u, 663200676u, 5526548u, 206323788u, 25264512u, 701096424u, 75792516u, 394761108u, 889532724u, 197903304u, 248431308u, 1007431740u, 826372464u, 285282576u, 130532292u, 160006536u, 893743476u, 1003222008u, 449499864u, 952692984u, 344232084u, 424235352u, 42107520u, 80003268u, 1070593020u, 155795784u, 956903736u, 658989924u, 12632256u, 265274316u, 398971860u, 948482232u, 252642060u, 244220556u, 37896768u, 587408160u, 293704080u, 743202924u, 466342872u, 612671652u, 872689716u, 834793968u, 138952776u, 46318272u, 793731948u, 1024274748u, 755835180u, 4210752u, 1049539260u, 1041117756u, 1015853244u, 29475264u, 713728680u, 982168248u, 240009804u, 356864340u, 990589752u, 483184860u, 675831912u, 1062171516u, 478974108u, 415813848u, 172638792u, 373707348u, 927429492u, 545300640u, 768467436u, 105267780u, 897954228u, 722150184u, 625303908u, 986379000u, 600040416u, 965325240u, 830583216u, 529503132u, 508449372u, 969535992u, 650568420u, 847426224u, 822161712u, 717939432u, 760045932u, 525292380u, 616882404u, 817950960u, 231588300u, 143163528u, 369496596u, 973746744u, 407392344u, 348442836u, 574775904u, 688464168u, 117900036u, 855847728u, 684253416u, 453710616u, 84214020u, 961114488u, 276861072u, 709517928u, 705307176u, 445289112u };
// SS1
// file seed.c line 123
static const uint32_t SS1[256]={ 943196208u, 0xE828C8E0u, 741149985u, 0xA42686A2u, 0xCC0FCFC3u, 0xDC1ECED2u, 0xB03383B3u, 0xB83888B0u, 0xAC2F8FA3u, 1612726368u, 1410680145u, 0xC407C7C3u, 1141130304u, 1815039843u, 1747667811u, 1478183763u, 0xC003C3C3u, 1612857954u, 808649523u, 0xB43585B1u, 673777953u, 0xA02080A0u, 0xE022C2E2u, 0xA42787A3u, 0xD013C3D3u, 0x90118191u, 269549841u, 67503618u, 471600144u, 0xBC3C8CB0u, 875955762u, 1208699715u, 0xEC2FCFE3u, 0x88088880u, 1814842464u, 0xA82888A0u, 337053459u, 0xC404C4C0u, 336987666u, 0xF434C4F0u, 0xC002C2C2u, 1141196097u, 0xE021C1E1u, 0xD416C6D2u, 1010765619u, 1010634033u, 0x8C0E8E82u, 0x98188890u, 673712160u, 1276005954u, 0xF436C6F2u, 1010699826u, 0xA42585A1u, 0xF839C9F1u, 202181889u, 0xDC1FCFD3u, 0xD818C8D0u, 673909539u, 1680229986u, 2017086066u, 606537507u, 741281571u, 0xF031C1F1u, 1882342002u, 1073889858u, 0xD414C4D0u, 1073824065u, 0xC000C0C0u, 1882407795u, 1680295779u, 0xAC2C8CA0u, 0x880B8B83u, 0xF437C7F3u, 0xAC2D8DA1u, 0x80008080u, 471797523u, 0xC80ACAC2u, 741084192u, 0xA82A8AA2u, 875824176u, 0xD012C2D2u, 134941443u, 0xEC2ECEE2u, 0xE829C9E1u, 1545424209u, 0x94148490u, 404228112u, 0xF838C8F0u, 1410811731u, 0xAC2E8EA2u, 134744064u, 0xC405C5C1u, 269681427u, 0xCC0DCDC1u, 0x84068682u, 0xB83989B1u, 0xFC3FCFF3u, 2084392305u, 0xC001C1C1u, 808517937u, 0xF435C5F1u, 0x880A8A82u, 1747602018u, 0xB03181B1u, 0xD011C1D1u, 538968096u, 0xD417C7D3u, 131586u, 539099682u, 67372032u, 1747470432u, 1882276209u, 67569411u, 0xD81BCBD3u, 0x9C1D8D91u, 0x98198991u, 1612792161u, 0xBC3E8EB2u, 0xE426C6E2u, 1478052177u, 0xDC1DCDD1u, 1343308113u, 0x90108090u, 0xDC1CCCD0u, 0x981A8A92u, 0xA02383A3u, 0xA82B8BA3u, 0xD010C0D0u, 0x80018181u, 202313475u, 1141327683u, 404359698u, 0xE023C3E3u, 0xEC2CCCE0u, 0x8C0D8D81u, 0xBC3F8FB3u, 0x94168692u, 2017151859u, 1545358416u, 0xA02282A2u, 0xA02181A1u, 1612923747u, 539165475u, 1275940161u, 0xC808C8C0u, 0x9C1E8E92u, 0x9C1C8C90u, 943327794u, 202116096u, 741215778u, 0xB83A8AB2u, 1814974050u, 0x9C1F8F93u, 1478117970u, 0xF032C2F2u, 0x90128292u, 0xF033C3F3u, 1208568129u, 2016954480u, 0xCC0CCCC0u, 336921873u, 0xF83BCBF3u, 1882210416u, 1949648241u, 2084523891u, 875889969u, 269484048u, 197379u, 1680098400u, 1814908257u, 0xC406C6C2u, 1949582448u, 0xD415C5D1u, 0xB43484B0u, 0xE82ACAE2u, 134809857u, 1949714034u, 404293905u, 0xFC3ECEF2u, 1073758272u, 269615634u, 0xE020C0E0u, 0xBC3D8DB1u, 67437825u, 0xF83ACAF2u, 65793u, 0xF030C0F0u, 673843746u, 1545490002u, 0xA82989A1u, 1410745938u, 1073955651u, 0x84058581u, 336856080u, 0x88098981u, 0x981B8B93u, 0xB03080B0u, 0xE425C5E1u, 1208502336u, 2017020273u, 0x94178793u, 0xFC3CCCF0u, 471731730u, 0x80028282u, 539033889u, 0x8C0C8C80u, 404425491u, 1545555795u, 1949779827u, 1410614352u, 0xB03282B2u, 471665937u, 606405921u, 1276071747u, 0u, 1141261890u, 0xEC2DCDE1u, 1477986384u, 1343373906u, 0xE82BCBE3u, 2084458098u, 0xD81ACAD2u, 0xC809C9C1u, 0xFC3DCDF1u, 808452144u, 0x94158591u, 1680164193u, 1010568240u, 0xB43686B2u, 0xE424C4E0u, 0xB83B8BB3u, 2084326512u, 202247682u, 1343242320u, 943262001u, 606471714u, 808583730u, 0x84048480u, 1747536225u, 0x90138393u, 876021555u, 0xE427C7E3u, 606340128u, 0xA42484A0u, 0xC80BCBC3u, 1343439699u, 134875650u, 0x84078783u, 0xD819C9D1u, 1275874368u, 0x80038383u, 0x8C0F8F83u, 0xCC0ECEC2u, 943393587u, 1208633922u, 0xB43787B3u };
// SS2
// file seed.c line 169
static const uint32_t SS2[256]={ 0xA1A82989u, 0x81840585u, 0xD2D416C6u, 0xD3D013C3u, 1347687492u, 287055117u, 0xA0AC2C8Cu, 556016901u, 1364991309u, 1128268611u, 270014472u, 303832590u, 1364201793u, 0xF0FC3CCCu, 0xC2C80ACAu, 1667244867u, 539502600u, 1078199364u, 538976256u, 0x919C1D8Du, 0xE0E020C0u, 0xE2E022C2u, 0xC0C808C8u, 320083719u, 0xA1A42585u, 0x838C0F8Fu, 50332419u, 1937259339u, 0xB3B83B8Bu, 319820547u, 0xD2D012C2u, 0xE2EC2ECEu, 1886400576u, 0x808C0C8Cu, 859586319u, 0xA0A82888u, 842019330u, 0xD1DC1DCDu, 0xF2F436C6u, 1886663748u, 0xE0EC2CCCu, 0x91941585u, 50858763u, 1398019911u, 1348213836u, 1398283083u, 0xB1BC3D8Du, 16777473u, 539239428u, 270277644u, 1936732995u, 0x90981888u, 269488128u, 0xC0CC0CCCu, 0xF2F032C2u, 0xD1D819C9u, 539765772u, 0xE3E427C7u, 1919955522u, 0x83800383u, 0x93981B8Bu, 0xD1D011C1u, 0x82840686u, 0xC1C809C9u, 1616912448u, 1347424320u, 0xA3A02383u, 0xE3E82BCBu, 17566989u, 0xB2B43686u, 0x929C1E8Eu, 1129058127u, 0xB3B43787u, 1381505610u, 0xC2C406C6u, 1886926920u, 0xA2A42686u, 303043074u, 0xA3AC2F8Fu, 0xD1D415C5u, 1633689921u, 0xC3C003C3u, 0xB0B43484u, 1094713665u, 1380979266u, 1903967565u, 0x818C0D8Du, 526344u, 320610063u, 0x91981989u, 0u, 286791945u, 263172u, 1397756739u, 0xF3F437C7u, 0xE1E021C1u, 0xF1FC3DCDu, 1920218694u, 590098191u, 589571847u, 0xB0B03080u, 0x83880B8Bu, 34344462u, 0xA3A82B8Bu, 0xA2A02282u, 1651256910u, 0x93901383u, 1095503181u, 1634216265u, 1887190092u, 17303817u, 34081290u, 0xB3BC3F8Fu, 0xE3EC2FCFu, 0xF3F033C3u, 0xC1C405C5u, 0x83840787u, 269751300u, 0xF2FC3ECEu, 1617175620u, 0xD2DC1ECEu, 573320718u, 1128794955u, 303569418u, 33818118u, 555753729u, 1667771211u, 1650730566u, 33554946u, 0xF1F435C5u, 0x92901282u, 0x82880A8Au, 789516u, 0xB3B03383u, 1920745038u, 0xD0D010C0u, 1920481866u, 1128531783u, 0x92941686u, 0xE1E425C5u, 572794374u, 0x80800080u, 0xA1AC2D8Du, 0xD3DC1FCFu, 0xA1A02181u, 808464384u, 859059975u, 0xA2AC2E8Eu, 842282502u, 286528773u, 572531202u, 808990728u, 0xF0F434C4u, 0xA3A42787u, 1094976837u, 1078725708u, 0x81800181u, 0xE1E829C9u, 0x80840484u, 0x93941787u, 825505029u, 0xC3C80BCBu, 0xC2CC0ECEu, 809253900u, 1903178049u, 286265601u, 0xC3C407C7u, 0x81880989u, 1903441221u, 0xF3F83BCBu, 0xD2D81ACAu, 0xF0F838C8u, 0x90941484u, 1364728137u, 0x82800282u, 0xC0C404C4u, 0xF3FC3FCFu, 1095240009u, 825768201u, 1667508039u, 0xC0C000C0u, 0xC3CC0FCFu, 0xD3D417C7u, 0xB0B83888u, 51121935u, 0x828C0E8Eu, 1111491138u, 589308675u, 0x91901181u, 1617701964u, 0xD3D81BCBu, 0xA0A42484u, 808727556u, 0xF1F031C1u, 1078462536u, 0xC2C002C2u, 1668034383u, 826031373u, 556543245u, 1077936192u, 0xB2BC3E8Eu, 842808846u, 0xB0BC3C8Cu, 0xC1C001C1u, 0xA2A82A8Au, 0xB2B83A8Au, 1112280654u, 1364464965u, 859323147u, 0xD0DC1CCCu, 1617438792u, 1937522511u, 0x909C1C8Cu, 0xD0D818C8u, 1112017482u, 1381242438u, 1936996167u, 0xA0A02080u, 0xE1EC2DCDu, 1111754310u, 0xB1B43585u, 589835019u, 1633953093u, 0xF2F83ACAu, 0xE3E023C3u, 0xB1B83989u, 0xB1B03181u, 0x939C1F8Fu, 1381768782u, 0xF1F839C9u, 0xE2E426C6u, 0xB2B03282u, 825241857u, 0xE2E82ACAu, 1634479437u, 1398546255u, 0xE0E424C4u, 0xF0F030C0u, 0xC1CC0DCDu, 0x80880888u, 303306246u, 842545674u, 1347950664u, 0xD0D414C4u, 1650467394u, 556280073u, 50595591u, 858796803u, 0xE0E828C8u, 320346891u, 17040645u, 1903704393u, 0x90901080u, 1650993738u, 573057546u, 0x92981A8Au };
// SS3
// file seed.c line 215
static const uint32_t SS3[256]={ 137377848u, 0xC8E0E828u, 220277805u, 0x86A2A426u, 0xCFC3CC0Fu, 0xCED2DC1Eu, 0x83B3B033u, 0x88B0B838u, 0x8FA3AC2Fu, 1080057888u, 1162957845u, 0xC7C3C407u, 1145062404u, 1331915823u, 1264805931u, 1263753243u, 0xC3C3C003u, 1113743394u, 53686323u, 0x85B1B435u, 153167913u, 0x80A0A020u, 0xC2E2E022u, 0x87A3A427u, 0xC3D3D013u, 0x81919011u, 17895441u, 100795398u, 202382364u, 0x8CB0BC3Cu, 103953462u, 1262700555u, 0xCFE3EC2Fu, 0x88808808u, 1281387564u, 0x88A0A828u, 118690839u, 0xC4C0C404u, 101848086u, 0xC4F0F434u, 0xC2C2C002u, 1161905157u, 0xC1E1E021u, 0xC6D2D416u, 255015999u, 221330493u, 0x8E828C0Eu, 0x88909818u, 136325160u, 1312967694u, 0xC6F2F436u, 238173246u, 0x85A1A425u, 0xC9F1F839u, 218172429u, 0xCFD3DC1Fu, 0xC8D0D818u, 186853419u, 1180853286u, 1249015866u, 119743527u, 253963311u, 0xC1F1F031u, 1114796082u, 1111638018u, 0xC4D0D414u, 1094795265u, 0xC0C0C000u, 1131638835u, 1197696039u, 0x8CA0AC2Cu, 0x8B83880Bu, 0xC7F3F437u, 0x8DA1AC2Du, 0x80808000u, 252910623u, 0xCAC2C80Au, 203435052u, 0x8AA2A82Au, 70267956u, 0xC2D2D012u, 184748043u, 0xCEE2EC2Eu, 0xC9E1E829u, 1297177629u, 0x84909414u, 135272472u, 0xC8F0F838u, 1196643351u, 0x8EA2AC2Eu, 134219784u, 0xC5C1C405u, 51580947u, 0xCDC1CC0Du, 0x86828406u, 0x89B1B839u, 0xCFF3FC3Fu, 1299283005u, 0xC1C1C001u, 20000817u, 0xC5F1F435u, 0x8A82880Au, 1247963178u, 0x81B1B031u, 0xC1D1D011u, 2105376u, 0xC7D3D417u, 33685506u, 35790882u, 67109892u, 1214277672u, 1097953329u, 117638151u, 0xCBD3D81Bu, 0x8D919C1Du, 0x89919819u, 1096900641u, 0x8EB2BC3Eu, 0xC6E2E426u, 1230067737u, 0xCDD1DC1Du, 1095847953u, 0x80909010u, 0xCCD0DC1Cu, 0x8A92981Au, 0x83A3A023u, 0x8BA3A82Bu, 0xC0D0D010u, 0x81818001u, 251857935u, 1195590663u, 168957978u, 0xC3E3E023u, 0xCCE0EC2Cu, 0x8D818C0Du, 0x8FB3BC3Fu, 0x86929416u, 1265858619u, 1280334876u, 0x82A2A022u, 0x81A1A021u, 1130586147u, 52633635u, 1296124941u, 0xC8C0C808u, 0x8E929C1Eu, 0x8C909C1Cu, 171063354u, 201329676u, 237120558u, 0x8AB2B83Au, 1315073070u, 0x8F939C1Fu, 1246910490u, 0xC2F2F032u, 0x82929012u, 0xC3F3F033u, 1229015049u, 1215330360u, 0xCCC0CC0Cu, 85005333u, 0xCBF3F83Bu, 1081110576u, 1165063221u, 1332968511u, 87110709u, 1052688u, 50528259u, 1147167780u, 1298230317u, 0xC6C2C406u, 1148220468u, 0xC5D1D415u, 0x84B0B434u, 0xCAE2E82Au, 151062537u, 1181905974u, 152115225u, 0xCEF2FC3Eu, 1077952512u, 34738194u, 0xC0E0E020u, 0x8DB1BC3Du, 83952645u, 0xCAF2F83Au, 16842753u, 0xC0F0F030u, 170010666u, 1314020382u, 0x89A1A829u, 1179800598u, 1128480771u, 0x85818405u, 68162580u, 0x89818809u, 0x8B93981Bu, 0x80B0B030u, 0xC5E1E425u, 1212172296u, 1232173113u, 0x87939417u, 0xCCF0FC3Cu, 236067870u, 0x82828002u, 18948129u, 0x8C808C0Cu, 185800731u, 1330863135u, 1198748727u, 1146115092u, 0x82B2B032u, 219225117u, 86058021u, 1329810447u, 0u, 1178747910u, 0xCDE1EC2Du, 1213224984u, 1112690706u, 0xCBE3E82Bu, 1316125758u, 0xCAD2D81Au, 0xC9C1C809u, 0xCDF1FC3Du, 3158064u, 0x85919415u, 1164010533u, 204487740u, 0x86B2B436u, 0xC4E0E424u, 0x8BB3B83Bu, 1282440252u, 235015182u, 1079005200u, 154220601u, 102900774u, 36843570u, 0x84808404u, 1231120425u, 0x83939013u, 120796215u, 0xC7E3E427u, 69215268u, 0x84A0A424u, 0xCBC3C80Bu, 1129533459u, 167905290u, 0x87838407u, 0xC9D1D819u, 1279282188u, 0x83838003u, 0x8F838C0Fu, 0xCEC2CC0Eu, 187906107u, 1245857802u, 0x87B3B437u };
// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// buf_get_be32__return_value
// 
static uint32_t buf_get_be32__return_value;
// in_pub
// file seed.c line 429
static uint8_t in_pub[16]={ 131, 162, 248, 162, 136, 100, 31, 185, 164, 233, 165, 204, 47, 19, 28, 125 };
// main__return_value
// 
static signed int main__return_value;
// out
// file seed.c line 430
static uint8_t out[16]={ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
// read__return_value
// 
static ssize_t read__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file seed.c line 432
signed int main(int argc, char** argv)
{
  uint8_t *buf_put_be32_out;
  uint32_t buf_put_be32_val;
  void *buf_put_be32__buf;
  uint8_t *do_encrypt_t1_b;
  uint32_t do_encrypt_t1_w;
  uint8_t *do_encrypt_t0_b;
  uint32_t do_encrypt_t0_w;
  uint32_t do_encrypt_x4;
  uint32_t do_encrypt_x3;
  uint32_t do_encrypt_x2;
  uint32_t do_encrypt_x1;
  const uint8_t *do_encrypt_inbuf;
  uint8_t *do_encrypt_outbuf;
  const SEED_context *do_encrypt_ctx;
  uint32_t *do_setkey_tmp_post_keyout$0;
  uint32_t *do_setkey_tmp_post_keyout;
  const uint8_t *buf_get_be32_in;
  const void *buf_get_be32__buf;
  signed int do_setkey_i;
  uint32_t *do_setkey_keyout;
  uint8_t *do_setkey_t1_b;
  uint32_t do_setkey_t1_w;
  uint8_t *do_setkey_t0_b;
  uint32_t do_setkey_t0_w;
  uint32_t do_setkey_x4;
  uint32_t do_setkey_x3;
  uint32_t do_setkey_x2;
  uint32_t do_setkey_x1;
  unsigned int do_setkey_keylen;
  SEED_context *do_setkey_ctx;
  const uint8_t *do_setkey_key;
  uint8_t main_in_key[16];
  read(0, (void *)main_in_key, 16ul);
  read(0, (void *)in_pub, 16ul);
  /* begin function do_setkey */
  ;
  do_setkey_key = main_in_key;
  SEED_context main_ctx={ .keyschedule={ 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u } };
  do_setkey_ctx = &main_ctx;
  do_setkey_keylen = 16u;
  do_setkey_t0_b = (uint8_t *)&do_setkey_t0_w;
  do_setkey_t1_b = (uint8_t *)&do_setkey_t1_w;
  do_setkey_keyout = do_setkey_ctx->keyschedule;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)do_setkey_key;
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_setkey_x1 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_setkey_key + 4);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_setkey_x2 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_setkey_key + 8);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_setkey_x3 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_setkey_key + 12);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_setkey_x4 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  do_setkey_i = 0;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  do_setkey_t0_w = (do_setkey_x1 + do_setkey_x3) - KC[do_setkey_i];
  do_setkey_t1_w = (do_setkey_x2 + KC[do_setkey_i]) - do_setkey_x4;
  do_setkey_tmp_post_keyout = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout = SS0[(signed int)do_setkey_t0_b[0]] ^ SS1[(signed int)do_setkey_t0_b[1]] ^ SS2[(signed int)do_setkey_t0_b[2]] ^ SS3[(signed int)do_setkey_t0_b[3]];
  do_setkey_tmp_post_keyout$0 = do_setkey_keyout;
  do_setkey_keyout = do_setkey_keyout + 1;
  *do_setkey_tmp_post_keyout$0 = SS0[(signed int)do_setkey_t1_b[0]] ^ SS1[(signed int)do_setkey_t1_b[1]] ^ SS2[(signed int)do_setkey_t1_b[2]] ^ SS3[(signed int)do_setkey_t1_b[3]];
  if(do_setkey_i % 2 == 0)
  {
    do_setkey_t0_w = do_setkey_x1;
    do_setkey_x1 = do_setkey_x1 >> 8 ^ do_setkey_x2 << 24;
    do_setkey_x2 = do_setkey_x2 >> 8 ^ do_setkey_t0_w << 24;
  }

  else
  {
    do_setkey_t0_w = do_setkey_x3;
    do_setkey_x3 = do_setkey_x3 << 8 ^ do_setkey_x4 >> 24;
    do_setkey_x4 = do_setkey_x4 << 8 ^ do_setkey_t0_w >> 24;
  }
  do_setkey_i = do_setkey_i + 1;
  /* end function do_setkey */
  ;
  /* begin function do_encrypt */
  ;
  do_encrypt_ctx = &main_ctx;
  do_encrypt_outbuf = out;
  do_encrypt_inbuf = in_pub;
  do_encrypt_t0_b = (uint8_t *)&do_encrypt_t0_w;
  do_encrypt_t1_b = (uint8_t *)&do_encrypt_t1_w;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)do_encrypt_inbuf;
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_encrypt_x1 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_encrypt_inbuf + 4);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_encrypt_x2 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_encrypt_inbuf + 8);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_encrypt_x3 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  /* begin function buf_get_be32 */
  ;
  buf_get_be32__buf = (const void *)(do_encrypt_inbuf + 12);
  buf_get_be32_in = (const uint8_t *)buf_get_be32__buf;
  do_encrypt_x4 = (uint32_t)buf_get_be32_in[0] << 24 | (uint32_t)buf_get_be32_in[1] << 16 | (uint32_t)buf_get_be32_in[2] << 8 | (uint32_t)buf_get_be32_in[3];
  /* end function buf_get_be32 */
  ;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[0];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[0 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[2];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[2 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[4];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[4 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[6];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[6 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[8];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[8 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[10];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[10 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[12];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[12 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[14];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[14 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[16];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[16 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[18];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[18 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[20];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[20 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[22];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[22 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[24];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[24 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[26];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[26 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x3 ^ do_encrypt_ctx->keyschedule[28];
  do_encrypt_t1_w = do_encrypt_x4 ^ do_encrypt_ctx->keyschedule[28 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x1 = do_encrypt_x1 ^ do_encrypt_t0_w;
  do_encrypt_x2 = do_encrypt_x2 ^ do_encrypt_t1_w;
  do_encrypt_t0_w = do_encrypt_x1 ^ do_encrypt_ctx->keyschedule[30];
  do_encrypt_t1_w = do_encrypt_x2 ^ do_encrypt_ctx->keyschedule[30 + 1];
  do_encrypt_t1_w = do_encrypt_t1_w ^ do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_t0_w = SS0[(signed int)do_encrypt_t0_b[0]] ^ SS1[(signed int)do_encrypt_t0_b[1]] ^ SS2[(signed int)do_encrypt_t0_b[2]] ^ SS3[(signed int)do_encrypt_t0_b[3]];
  do_encrypt_t1_w = do_encrypt_t1_w + do_encrypt_t0_w;
  do_encrypt_t1_w = SS0[(signed int)do_encrypt_t1_b[0]] ^ SS1[(signed int)do_encrypt_t1_b[1]] ^ SS2[(signed int)do_encrypt_t1_b[2]] ^ SS3[(signed int)do_encrypt_t1_b[3]];
  do_encrypt_t0_w = do_encrypt_t0_w + do_encrypt_t1_w;
  do_encrypt_x3 = do_encrypt_x3 ^ do_encrypt_t0_w;
  do_encrypt_x4 = do_encrypt_x4 ^ do_encrypt_t1_w;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)do_encrypt_outbuf;
  buf_put_be32_val = do_encrypt_x3;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)(do_encrypt_outbuf + 4);
  buf_put_be32_val = do_encrypt_x4;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)(do_encrypt_outbuf + 8);
  buf_put_be32_val = do_encrypt_x1;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  /* begin function buf_put_be32 */
  ;
  buf_put_be32__buf = (void *)(do_encrypt_outbuf + 12);
  buf_put_be32_val = do_encrypt_x2;
  buf_put_be32_out = (uint8_t *)buf_put_be32__buf;
  buf_put_be32_out[0] = (uint8_t)(buf_put_be32_val >> 24);
  buf_put_be32_out[1] = (uint8_t)(buf_put_be32_val >> 16);
  buf_put_be32_out[2] = (uint8_t)(buf_put_be32_val >> 8);
  buf_put_be32_out[3] = (uint8_t)buf_put_be32_val;
  /* end function buf_put_be32 */
  ;
  /* end function do_encrypt */
  ;
  write(1, (const void *)&main_ctx, (size_t)sizeof(SEED_context) /*128ul*/ );
  write(1, (const void *)out, 16ul);
  main__return_value = 0;
}

