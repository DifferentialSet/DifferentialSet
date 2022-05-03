#include <unistd.h>
struct anonymous;
struct __CPROVER_pipet;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef signed int int32_t;
typedef unsigned int size_t;
typedef signed int ssize_t;
typedef struct anonymous twy_ctx;
typedef unsigned int uint32_t;
inline static __uint16_t __bswap_16(__uint16_t __bsx);
inline static __uint32_t __bswap_32(__uint32_t __bsx);
inline static __uint64_t __bswap_64(__uint64_t __bsx);
inline static __uint16_t __uint16_identity(__uint16_t __x);
inline static __uint32_t __uint32_identity(__uint32_t __x);
inline static __uint64_t __uint64_identity(__uint64_t __x);
void branch_id(char *str);
void decrypt(twy_ctx *c, int32_t *a);
void encrypt(twy_ctx *c, int32_t *a);
void gamma(int32_t *a);
void mu(int32_t *a);
void pi_1(int32_t *a);
void pi_2(int32_t *a);
void rho(int32_t *a);
void rndcon_gen(int32_t strt, int32_t *rtab);
void theta(int32_t *a);
void twy_key(uint32_t *key, twy_ctx *c);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
struct anonymous
{
  uint32_t k[3];
  uint32_t ki[3];
  uint32_t ercon[12];
  uint32_t drcon[12];
};
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
twy_ctx gc;
static uint32_t in_key[3];
static uint32_t in_pub[3];
void branch_id(char *str)
{
  ;
}

signed int main()
{
  int32_t *pi_2_a;
  int32_t gamma_b[3];
  int32_t *gamma_a;
  int32_t *pi_1_a;
  int32_t *rho_a;
  char encrypt_i;
  int32_t *encrypt_a;
  twy_ctx *encrypt_c;
  signed int rndcon_gen_i;
  int32_t *rndcon_gen_rtab;
  int32_t rndcon_gen_strt;
  int32_t mu_b[3];
  signed int mu_i;
  int32_t *mu_a;
  int32_t theta_b[3];
  int32_t *theta_a;
  twy_ctx *twy_key_c;
  uint32_t *twy_key_key;
  read(0, (void *) in_key, 12u);
  read(0, (void *) in_pub, 12u);
  ;
  twy_key_key = in_key;
  twy_key_c = &gc;
  uint32_t memop_var_0;
  memop_var_0 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[0]), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  uint32_t_secure_store_single((unsigned int) memop_var_0, (unsigned int *) twy_key_c->ki, obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
  uint32_t memop_var_2;
  memop_var_2 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[0]), obsv_ds__2, obsv_ds_bases_size__2, obsv_ds_size__2);
  uint32_t_secure_store_single((unsigned int) memop_var_2, (unsigned int *) twy_key_c->k, obsv_ds__3, obsv_ds_bases_size__3, obsv_ds_size__3);
  uint32_t memop_var_4;
  memop_var_4 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[1]), obsv_ds__4, obsv_ds_bases_size__4, obsv_ds_size__4);
  uint32_t_secure_store_single((unsigned int) memop_var_4, (unsigned int *) (&twy_key_c->ki[1]), obsv_ds__5, obsv_ds_bases_size__5, obsv_ds_size__5);
  uint32_t memop_var_6;
  memop_var_6 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[1]), obsv_ds__6, obsv_ds_bases_size__6, obsv_ds_size__6);
  uint32_t_secure_store_single((unsigned int) memop_var_6, (unsigned int *) (&twy_key_c->k[1]), obsv_ds__7, obsv_ds_bases_size__7, obsv_ds_size__7);
  uint32_t memop_var_8;
  memop_var_8 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[2]), obsv_ds__8, obsv_ds_bases_size__8, obsv_ds_size__8);
  uint32_t_secure_store_single((unsigned int) memop_var_8, (unsigned int *) (&twy_key_c->ki[2]), obsv_ds__9, obsv_ds_bases_size__9, obsv_ds_size__9);
  uint32_t memop_var_10;
  memop_var_10 = uint32_t_secure_load_single((unsigned int *) (&twy_key_key[2]), obsv_ds__10, obsv_ds_bases_size__10, obsv_ds_size__10);
  uint32_t_secure_store_single((unsigned int) memop_var_10, (unsigned int *) (&twy_key_c->k[2]), obsv_ds__11, obsv_ds_bases_size__11, obsv_ds_size__11);
  ;
  theta_a = (int32_t *) twy_key_c->ki;
  int32_t memop_var_12;
  memop_var_12 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__12, obsv_ds_bases_size__12, obsv_ds_size__12);
  int32_t memop_var_13;
  memop_var_13 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__13, obsv_ds_bases_size__13, obsv_ds_size__13);
  int32_t memop_var_14;
  memop_var_14 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__14, obsv_ds_bases_size__14, obsv_ds_size__14);
  int32_t memop_var_15;
  memop_var_15 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__15, obsv_ds_bases_size__15, obsv_ds_size__15);
  int32_t memop_var_16;
  memop_var_16 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__16, obsv_ds_bases_size__16, obsv_ds_size__16);
  int32_t memop_var_17;
  memop_var_17 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__17, obsv_ds_bases_size__17, obsv_ds_size__17);
  int32_t memop_var_18;
  memop_var_18 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__18, obsv_ds_bases_size__18, obsv_ds_size__18);
  int32_t memop_var_19;
  memop_var_19 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__19, obsv_ds_bases_size__19, obsv_ds_size__19);
  int32_t memop_var_20;
  memop_var_20 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__20, obsv_ds_bases_size__20, obsv_ds_size__20);
  int32_t memop_var_21;
  memop_var_21 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__21, obsv_ds_bases_size__21, obsv_ds_size__21);
  int32_t memop_var_22;
  memop_var_22 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__22, obsv_ds_bases_size__22, obsv_ds_size__22);
  int32_t memop_var_23;
  memop_var_23 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__23, obsv_ds_bases_size__23, obsv_ds_size__23);
  int32_t memop_var_24;
  memop_var_24 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__24, obsv_ds_bases_size__24, obsv_ds_size__24);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_12 ^ (memop_var_13 >> 16)) ^ (memop_var_14 << 16)) ^ (memop_var_15 >> 16)) ^ (memop_var_16 << 16)) ^ (memop_var_17 >> 24)) ^ (memop_var_18 << 8)) ^ (memop_var_19 >> 8)) ^ (memop_var_20 << 24)) ^ (memop_var_21 >> 16)) ^ (memop_var_22 << 16)) ^ (memop_var_23 >> 24)) ^ (memop_var_24 << 8)), (unsigned int *) theta_b, obsv_ds__25, obsv_ds_bases_size__25, obsv_ds_size__25);
  int32_t memop_var_26;
  memop_var_26 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__26, obsv_ds_bases_size__26, obsv_ds_size__26);
  int32_t memop_var_27;
  memop_var_27 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__27, obsv_ds_bases_size__27, obsv_ds_size__27);
  int32_t memop_var_28;
  memop_var_28 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__28, obsv_ds_bases_size__28, obsv_ds_size__28);
  int32_t memop_var_29;
  memop_var_29 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__29, obsv_ds_bases_size__29, obsv_ds_size__29);
  int32_t memop_var_30;
  memop_var_30 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__30, obsv_ds_bases_size__30, obsv_ds_size__30);
  int32_t memop_var_31;
  memop_var_31 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__31, obsv_ds_bases_size__31, obsv_ds_size__31);
  int32_t memop_var_32;
  memop_var_32 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__32, obsv_ds_bases_size__32, obsv_ds_size__32);
  int32_t memop_var_33;
  memop_var_33 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__33, obsv_ds_bases_size__33, obsv_ds_size__33);
  int32_t memop_var_34;
  memop_var_34 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__34, obsv_ds_bases_size__34, obsv_ds_size__34);
  int32_t memop_var_35;
  memop_var_35 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__35, obsv_ds_bases_size__35, obsv_ds_size__35);
  int32_t memop_var_36;
  memop_var_36 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__36, obsv_ds_bases_size__36, obsv_ds_size__36);
  int32_t memop_var_37;
  memop_var_37 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__37, obsv_ds_bases_size__37, obsv_ds_size__37);
  int32_t memop_var_38;
  memop_var_38 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__38, obsv_ds_bases_size__38, obsv_ds_size__38);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_26 ^ (memop_var_27 >> 16)) ^ (memop_var_28 << 16)) ^ (memop_var_29 >> 16)) ^ (memop_var_30 << 16)) ^ (memop_var_31 >> 24)) ^ (memop_var_32 << 8)) ^ (memop_var_33 >> 8)) ^ (memop_var_34 << 24)) ^ (memop_var_35 >> 16)) ^ (memop_var_36 << 16)) ^ (memop_var_37 >> 24)) ^ (memop_var_38 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__39, obsv_ds_bases_size__39, obsv_ds_size__39);
  int32_t memop_var_40;
  memop_var_40 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__40, obsv_ds_bases_size__40, obsv_ds_size__40);
  int32_t memop_var_41;
  memop_var_41 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__41, obsv_ds_bases_size__41, obsv_ds_size__41);
  int32_t memop_var_42;
  memop_var_42 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__42, obsv_ds_bases_size__42, obsv_ds_size__42);
  int32_t memop_var_43;
  memop_var_43 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__43, obsv_ds_bases_size__43, obsv_ds_size__43);
  int32_t memop_var_44;
  memop_var_44 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__44, obsv_ds_bases_size__44, obsv_ds_size__44);
  int32_t memop_var_45;
  memop_var_45 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__45, obsv_ds_bases_size__45, obsv_ds_size__45);
  int32_t memop_var_46;
  memop_var_46 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__46, obsv_ds_bases_size__46, obsv_ds_size__46);
  int32_t memop_var_47;
  memop_var_47 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__47, obsv_ds_bases_size__47, obsv_ds_size__47);
  int32_t memop_var_48;
  memop_var_48 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__48, obsv_ds_bases_size__48, obsv_ds_size__48);
  int32_t memop_var_49;
  memop_var_49 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__49, obsv_ds_bases_size__49, obsv_ds_size__49);
  int32_t memop_var_50;
  memop_var_50 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__50, obsv_ds_bases_size__50, obsv_ds_size__50);
  int32_t memop_var_51;
  memop_var_51 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__51, obsv_ds_bases_size__51, obsv_ds_size__51);
  int32_t memop_var_52;
  memop_var_52 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__52, obsv_ds_bases_size__52, obsv_ds_size__52);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_40 ^ (memop_var_41 >> 16)) ^ (memop_var_42 << 16)) ^ (memop_var_43 >> 16)) ^ (memop_var_44 << 16)) ^ (memop_var_45 >> 24)) ^ (memop_var_46 << 8)) ^ (memop_var_47 >> 8)) ^ (memop_var_48 << 24)) ^ (memop_var_49 >> 16)) ^ (memop_var_50 << 16)) ^ (memop_var_51 >> 24)) ^ (memop_var_52 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__53, obsv_ds_bases_size__53, obsv_ds_size__53);
  int32_t memop_var_54;
  memop_var_54 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__54, obsv_ds_bases_size__54, obsv_ds_size__54);
  uint32_t_secure_store_single((unsigned int) memop_var_54, (unsigned int *) (&theta_a[0]), obsv_ds__55, obsv_ds_bases_size__55, obsv_ds_size__55);
  int32_t memop_var_56;
  memop_var_56 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__56, obsv_ds_bases_size__56, obsv_ds_size__56);
  uint32_t_secure_store_single((unsigned int) memop_var_56, (unsigned int *) (&theta_a[1]), obsv_ds__57, obsv_ds_bases_size__57, obsv_ds_size__57);
  int32_t memop_var_58;
  memop_var_58 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__58, obsv_ds_bases_size__58, obsv_ds_size__58);
  uint32_t_secure_store_single((unsigned int) memop_var_58, (unsigned int *) (&theta_a[2]), obsv_ds__59, obsv_ds_bases_size__59, obsv_ds_size__59);
  ;
  ;
  mu_a = (int32_t *) twy_key_c->ki;
  uint32_t_secure_store_single(0u, (unsigned int *) mu_b, obsv_ds__60, obsv_ds_bases_size__60, obsv_ds_size__60);
  uint32_t_secure_store_single(0u, (unsigned int *) (&mu_b[1]), obsv_ds__61, obsv_ds_bases_size__61, obsv_ds_size__61);
  uint32_t_secure_store_single(0u, (unsigned int *) (&mu_b[2]), obsv_ds__62, obsv_ds_bases_size__62, obsv_ds_size__62);
  mu_i = 0;
  int32_t memop_var_63;
  memop_var_63 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__63, obsv_ds_bases_size__63, obsv_ds_size__63);
  uint32_t_secure_store_single((unsigned int) (memop_var_63 << 1), (unsigned int *) mu_b, obsv_ds__64, obsv_ds_bases_size__64, obsv_ds_size__64);
  int32_t memop_var_65;
  memop_var_65 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__65, obsv_ds_bases_size__65, obsv_ds_size__65);
  uint32_t_secure_store_single((unsigned int) (memop_var_65 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__66, obsv_ds_bases_size__66, obsv_ds_size__66);
  int32_t memop_var_67;
  memop_var_67 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__67, obsv_ds_bases_size__67, obsv_ds_size__67);
  uint32_t_secure_store_single((unsigned int) (memop_var_67 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__68, obsv_ds_bases_size__68, obsv_ds_size__68);
  int32_t memop_var_69;
  memop_var_69 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__69, obsv_ds_bases_size__69, obsv_ds_size__69);
  int32_t memop_var_70;
  if ((memop_var_69 & 1) == 0)
  {
    branch_id("$1");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$0_70, obsv_ds_bases_size_$0_70, obsv_ds_size_$0_70);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$0_71, obsv_ds_bases_size_$0_71, obsv_ds_size_$0_71);
    }
  }
  else
  {
    branch_id("$0");
    memop_var_70 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$0_70, obsv_ds_bases_size_$0_70, obsv_ds_size_$0_70);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_70 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$0_71, obsv_ds_bases_size_$0_71, obsv_ds_size_$0_71);
  }

  int32_t memop_var_72;
  memop_var_72 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__72, obsv_ds_bases_size__72, obsv_ds_size__72);
  int32_t memop_var_73;
  if ((memop_var_72 & 1) == 0)
  {
    branch_id("$3");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$2_73, obsv_ds_bases_size_$2_73, obsv_ds_size_$2_73);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$2_74, obsv_ds_bases_size_$2_74, obsv_ds_size_$2_74);
    }
  }
  else
  {
    branch_id("$2");
    memop_var_73 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$2_73, obsv_ds_bases_size_$2_73, obsv_ds_size_$2_73);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_73 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$2_74, obsv_ds_bases_size_$2_74, obsv_ds_size_$2_74);
  }

  int32_t memop_var_75;
  memop_var_75 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__75, obsv_ds_bases_size__75, obsv_ds_size__75);
  int32_t memop_var_76;
  if ((memop_var_75 & 1) == 0)
  {
    branch_id("$5");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$4_76, obsv_ds_bases_size_$4_76, obsv_ds_size_$4_76);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$4_77, obsv_ds_bases_size_$4_77, obsv_ds_size_$4_77);
    }
  }
  else
  {
    branch_id("$4");
    memop_var_76 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$4_76, obsv_ds_bases_size_$4_76, obsv_ds_size_$4_76);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_76 | 1), (unsigned int *) mu_b, obsv_ds_$4_77, obsv_ds_bases_size_$4_77, obsv_ds_size_$4_77);
  }

  int32_t memop_var_78;
  memop_var_78 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__78, obsv_ds_bases_size__78, obsv_ds_size__78);
  uint32_t_secure_store_single((unsigned int) (memop_var_78 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__79, obsv_ds_bases_size__79, obsv_ds_size__79);
  int32_t memop_var_80;
  memop_var_80 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__80, obsv_ds_bases_size__80, obsv_ds_size__80);
  uint32_t_secure_store_single((unsigned int) (memop_var_80 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__81, obsv_ds_bases_size__81, obsv_ds_size__81);
  int32_t memop_var_82;
  memop_var_82 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__82, obsv_ds_bases_size__82, obsv_ds_size__82);
  uint32_t_secure_store_single((unsigned int) (memop_var_82 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__83, obsv_ds_bases_size__83, obsv_ds_size__83);
  mu_i = mu_i + 1;
  int32_t memop_var_84;
  memop_var_84 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__84, obsv_ds_bases_size__84, obsv_ds_size__84);
  uint32_t_secure_store_single((unsigned int) (memop_var_84 << 1), (unsigned int *) mu_b, obsv_ds__85, obsv_ds_bases_size__85, obsv_ds_size__85);
  int32_t memop_var_86;
  memop_var_86 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__86, obsv_ds_bases_size__86, obsv_ds_size__86);
  uint32_t_secure_store_single((unsigned int) (memop_var_86 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__87, obsv_ds_bases_size__87, obsv_ds_size__87);
  int32_t memop_var_88;
  memop_var_88 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__88, obsv_ds_bases_size__88, obsv_ds_size__88);
  uint32_t_secure_store_single((unsigned int) (memop_var_88 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__89, obsv_ds_bases_size__89, obsv_ds_size__89);
  int32_t memop_var_90;
  memop_var_90 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__90, obsv_ds_bases_size__90, obsv_ds_size__90);
  int32_t memop_var_91;
  if ((memop_var_90 & 1) == 0)
  {
    branch_id("$7");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$6_91, obsv_ds_bases_size_$6_91, obsv_ds_size_$6_91);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$6_92, obsv_ds_bases_size_$6_92, obsv_ds_size_$6_92);
    }
  }
  else
  {
    branch_id("$6");
    memop_var_91 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$6_91, obsv_ds_bases_size_$6_91, obsv_ds_size_$6_91);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_91 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$6_92, obsv_ds_bases_size_$6_92, obsv_ds_size_$6_92);
  }

  int32_t memop_var_93;
  memop_var_93 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__93, obsv_ds_bases_size__93, obsv_ds_size__93);
  int32_t memop_var_94;
  if ((memop_var_93 & 1) == 0)
  {
    branch_id("$9");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$8_94, obsv_ds_bases_size_$8_94, obsv_ds_size_$8_94);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$8_95, obsv_ds_bases_size_$8_95, obsv_ds_size_$8_95);
    }
  }
  else
  {
    branch_id("$8");
    memop_var_94 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$8_94, obsv_ds_bases_size_$8_94, obsv_ds_size_$8_94);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_94 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$8_95, obsv_ds_bases_size_$8_95, obsv_ds_size_$8_95);
  }

  int32_t memop_var_96;
  memop_var_96 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__96, obsv_ds_bases_size__96, obsv_ds_size__96);
  int32_t memop_var_97;
  if ((memop_var_96 & 1) == 0)
  {
    branch_id("$11");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$10_97, obsv_ds_bases_size_$10_97, obsv_ds_size_$10_97);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$10_98, obsv_ds_bases_size_$10_98, obsv_ds_size_$10_98);
    }
  }
  else
  {
    branch_id("$10");
    memop_var_97 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$10_97, obsv_ds_bases_size_$10_97, obsv_ds_size_$10_97);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_97 | 1), (unsigned int *) mu_b, obsv_ds_$10_98, obsv_ds_bases_size_$10_98, obsv_ds_size_$10_98);
  }

  int32_t memop_var_99;
  memop_var_99 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__99, obsv_ds_bases_size__99, obsv_ds_size__99);
  uint32_t_secure_store_single((unsigned int) (memop_var_99 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__100, obsv_ds_bases_size__100, obsv_ds_size__100);
  int32_t memop_var_101;
  memop_var_101 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__101, obsv_ds_bases_size__101, obsv_ds_size__101);
  uint32_t_secure_store_single((unsigned int) (memop_var_101 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__102, obsv_ds_bases_size__102, obsv_ds_size__102);
  int32_t memop_var_103;
  memop_var_103 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__103, obsv_ds_bases_size__103, obsv_ds_size__103);
  uint32_t_secure_store_single((unsigned int) (memop_var_103 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__104, obsv_ds_bases_size__104, obsv_ds_size__104);
  mu_i = mu_i + 1;
  int32_t memop_var_105;
  memop_var_105 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__105, obsv_ds_bases_size__105, obsv_ds_size__105);
  uint32_t_secure_store_single((unsigned int) (memop_var_105 << 1), (unsigned int *) mu_b, obsv_ds__106, obsv_ds_bases_size__106, obsv_ds_size__106);
  int32_t memop_var_107;
  memop_var_107 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__107, obsv_ds_bases_size__107, obsv_ds_size__107);
  uint32_t_secure_store_single((unsigned int) (memop_var_107 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__108, obsv_ds_bases_size__108, obsv_ds_size__108);
  int32_t memop_var_109;
  memop_var_109 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__109, obsv_ds_bases_size__109, obsv_ds_size__109);
  uint32_t_secure_store_single((unsigned int) (memop_var_109 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__110, obsv_ds_bases_size__110, obsv_ds_size__110);
  int32_t memop_var_111;
  memop_var_111 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__111, obsv_ds_bases_size__111, obsv_ds_size__111);
  int32_t memop_var_112;
  if ((memop_var_111 & 1) == 0)
  {
    branch_id("$13");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$12_112, obsv_ds_bases_size_$12_112, obsv_ds_size_$12_112);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$12_113, obsv_ds_bases_size_$12_113, obsv_ds_size_$12_113);
    }
  }
  else
  {
    branch_id("$12");
    memop_var_112 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$12_112, obsv_ds_bases_size_$12_112, obsv_ds_size_$12_112);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_112 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$12_113, obsv_ds_bases_size_$12_113, obsv_ds_size_$12_113);
  }

  int32_t memop_var_114;
  memop_var_114 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__114, obsv_ds_bases_size__114, obsv_ds_size__114);
  int32_t memop_var_115;
  if ((memop_var_114 & 1) == 0)
  {
    branch_id("$15");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$14_115, obsv_ds_bases_size_$14_115, obsv_ds_size_$14_115);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$14_116, obsv_ds_bases_size_$14_116, obsv_ds_size_$14_116);
    }
  }
  else
  {
    branch_id("$14");
    memop_var_115 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$14_115, obsv_ds_bases_size_$14_115, obsv_ds_size_$14_115);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_115 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$14_116, obsv_ds_bases_size_$14_116, obsv_ds_size_$14_116);
  }

  int32_t memop_var_117;
  memop_var_117 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__117, obsv_ds_bases_size__117, obsv_ds_size__117);
  int32_t memop_var_118;
  if ((memop_var_117 & 1) == 0)
  {
    branch_id("$17");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$16_118, obsv_ds_bases_size_$16_118, obsv_ds_size_$16_118);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$16_119, obsv_ds_bases_size_$16_119, obsv_ds_size_$16_119);
    }
  }
  else
  {
    branch_id("$16");
    memop_var_118 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$16_118, obsv_ds_bases_size_$16_118, obsv_ds_size_$16_118);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_118 | 1), (unsigned int *) mu_b, obsv_ds_$16_119, obsv_ds_bases_size_$16_119, obsv_ds_size_$16_119);
  }

  int32_t memop_var_120;
  memop_var_120 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__120, obsv_ds_bases_size__120, obsv_ds_size__120);
  uint32_t_secure_store_single((unsigned int) (memop_var_120 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__121, obsv_ds_bases_size__121, obsv_ds_size__121);
  int32_t memop_var_122;
  memop_var_122 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__122, obsv_ds_bases_size__122, obsv_ds_size__122);
  uint32_t_secure_store_single((unsigned int) (memop_var_122 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__123, obsv_ds_bases_size__123, obsv_ds_size__123);
  int32_t memop_var_124;
  memop_var_124 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__124, obsv_ds_bases_size__124, obsv_ds_size__124);
  uint32_t_secure_store_single((unsigned int) (memop_var_124 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__125, obsv_ds_bases_size__125, obsv_ds_size__125);
  mu_i = mu_i + 1;
  int32_t memop_var_126;
  memop_var_126 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__126, obsv_ds_bases_size__126, obsv_ds_size__126);
  uint32_t_secure_store_single((unsigned int) (memop_var_126 << 1), (unsigned int *) mu_b, obsv_ds__127, obsv_ds_bases_size__127, obsv_ds_size__127);
  int32_t memop_var_128;
  memop_var_128 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__128, obsv_ds_bases_size__128, obsv_ds_size__128);
  uint32_t_secure_store_single((unsigned int) (memop_var_128 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__129, obsv_ds_bases_size__129, obsv_ds_size__129);
  int32_t memop_var_130;
  memop_var_130 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__130, obsv_ds_bases_size__130, obsv_ds_size__130);
  uint32_t_secure_store_single((unsigned int) (memop_var_130 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__131, obsv_ds_bases_size__131, obsv_ds_size__131);
  int32_t memop_var_132;
  memop_var_132 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__132, obsv_ds_bases_size__132, obsv_ds_size__132);
  int32_t memop_var_133;
  if ((memop_var_132 & 1) == 0)
  {
    branch_id("$19");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$18_133, obsv_ds_bases_size_$18_133, obsv_ds_size_$18_133);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$18_134, obsv_ds_bases_size_$18_134, obsv_ds_size_$18_134);
    }
  }
  else
  {
    branch_id("$18");
    memop_var_133 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$18_133, obsv_ds_bases_size_$18_133, obsv_ds_size_$18_133);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_133 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$18_134, obsv_ds_bases_size_$18_134, obsv_ds_size_$18_134);
  }

  int32_t memop_var_135;
  memop_var_135 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__135, obsv_ds_bases_size__135, obsv_ds_size__135);
  int32_t memop_var_136;
  if ((memop_var_135 & 1) == 0)
  {
    branch_id("$21");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$20_136, obsv_ds_bases_size_$20_136, obsv_ds_size_$20_136);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$20_137, obsv_ds_bases_size_$20_137, obsv_ds_size_$20_137);
    }
  }
  else
  {
    branch_id("$20");
    memop_var_136 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$20_136, obsv_ds_bases_size_$20_136, obsv_ds_size_$20_136);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_136 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$20_137, obsv_ds_bases_size_$20_137, obsv_ds_size_$20_137);
  }

  int32_t memop_var_138;
  memop_var_138 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__138, obsv_ds_bases_size__138, obsv_ds_size__138);
  int32_t memop_var_139;
  if ((memop_var_138 & 1) == 0)
  {
    branch_id("$23");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$22_139, obsv_ds_bases_size_$22_139, obsv_ds_size_$22_139);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$22_140, obsv_ds_bases_size_$22_140, obsv_ds_size_$22_140);
    }
  }
  else
  {
    branch_id("$22");
    memop_var_139 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$22_139, obsv_ds_bases_size_$22_139, obsv_ds_size_$22_139);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_139 | 1), (unsigned int *) mu_b, obsv_ds_$22_140, obsv_ds_bases_size_$22_140, obsv_ds_size_$22_140);
  }

  int32_t memop_var_141;
  memop_var_141 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__141, obsv_ds_bases_size__141, obsv_ds_size__141);
  uint32_t_secure_store_single((unsigned int) (memop_var_141 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__142, obsv_ds_bases_size__142, obsv_ds_size__142);
  int32_t memop_var_143;
  memop_var_143 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__143, obsv_ds_bases_size__143, obsv_ds_size__143);
  uint32_t_secure_store_single((unsigned int) (memop_var_143 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__144, obsv_ds_bases_size__144, obsv_ds_size__144);
  int32_t memop_var_145;
  memop_var_145 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__145, obsv_ds_bases_size__145, obsv_ds_size__145);
  uint32_t_secure_store_single((unsigned int) (memop_var_145 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__146, obsv_ds_bases_size__146, obsv_ds_size__146);
  mu_i = mu_i + 1;
  int32_t memop_var_147;
  memop_var_147 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__147, obsv_ds_bases_size__147, obsv_ds_size__147);
  uint32_t_secure_store_single((unsigned int) (memop_var_147 << 1), (unsigned int *) mu_b, obsv_ds__148, obsv_ds_bases_size__148, obsv_ds_size__148);
  int32_t memop_var_149;
  memop_var_149 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__149, obsv_ds_bases_size__149, obsv_ds_size__149);
  uint32_t_secure_store_single((unsigned int) (memop_var_149 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__150, obsv_ds_bases_size__150, obsv_ds_size__150);
  int32_t memop_var_151;
  memop_var_151 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__151, obsv_ds_bases_size__151, obsv_ds_size__151);
  uint32_t_secure_store_single((unsigned int) (memop_var_151 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__152, obsv_ds_bases_size__152, obsv_ds_size__152);
  int32_t memop_var_153;
  memop_var_153 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__153, obsv_ds_bases_size__153, obsv_ds_size__153);
  int32_t memop_var_154;
  if ((memop_var_153 & 1) == 0)
  {
    branch_id("$25");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$24_154, obsv_ds_bases_size_$24_154, obsv_ds_size_$24_154);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$24_155, obsv_ds_bases_size_$24_155, obsv_ds_size_$24_155);
    }
  }
  else
  {
    branch_id("$24");
    memop_var_154 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$24_154, obsv_ds_bases_size_$24_154, obsv_ds_size_$24_154);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_154 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$24_155, obsv_ds_bases_size_$24_155, obsv_ds_size_$24_155);
  }

  int32_t memop_var_156;
  memop_var_156 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__156, obsv_ds_bases_size__156, obsv_ds_size__156);
  int32_t memop_var_157;
  if ((memop_var_156 & 1) == 0)
  {
    branch_id("$27");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$26_157, obsv_ds_bases_size_$26_157, obsv_ds_size_$26_157);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$26_158, obsv_ds_bases_size_$26_158, obsv_ds_size_$26_158);
    }
  }
  else
  {
    branch_id("$26");
    memop_var_157 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$26_157, obsv_ds_bases_size_$26_157, obsv_ds_size_$26_157);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_157 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$26_158, obsv_ds_bases_size_$26_158, obsv_ds_size_$26_158);
  }

  int32_t memop_var_159;
  memop_var_159 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__159, obsv_ds_bases_size__159, obsv_ds_size__159);
  int32_t memop_var_160;
  if ((memop_var_159 & 1) == 0)
  {
    branch_id("$29");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$28_160, obsv_ds_bases_size_$28_160, obsv_ds_size_$28_160);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$28_161, obsv_ds_bases_size_$28_161, obsv_ds_size_$28_161);
    }
  }
  else
  {
    branch_id("$28");
    memop_var_160 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$28_160, obsv_ds_bases_size_$28_160, obsv_ds_size_$28_160);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_160 | 1), (unsigned int *) mu_b, obsv_ds_$28_161, obsv_ds_bases_size_$28_161, obsv_ds_size_$28_161);
  }

  int32_t memop_var_162;
  memop_var_162 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__162, obsv_ds_bases_size__162, obsv_ds_size__162);
  uint32_t_secure_store_single((unsigned int) (memop_var_162 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__163, obsv_ds_bases_size__163, obsv_ds_size__163);
  int32_t memop_var_164;
  memop_var_164 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__164, obsv_ds_bases_size__164, obsv_ds_size__164);
  uint32_t_secure_store_single((unsigned int) (memop_var_164 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__165, obsv_ds_bases_size__165, obsv_ds_size__165);
  int32_t memop_var_166;
  memop_var_166 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__166, obsv_ds_bases_size__166, obsv_ds_size__166);
  uint32_t_secure_store_single((unsigned int) (memop_var_166 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__167, obsv_ds_bases_size__167, obsv_ds_size__167);
  mu_i = mu_i + 1;
  int32_t memop_var_168;
  memop_var_168 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__168, obsv_ds_bases_size__168, obsv_ds_size__168);
  uint32_t_secure_store_single((unsigned int) (memop_var_168 << 1), (unsigned int *) mu_b, obsv_ds__169, obsv_ds_bases_size__169, obsv_ds_size__169);
  int32_t memop_var_170;
  memop_var_170 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__170, obsv_ds_bases_size__170, obsv_ds_size__170);
  uint32_t_secure_store_single((unsigned int) (memop_var_170 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__171, obsv_ds_bases_size__171, obsv_ds_size__171);
  int32_t memop_var_172;
  memop_var_172 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__172, obsv_ds_bases_size__172, obsv_ds_size__172);
  uint32_t_secure_store_single((unsigned int) (memop_var_172 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__173, obsv_ds_bases_size__173, obsv_ds_size__173);
  int32_t memop_var_174;
  memop_var_174 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__174, obsv_ds_bases_size__174, obsv_ds_size__174);
  int32_t memop_var_175;
  if ((memop_var_174 & 1) == 0)
  {
    branch_id("$31");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$30_175, obsv_ds_bases_size_$30_175, obsv_ds_size_$30_175);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$30_176, obsv_ds_bases_size_$30_176, obsv_ds_size_$30_176);
    }
  }
  else
  {
    branch_id("$30");
    memop_var_175 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$30_175, obsv_ds_bases_size_$30_175, obsv_ds_size_$30_175);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_175 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$30_176, obsv_ds_bases_size_$30_176, obsv_ds_size_$30_176);
  }

  int32_t memop_var_177;
  memop_var_177 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__177, obsv_ds_bases_size__177, obsv_ds_size__177);
  int32_t memop_var_178;
  if ((memop_var_177 & 1) == 0)
  {
    branch_id("$33");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$32_178, obsv_ds_bases_size_$32_178, obsv_ds_size_$32_178);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$32_179, obsv_ds_bases_size_$32_179, obsv_ds_size_$32_179);
    }
  }
  else
  {
    branch_id("$32");
    memop_var_178 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$32_178, obsv_ds_bases_size_$32_178, obsv_ds_size_$32_178);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_178 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$32_179, obsv_ds_bases_size_$32_179, obsv_ds_size_$32_179);
  }

  int32_t memop_var_180;
  memop_var_180 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__180, obsv_ds_bases_size__180, obsv_ds_size__180);
  int32_t memop_var_181;
  if ((memop_var_180 & 1) == 0)
  {
    branch_id("$35");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$34_181, obsv_ds_bases_size_$34_181, obsv_ds_size_$34_181);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$34_182, obsv_ds_bases_size_$34_182, obsv_ds_size_$34_182);
    }
  }
  else
  {
    branch_id("$34");
    memop_var_181 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$34_181, obsv_ds_bases_size_$34_181, obsv_ds_size_$34_181);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_181 | 1), (unsigned int *) mu_b, obsv_ds_$34_182, obsv_ds_bases_size_$34_182, obsv_ds_size_$34_182);
  }

  int32_t memop_var_183;
  memop_var_183 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__183, obsv_ds_bases_size__183, obsv_ds_size__183);
  uint32_t_secure_store_single((unsigned int) (memop_var_183 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__184, obsv_ds_bases_size__184, obsv_ds_size__184);
  int32_t memop_var_185;
  memop_var_185 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__185, obsv_ds_bases_size__185, obsv_ds_size__185);
  uint32_t_secure_store_single((unsigned int) (memop_var_185 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__186, obsv_ds_bases_size__186, obsv_ds_size__186);
  int32_t memop_var_187;
  memop_var_187 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__187, obsv_ds_bases_size__187, obsv_ds_size__187);
  uint32_t_secure_store_single((unsigned int) (memop_var_187 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__188, obsv_ds_bases_size__188, obsv_ds_size__188);
  mu_i = mu_i + 1;
  int32_t memop_var_189;
  memop_var_189 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__189, obsv_ds_bases_size__189, obsv_ds_size__189);
  uint32_t_secure_store_single((unsigned int) (memop_var_189 << 1), (unsigned int *) mu_b, obsv_ds__190, obsv_ds_bases_size__190, obsv_ds_size__190);
  int32_t memop_var_191;
  memop_var_191 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__191, obsv_ds_bases_size__191, obsv_ds_size__191);
  uint32_t_secure_store_single((unsigned int) (memop_var_191 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__192, obsv_ds_bases_size__192, obsv_ds_size__192);
  int32_t memop_var_193;
  memop_var_193 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__193, obsv_ds_bases_size__193, obsv_ds_size__193);
  uint32_t_secure_store_single((unsigned int) (memop_var_193 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__194, obsv_ds_bases_size__194, obsv_ds_size__194);
  int32_t memop_var_195;
  memop_var_195 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__195, obsv_ds_bases_size__195, obsv_ds_size__195);
  int32_t memop_var_196;
  if ((memop_var_195 & 1) == 0)
  {
    branch_id("$37");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$36_196, obsv_ds_bases_size_$36_196, obsv_ds_size_$36_196);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$36_197, obsv_ds_bases_size_$36_197, obsv_ds_size_$36_197);
    }
  }
  else
  {
    branch_id("$36");
    memop_var_196 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$36_196, obsv_ds_bases_size_$36_196, obsv_ds_size_$36_196);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_196 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$36_197, obsv_ds_bases_size_$36_197, obsv_ds_size_$36_197);
  }

  int32_t memop_var_198;
  memop_var_198 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__198, obsv_ds_bases_size__198, obsv_ds_size__198);
  int32_t memop_var_199;
  if ((memop_var_198 & 1) == 0)
  {
    branch_id("$39");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$38_199, obsv_ds_bases_size_$38_199, obsv_ds_size_$38_199);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$38_200, obsv_ds_bases_size_$38_200, obsv_ds_size_$38_200);
    }
  }
  else
  {
    branch_id("$38");
    memop_var_199 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$38_199, obsv_ds_bases_size_$38_199, obsv_ds_size_$38_199);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_199 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$38_200, obsv_ds_bases_size_$38_200, obsv_ds_size_$38_200);
  }

  int32_t memop_var_201;
  memop_var_201 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__201, obsv_ds_bases_size__201, obsv_ds_size__201);
  int32_t memop_var_202;
  if ((memop_var_201 & 1) == 0)
  {
    branch_id("$41");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$40_202, obsv_ds_bases_size_$40_202, obsv_ds_size_$40_202);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$40_203, obsv_ds_bases_size_$40_203, obsv_ds_size_$40_203);
    }
  }
  else
  {
    branch_id("$40");
    memop_var_202 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$40_202, obsv_ds_bases_size_$40_202, obsv_ds_size_$40_202);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_202 | 1), (unsigned int *) mu_b, obsv_ds_$40_203, obsv_ds_bases_size_$40_203, obsv_ds_size_$40_203);
  }

  int32_t memop_var_204;
  memop_var_204 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__204, obsv_ds_bases_size__204, obsv_ds_size__204);
  uint32_t_secure_store_single((unsigned int) (memop_var_204 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__205, obsv_ds_bases_size__205, obsv_ds_size__205);
  int32_t memop_var_206;
  memop_var_206 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__206, obsv_ds_bases_size__206, obsv_ds_size__206);
  uint32_t_secure_store_single((unsigned int) (memop_var_206 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__207, obsv_ds_bases_size__207, obsv_ds_size__207);
  int32_t memop_var_208;
  memop_var_208 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__208, obsv_ds_bases_size__208, obsv_ds_size__208);
  uint32_t_secure_store_single((unsigned int) (memop_var_208 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__209, obsv_ds_bases_size__209, obsv_ds_size__209);
  mu_i = mu_i + 1;
  int32_t memop_var_210;
  memop_var_210 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__210, obsv_ds_bases_size__210, obsv_ds_size__210);
  uint32_t_secure_store_single((unsigned int) (memop_var_210 << 1), (unsigned int *) mu_b, obsv_ds__211, obsv_ds_bases_size__211, obsv_ds_size__211);
  int32_t memop_var_212;
  memop_var_212 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__212, obsv_ds_bases_size__212, obsv_ds_size__212);
  uint32_t_secure_store_single((unsigned int) (memop_var_212 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__213, obsv_ds_bases_size__213, obsv_ds_size__213);
  int32_t memop_var_214;
  memop_var_214 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__214, obsv_ds_bases_size__214, obsv_ds_size__214);
  uint32_t_secure_store_single((unsigned int) (memop_var_214 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__215, obsv_ds_bases_size__215, obsv_ds_size__215);
  int32_t memop_var_216;
  memop_var_216 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__216, obsv_ds_bases_size__216, obsv_ds_size__216);
  int32_t memop_var_217;
  if ((memop_var_216 & 1) == 0)
  {
    branch_id("$43");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$42_217, obsv_ds_bases_size_$42_217, obsv_ds_size_$42_217);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$42_218, obsv_ds_bases_size_$42_218, obsv_ds_size_$42_218);
    }
  }
  else
  {
    branch_id("$42");
    memop_var_217 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$42_217, obsv_ds_bases_size_$42_217, obsv_ds_size_$42_217);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_217 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$42_218, obsv_ds_bases_size_$42_218, obsv_ds_size_$42_218);
  }

  int32_t memop_var_219;
  memop_var_219 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__219, obsv_ds_bases_size__219, obsv_ds_size__219);
  int32_t memop_var_220;
  if ((memop_var_219 & 1) == 0)
  {
    branch_id("$45");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$44_220, obsv_ds_bases_size_$44_220, obsv_ds_size_$44_220);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$44_221, obsv_ds_bases_size_$44_221, obsv_ds_size_$44_221);
    }
  }
  else
  {
    branch_id("$44");
    memop_var_220 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$44_220, obsv_ds_bases_size_$44_220, obsv_ds_size_$44_220);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_220 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$44_221, obsv_ds_bases_size_$44_221, obsv_ds_size_$44_221);
  }

  int32_t memop_var_222;
  memop_var_222 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__222, obsv_ds_bases_size__222, obsv_ds_size__222);
  int32_t memop_var_223;
  if ((memop_var_222 & 1) == 0)
  {
    branch_id("$47");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$46_223, obsv_ds_bases_size_$46_223, obsv_ds_size_$46_223);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$46_224, obsv_ds_bases_size_$46_224, obsv_ds_size_$46_224);
    }
  }
  else
  {
    branch_id("$46");
    memop_var_223 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$46_223, obsv_ds_bases_size_$46_223, obsv_ds_size_$46_223);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_223 | 1), (unsigned int *) mu_b, obsv_ds_$46_224, obsv_ds_bases_size_$46_224, obsv_ds_size_$46_224);
  }

  int32_t memop_var_225;
  memop_var_225 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__225, obsv_ds_bases_size__225, obsv_ds_size__225);
  uint32_t_secure_store_single((unsigned int) (memop_var_225 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__226, obsv_ds_bases_size__226, obsv_ds_size__226);
  int32_t memop_var_227;
  memop_var_227 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__227, obsv_ds_bases_size__227, obsv_ds_size__227);
  uint32_t_secure_store_single((unsigned int) (memop_var_227 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__228, obsv_ds_bases_size__228, obsv_ds_size__228);
  int32_t memop_var_229;
  memop_var_229 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__229, obsv_ds_bases_size__229, obsv_ds_size__229);
  uint32_t_secure_store_single((unsigned int) (memop_var_229 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__230, obsv_ds_bases_size__230, obsv_ds_size__230);
  mu_i = mu_i + 1;
  int32_t memop_var_231;
  memop_var_231 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__231, obsv_ds_bases_size__231, obsv_ds_size__231);
  uint32_t_secure_store_single((unsigned int) (memop_var_231 << 1), (unsigned int *) mu_b, obsv_ds__232, obsv_ds_bases_size__232, obsv_ds_size__232);
  int32_t memop_var_233;
  memop_var_233 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__233, obsv_ds_bases_size__233, obsv_ds_size__233);
  uint32_t_secure_store_single((unsigned int) (memop_var_233 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__234, obsv_ds_bases_size__234, obsv_ds_size__234);
  int32_t memop_var_235;
  memop_var_235 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__235, obsv_ds_bases_size__235, obsv_ds_size__235);
  uint32_t_secure_store_single((unsigned int) (memop_var_235 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__236, obsv_ds_bases_size__236, obsv_ds_size__236);
  int32_t memop_var_237;
  memop_var_237 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__237, obsv_ds_bases_size__237, obsv_ds_size__237);
  int32_t memop_var_238;
  if ((memop_var_237 & 1) == 0)
  {
    branch_id("$49");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$48_238, obsv_ds_bases_size_$48_238, obsv_ds_size_$48_238);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$48_239, obsv_ds_bases_size_$48_239, obsv_ds_size_$48_239);
    }
  }
  else
  {
    branch_id("$48");
    memop_var_238 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$48_238, obsv_ds_bases_size_$48_238, obsv_ds_size_$48_238);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_238 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$48_239, obsv_ds_bases_size_$48_239, obsv_ds_size_$48_239);
  }

  int32_t memop_var_240;
  memop_var_240 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__240, obsv_ds_bases_size__240, obsv_ds_size__240);
  int32_t memop_var_241;
  if ((memop_var_240 & 1) == 0)
  {
    branch_id("$51");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$50_241, obsv_ds_bases_size_$50_241, obsv_ds_size_$50_241);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$50_242, obsv_ds_bases_size_$50_242, obsv_ds_size_$50_242);
    }
  }
  else
  {
    branch_id("$50");
    memop_var_241 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$50_241, obsv_ds_bases_size_$50_241, obsv_ds_size_$50_241);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_241 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$50_242, obsv_ds_bases_size_$50_242, obsv_ds_size_$50_242);
  }

  int32_t memop_var_243;
  memop_var_243 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__243, obsv_ds_bases_size__243, obsv_ds_size__243);
  int32_t memop_var_244;
  if ((memop_var_243 & 1) == 0)
  {
    branch_id("$53");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$52_244, obsv_ds_bases_size_$52_244, obsv_ds_size_$52_244);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$52_245, obsv_ds_bases_size_$52_245, obsv_ds_size_$52_245);
    }
  }
  else
  {
    branch_id("$52");
    memop_var_244 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$52_244, obsv_ds_bases_size_$52_244, obsv_ds_size_$52_244);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_244 | 1), (unsigned int *) mu_b, obsv_ds_$52_245, obsv_ds_bases_size_$52_245, obsv_ds_size_$52_245);
  }

  int32_t memop_var_246;
  memop_var_246 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__246, obsv_ds_bases_size__246, obsv_ds_size__246);
  uint32_t_secure_store_single((unsigned int) (memop_var_246 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__247, obsv_ds_bases_size__247, obsv_ds_size__247);
  int32_t memop_var_248;
  memop_var_248 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__248, obsv_ds_bases_size__248, obsv_ds_size__248);
  uint32_t_secure_store_single((unsigned int) (memop_var_248 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__249, obsv_ds_bases_size__249, obsv_ds_size__249);
  int32_t memop_var_250;
  memop_var_250 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__250, obsv_ds_bases_size__250, obsv_ds_size__250);
  uint32_t_secure_store_single((unsigned int) (memop_var_250 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__251, obsv_ds_bases_size__251, obsv_ds_size__251);
  mu_i = mu_i + 1;
  int32_t memop_var_252;
  memop_var_252 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__252, obsv_ds_bases_size__252, obsv_ds_size__252);
  uint32_t_secure_store_single((unsigned int) (memop_var_252 << 1), (unsigned int *) mu_b, obsv_ds__253, obsv_ds_bases_size__253, obsv_ds_size__253);
  int32_t memop_var_254;
  memop_var_254 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__254, obsv_ds_bases_size__254, obsv_ds_size__254);
  uint32_t_secure_store_single((unsigned int) (memop_var_254 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__255, obsv_ds_bases_size__255, obsv_ds_size__255);
  int32_t memop_var_256;
  memop_var_256 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__256, obsv_ds_bases_size__256, obsv_ds_size__256);
  uint32_t_secure_store_single((unsigned int) (memop_var_256 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__257, obsv_ds_bases_size__257, obsv_ds_size__257);
  int32_t memop_var_258;
  memop_var_258 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__258, obsv_ds_bases_size__258, obsv_ds_size__258);
  int32_t memop_var_259;
  if ((memop_var_258 & 1) == 0)
  {
    branch_id("$55");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$54_259, obsv_ds_bases_size_$54_259, obsv_ds_size_$54_259);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$54_260, obsv_ds_bases_size_$54_260, obsv_ds_size_$54_260);
    }
  }
  else
  {
    branch_id("$54");
    memop_var_259 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$54_259, obsv_ds_bases_size_$54_259, obsv_ds_size_$54_259);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_259 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$54_260, obsv_ds_bases_size_$54_260, obsv_ds_size_$54_260);
  }

  int32_t memop_var_261;
  memop_var_261 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__261, obsv_ds_bases_size__261, obsv_ds_size__261);
  int32_t memop_var_262;
  if ((memop_var_261 & 1) == 0)
  {
    branch_id("$57");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$56_262, obsv_ds_bases_size_$56_262, obsv_ds_size_$56_262);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$56_263, obsv_ds_bases_size_$56_263, obsv_ds_size_$56_263);
    }
  }
  else
  {
    branch_id("$56");
    memop_var_262 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$56_262, obsv_ds_bases_size_$56_262, obsv_ds_size_$56_262);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_262 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$56_263, obsv_ds_bases_size_$56_263, obsv_ds_size_$56_263);
  }

  int32_t memop_var_264;
  memop_var_264 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__264, obsv_ds_bases_size__264, obsv_ds_size__264);
  int32_t memop_var_265;
  if ((memop_var_264 & 1) == 0)
  {
    branch_id("$59");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$58_265, obsv_ds_bases_size_$58_265, obsv_ds_size_$58_265);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$58_266, obsv_ds_bases_size_$58_266, obsv_ds_size_$58_266);
    }
  }
  else
  {
    branch_id("$58");
    memop_var_265 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$58_265, obsv_ds_bases_size_$58_265, obsv_ds_size_$58_265);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_265 | 1), (unsigned int *) mu_b, obsv_ds_$58_266, obsv_ds_bases_size_$58_266, obsv_ds_size_$58_266);
  }

  int32_t memop_var_267;
  memop_var_267 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__267, obsv_ds_bases_size__267, obsv_ds_size__267);
  uint32_t_secure_store_single((unsigned int) (memop_var_267 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__268, obsv_ds_bases_size__268, obsv_ds_size__268);
  int32_t memop_var_269;
  memop_var_269 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__269, obsv_ds_bases_size__269, obsv_ds_size__269);
  uint32_t_secure_store_single((unsigned int) (memop_var_269 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__270, obsv_ds_bases_size__270, obsv_ds_size__270);
  int32_t memop_var_271;
  memop_var_271 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__271, obsv_ds_bases_size__271, obsv_ds_size__271);
  uint32_t_secure_store_single((unsigned int) (memop_var_271 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__272, obsv_ds_bases_size__272, obsv_ds_size__272);
  mu_i = mu_i + 1;
  int32_t memop_var_273;
  memop_var_273 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__273, obsv_ds_bases_size__273, obsv_ds_size__273);
  uint32_t_secure_store_single((unsigned int) (memop_var_273 << 1), (unsigned int *) mu_b, obsv_ds__274, obsv_ds_bases_size__274, obsv_ds_size__274);
  int32_t memop_var_275;
  memop_var_275 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__275, obsv_ds_bases_size__275, obsv_ds_size__275);
  uint32_t_secure_store_single((unsigned int) (memop_var_275 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__276, obsv_ds_bases_size__276, obsv_ds_size__276);
  int32_t memop_var_277;
  memop_var_277 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__277, obsv_ds_bases_size__277, obsv_ds_size__277);
  uint32_t_secure_store_single((unsigned int) (memop_var_277 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__278, obsv_ds_bases_size__278, obsv_ds_size__278);
  int32_t memop_var_279;
  memop_var_279 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__279, obsv_ds_bases_size__279, obsv_ds_size__279);
  int32_t memop_var_280;
  if ((memop_var_279 & 1) == 0)
  {
    branch_id("$61");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$60_280, obsv_ds_bases_size_$60_280, obsv_ds_size_$60_280);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$60_281, obsv_ds_bases_size_$60_281, obsv_ds_size_$60_281);
    }
  }
  else
  {
    branch_id("$60");
    memop_var_280 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$60_280, obsv_ds_bases_size_$60_280, obsv_ds_size_$60_280);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_280 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$60_281, obsv_ds_bases_size_$60_281, obsv_ds_size_$60_281);
  }

  int32_t memop_var_282;
  memop_var_282 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__282, obsv_ds_bases_size__282, obsv_ds_size__282);
  int32_t memop_var_283;
  if ((memop_var_282 & 1) == 0)
  {
    branch_id("$63");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$62_283, obsv_ds_bases_size_$62_283, obsv_ds_size_$62_283);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$62_284, obsv_ds_bases_size_$62_284, obsv_ds_size_$62_284);
    }
  }
  else
  {
    branch_id("$62");
    memop_var_283 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$62_283, obsv_ds_bases_size_$62_283, obsv_ds_size_$62_283);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_283 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$62_284, obsv_ds_bases_size_$62_284, obsv_ds_size_$62_284);
  }

  int32_t memop_var_285;
  memop_var_285 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__285, obsv_ds_bases_size__285, obsv_ds_size__285);
  int32_t memop_var_286;
  if ((memop_var_285 & 1) == 0)
  {
    branch_id("$65");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$64_286, obsv_ds_bases_size_$64_286, obsv_ds_size_$64_286);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$64_287, obsv_ds_bases_size_$64_287, obsv_ds_size_$64_287);
    }
  }
  else
  {
    branch_id("$64");
    memop_var_286 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$64_286, obsv_ds_bases_size_$64_286, obsv_ds_size_$64_286);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_286 | 1), (unsigned int *) mu_b, obsv_ds_$64_287, obsv_ds_bases_size_$64_287, obsv_ds_size_$64_287);
  }

  int32_t memop_var_288;
  memop_var_288 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__288, obsv_ds_bases_size__288, obsv_ds_size__288);
  uint32_t_secure_store_single((unsigned int) (memop_var_288 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__289, obsv_ds_bases_size__289, obsv_ds_size__289);
  int32_t memop_var_290;
  memop_var_290 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__290, obsv_ds_bases_size__290, obsv_ds_size__290);
  uint32_t_secure_store_single((unsigned int) (memop_var_290 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__291, obsv_ds_bases_size__291, obsv_ds_size__291);
  int32_t memop_var_292;
  memop_var_292 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__292, obsv_ds_bases_size__292, obsv_ds_size__292);
  uint32_t_secure_store_single((unsigned int) (memop_var_292 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__293, obsv_ds_bases_size__293, obsv_ds_size__293);
  mu_i = mu_i + 1;
  int32_t memop_var_294;
  memop_var_294 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__294, obsv_ds_bases_size__294, obsv_ds_size__294);
  uint32_t_secure_store_single((unsigned int) (memop_var_294 << 1), (unsigned int *) mu_b, obsv_ds__295, obsv_ds_bases_size__295, obsv_ds_size__295);
  int32_t memop_var_296;
  memop_var_296 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__296, obsv_ds_bases_size__296, obsv_ds_size__296);
  uint32_t_secure_store_single((unsigned int) (memop_var_296 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__297, obsv_ds_bases_size__297, obsv_ds_size__297);
  int32_t memop_var_298;
  memop_var_298 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__298, obsv_ds_bases_size__298, obsv_ds_size__298);
  uint32_t_secure_store_single((unsigned int) (memop_var_298 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__299, obsv_ds_bases_size__299, obsv_ds_size__299);
  int32_t memop_var_300;
  memop_var_300 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__300, obsv_ds_bases_size__300, obsv_ds_size__300);
  int32_t memop_var_301;
  if ((memop_var_300 & 1) == 0)
  {
    branch_id("$67");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$66_301, obsv_ds_bases_size_$66_301, obsv_ds_size_$66_301);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$66_302, obsv_ds_bases_size_$66_302, obsv_ds_size_$66_302);
    }
  }
  else
  {
    branch_id("$66");
    memop_var_301 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$66_301, obsv_ds_bases_size_$66_301, obsv_ds_size_$66_301);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_301 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$66_302, obsv_ds_bases_size_$66_302, obsv_ds_size_$66_302);
  }

  int32_t memop_var_303;
  memop_var_303 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__303, obsv_ds_bases_size__303, obsv_ds_size__303);
  int32_t memop_var_304;
  if ((memop_var_303 & 1) == 0)
  {
    branch_id("$69");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$68_304, obsv_ds_bases_size_$68_304, obsv_ds_size_$68_304);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$68_305, obsv_ds_bases_size_$68_305, obsv_ds_size_$68_305);
    }
  }
  else
  {
    branch_id("$68");
    memop_var_304 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$68_304, obsv_ds_bases_size_$68_304, obsv_ds_size_$68_304);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_304 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$68_305, obsv_ds_bases_size_$68_305, obsv_ds_size_$68_305);
  }

  int32_t memop_var_306;
  memop_var_306 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__306, obsv_ds_bases_size__306, obsv_ds_size__306);
  int32_t memop_var_307;
  if ((memop_var_306 & 1) == 0)
  {
    branch_id("$71");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$70_307, obsv_ds_bases_size_$70_307, obsv_ds_size_$70_307);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$70_308, obsv_ds_bases_size_$70_308, obsv_ds_size_$70_308);
    }
  }
  else
  {
    branch_id("$70");
    memop_var_307 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$70_307, obsv_ds_bases_size_$70_307, obsv_ds_size_$70_307);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_307 | 1), (unsigned int *) mu_b, obsv_ds_$70_308, obsv_ds_bases_size_$70_308, obsv_ds_size_$70_308);
  }

  int32_t memop_var_309;
  memop_var_309 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__309, obsv_ds_bases_size__309, obsv_ds_size__309);
  uint32_t_secure_store_single((unsigned int) (memop_var_309 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__310, obsv_ds_bases_size__310, obsv_ds_size__310);
  int32_t memop_var_311;
  memop_var_311 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__311, obsv_ds_bases_size__311, obsv_ds_size__311);
  uint32_t_secure_store_single((unsigned int) (memop_var_311 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__312, obsv_ds_bases_size__312, obsv_ds_size__312);
  int32_t memop_var_313;
  memop_var_313 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__313, obsv_ds_bases_size__313, obsv_ds_size__313);
  uint32_t_secure_store_single((unsigned int) (memop_var_313 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__314, obsv_ds_bases_size__314, obsv_ds_size__314);
  mu_i = mu_i + 1;
  int32_t memop_var_315;
  memop_var_315 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__315, obsv_ds_bases_size__315, obsv_ds_size__315);
  uint32_t_secure_store_single((unsigned int) (memop_var_315 << 1), (unsigned int *) mu_b, obsv_ds__316, obsv_ds_bases_size__316, obsv_ds_size__316);
  int32_t memop_var_317;
  memop_var_317 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__317, obsv_ds_bases_size__317, obsv_ds_size__317);
  uint32_t_secure_store_single((unsigned int) (memop_var_317 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__318, obsv_ds_bases_size__318, obsv_ds_size__318);
  int32_t memop_var_319;
  memop_var_319 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__319, obsv_ds_bases_size__319, obsv_ds_size__319);
  uint32_t_secure_store_single((unsigned int) (memop_var_319 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__320, obsv_ds_bases_size__320, obsv_ds_size__320);
  int32_t memop_var_321;
  memop_var_321 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__321, obsv_ds_bases_size__321, obsv_ds_size__321);
  int32_t memop_var_322;
  if ((memop_var_321 & 1) == 0)
  {
    branch_id("$73");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$72_322, obsv_ds_bases_size_$72_322, obsv_ds_size_$72_322);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$72_323, obsv_ds_bases_size_$72_323, obsv_ds_size_$72_323);
    }
  }
  else
  {
    branch_id("$72");
    memop_var_322 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$72_322, obsv_ds_bases_size_$72_322, obsv_ds_size_$72_322);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_322 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$72_323, obsv_ds_bases_size_$72_323, obsv_ds_size_$72_323);
  }

  int32_t memop_var_324;
  memop_var_324 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__324, obsv_ds_bases_size__324, obsv_ds_size__324);
  int32_t memop_var_325;
  if ((memop_var_324 & 1) == 0)
  {
    branch_id("$75");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$74_325, obsv_ds_bases_size_$74_325, obsv_ds_size_$74_325);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$74_326, obsv_ds_bases_size_$74_326, obsv_ds_size_$74_326);
    }
  }
  else
  {
    branch_id("$74");
    memop_var_325 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$74_325, obsv_ds_bases_size_$74_325, obsv_ds_size_$74_325);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_325 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$74_326, obsv_ds_bases_size_$74_326, obsv_ds_size_$74_326);
  }

  int32_t memop_var_327;
  memop_var_327 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__327, obsv_ds_bases_size__327, obsv_ds_size__327);
  int32_t memop_var_328;
  if ((memop_var_327 & 1) == 0)
  {
    branch_id("$77");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$76_328, obsv_ds_bases_size_$76_328, obsv_ds_size_$76_328);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$76_329, obsv_ds_bases_size_$76_329, obsv_ds_size_$76_329);
    }
  }
  else
  {
    branch_id("$76");
    memop_var_328 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$76_328, obsv_ds_bases_size_$76_328, obsv_ds_size_$76_328);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_328 | 1), (unsigned int *) mu_b, obsv_ds_$76_329, obsv_ds_bases_size_$76_329, obsv_ds_size_$76_329);
  }

  int32_t memop_var_330;
  memop_var_330 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__330, obsv_ds_bases_size__330, obsv_ds_size__330);
  uint32_t_secure_store_single((unsigned int) (memop_var_330 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__331, obsv_ds_bases_size__331, obsv_ds_size__331);
  int32_t memop_var_332;
  memop_var_332 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__332, obsv_ds_bases_size__332, obsv_ds_size__332);
  uint32_t_secure_store_single((unsigned int) (memop_var_332 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__333, obsv_ds_bases_size__333, obsv_ds_size__333);
  int32_t memop_var_334;
  memop_var_334 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__334, obsv_ds_bases_size__334, obsv_ds_size__334);
  uint32_t_secure_store_single((unsigned int) (memop_var_334 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__335, obsv_ds_bases_size__335, obsv_ds_size__335);
  mu_i = mu_i + 1;
  int32_t memop_var_336;
  memop_var_336 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__336, obsv_ds_bases_size__336, obsv_ds_size__336);
  uint32_t_secure_store_single((unsigned int) (memop_var_336 << 1), (unsigned int *) mu_b, obsv_ds__337, obsv_ds_bases_size__337, obsv_ds_size__337);
  int32_t memop_var_338;
  memop_var_338 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__338, obsv_ds_bases_size__338, obsv_ds_size__338);
  uint32_t_secure_store_single((unsigned int) (memop_var_338 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__339, obsv_ds_bases_size__339, obsv_ds_size__339);
  int32_t memop_var_340;
  memop_var_340 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__340, obsv_ds_bases_size__340, obsv_ds_size__340);
  uint32_t_secure_store_single((unsigned int) (memop_var_340 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__341, obsv_ds_bases_size__341, obsv_ds_size__341);
  int32_t memop_var_342;
  memop_var_342 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__342, obsv_ds_bases_size__342, obsv_ds_size__342);
  int32_t memop_var_343;
  if ((memop_var_342 & 1) == 0)
  {
    branch_id("$79");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$78_343, obsv_ds_bases_size_$78_343, obsv_ds_size_$78_343);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$78_344, obsv_ds_bases_size_$78_344, obsv_ds_size_$78_344);
    }
  }
  else
  {
    branch_id("$78");
    memop_var_343 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$78_343, obsv_ds_bases_size_$78_343, obsv_ds_size_$78_343);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_343 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$78_344, obsv_ds_bases_size_$78_344, obsv_ds_size_$78_344);
  }

  int32_t memop_var_345;
  memop_var_345 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__345, obsv_ds_bases_size__345, obsv_ds_size__345);
  int32_t memop_var_346;
  if ((memop_var_345 & 1) == 0)
  {
    branch_id("$81");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$80_346, obsv_ds_bases_size_$80_346, obsv_ds_size_$80_346);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$80_347, obsv_ds_bases_size_$80_347, obsv_ds_size_$80_347);
    }
  }
  else
  {
    branch_id("$80");
    memop_var_346 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$80_346, obsv_ds_bases_size_$80_346, obsv_ds_size_$80_346);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_346 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$80_347, obsv_ds_bases_size_$80_347, obsv_ds_size_$80_347);
  }

  int32_t memop_var_348;
  memop_var_348 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__348, obsv_ds_bases_size__348, obsv_ds_size__348);
  int32_t memop_var_349;
  if ((memop_var_348 & 1) == 0)
  {
    branch_id("$83");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$82_349, obsv_ds_bases_size_$82_349, obsv_ds_size_$82_349);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$82_350, obsv_ds_bases_size_$82_350, obsv_ds_size_$82_350);
    }
  }
  else
  {
    branch_id("$82");
    memop_var_349 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$82_349, obsv_ds_bases_size_$82_349, obsv_ds_size_$82_349);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_349 | 1), (unsigned int *) mu_b, obsv_ds_$82_350, obsv_ds_bases_size_$82_350, obsv_ds_size_$82_350);
  }

  int32_t memop_var_351;
  memop_var_351 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__351, obsv_ds_bases_size__351, obsv_ds_size__351);
  uint32_t_secure_store_single((unsigned int) (memop_var_351 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__352, obsv_ds_bases_size__352, obsv_ds_size__352);
  int32_t memop_var_353;
  memop_var_353 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__353, obsv_ds_bases_size__353, obsv_ds_size__353);
  uint32_t_secure_store_single((unsigned int) (memop_var_353 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__354, obsv_ds_bases_size__354, obsv_ds_size__354);
  int32_t memop_var_355;
  memop_var_355 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__355, obsv_ds_bases_size__355, obsv_ds_size__355);
  uint32_t_secure_store_single((unsigned int) (memop_var_355 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__356, obsv_ds_bases_size__356, obsv_ds_size__356);
  mu_i = mu_i + 1;
  int32_t memop_var_357;
  memop_var_357 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__357, obsv_ds_bases_size__357, obsv_ds_size__357);
  uint32_t_secure_store_single((unsigned int) (memop_var_357 << 1), (unsigned int *) mu_b, obsv_ds__358, obsv_ds_bases_size__358, obsv_ds_size__358);
  int32_t memop_var_359;
  memop_var_359 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__359, obsv_ds_bases_size__359, obsv_ds_size__359);
  uint32_t_secure_store_single((unsigned int) (memop_var_359 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__360, obsv_ds_bases_size__360, obsv_ds_size__360);
  int32_t memop_var_361;
  memop_var_361 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__361, obsv_ds_bases_size__361, obsv_ds_size__361);
  uint32_t_secure_store_single((unsigned int) (memop_var_361 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__362, obsv_ds_bases_size__362, obsv_ds_size__362);
  int32_t memop_var_363;
  memop_var_363 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__363, obsv_ds_bases_size__363, obsv_ds_size__363);
  int32_t memop_var_364;
  if ((memop_var_363 & 1) == 0)
  {
    branch_id("$85");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$84_364, obsv_ds_bases_size_$84_364, obsv_ds_size_$84_364);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$84_365, obsv_ds_bases_size_$84_365, obsv_ds_size_$84_365);
    }
  }
  else
  {
    branch_id("$84");
    memop_var_364 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$84_364, obsv_ds_bases_size_$84_364, obsv_ds_size_$84_364);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_364 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$84_365, obsv_ds_bases_size_$84_365, obsv_ds_size_$84_365);
  }

  int32_t memop_var_366;
  memop_var_366 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__366, obsv_ds_bases_size__366, obsv_ds_size__366);
  int32_t memop_var_367;
  if ((memop_var_366 & 1) == 0)
  {
    branch_id("$87");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$86_367, obsv_ds_bases_size_$86_367, obsv_ds_size_$86_367);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$86_368, obsv_ds_bases_size_$86_368, obsv_ds_size_$86_368);
    }
  }
  else
  {
    branch_id("$86");
    memop_var_367 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$86_367, obsv_ds_bases_size_$86_367, obsv_ds_size_$86_367);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_367 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$86_368, obsv_ds_bases_size_$86_368, obsv_ds_size_$86_368);
  }

  int32_t memop_var_369;
  memop_var_369 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__369, obsv_ds_bases_size__369, obsv_ds_size__369);
  int32_t memop_var_370;
  if ((memop_var_369 & 1) == 0)
  {
    branch_id("$89");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$88_370, obsv_ds_bases_size_$88_370, obsv_ds_size_$88_370);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$88_371, obsv_ds_bases_size_$88_371, obsv_ds_size_$88_371);
    }
  }
  else
  {
    branch_id("$88");
    memop_var_370 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$88_370, obsv_ds_bases_size_$88_370, obsv_ds_size_$88_370);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_370 | 1), (unsigned int *) mu_b, obsv_ds_$88_371, obsv_ds_bases_size_$88_371, obsv_ds_size_$88_371);
  }

  int32_t memop_var_372;
  memop_var_372 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__372, obsv_ds_bases_size__372, obsv_ds_size__372);
  uint32_t_secure_store_single((unsigned int) (memop_var_372 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__373, obsv_ds_bases_size__373, obsv_ds_size__373);
  int32_t memop_var_374;
  memop_var_374 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__374, obsv_ds_bases_size__374, obsv_ds_size__374);
  uint32_t_secure_store_single((unsigned int) (memop_var_374 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__375, obsv_ds_bases_size__375, obsv_ds_size__375);
  int32_t memop_var_376;
  memop_var_376 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__376, obsv_ds_bases_size__376, obsv_ds_size__376);
  uint32_t_secure_store_single((unsigned int) (memop_var_376 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__377, obsv_ds_bases_size__377, obsv_ds_size__377);
  mu_i = mu_i + 1;
  int32_t memop_var_378;
  memop_var_378 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__378, obsv_ds_bases_size__378, obsv_ds_size__378);
  uint32_t_secure_store_single((unsigned int) (memop_var_378 << 1), (unsigned int *) mu_b, obsv_ds__379, obsv_ds_bases_size__379, obsv_ds_size__379);
  int32_t memop_var_380;
  memop_var_380 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__380, obsv_ds_bases_size__380, obsv_ds_size__380);
  uint32_t_secure_store_single((unsigned int) (memop_var_380 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__381, obsv_ds_bases_size__381, obsv_ds_size__381);
  int32_t memop_var_382;
  memop_var_382 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__382, obsv_ds_bases_size__382, obsv_ds_size__382);
  uint32_t_secure_store_single((unsigned int) (memop_var_382 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__383, obsv_ds_bases_size__383, obsv_ds_size__383);
  int32_t memop_var_384;
  memop_var_384 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__384, obsv_ds_bases_size__384, obsv_ds_size__384);
  int32_t memop_var_385;
  if ((memop_var_384 & 1) == 0)
  {
    branch_id("$91");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$90_385, obsv_ds_bases_size_$90_385, obsv_ds_size_$90_385);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$90_386, obsv_ds_bases_size_$90_386, obsv_ds_size_$90_386);
    }
  }
  else
  {
    branch_id("$90");
    memop_var_385 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$90_385, obsv_ds_bases_size_$90_385, obsv_ds_size_$90_385);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_385 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$90_386, obsv_ds_bases_size_$90_386, obsv_ds_size_$90_386);
  }

  int32_t memop_var_387;
  memop_var_387 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__387, obsv_ds_bases_size__387, obsv_ds_size__387);
  int32_t memop_var_388;
  if ((memop_var_387 & 1) == 0)
  {
    branch_id("$93");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$92_388, obsv_ds_bases_size_$92_388, obsv_ds_size_$92_388);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$92_389, obsv_ds_bases_size_$92_389, obsv_ds_size_$92_389);
    }
  }
  else
  {
    branch_id("$92");
    memop_var_388 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$92_388, obsv_ds_bases_size_$92_388, obsv_ds_size_$92_388);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_388 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$92_389, obsv_ds_bases_size_$92_389, obsv_ds_size_$92_389);
  }

  int32_t memop_var_390;
  memop_var_390 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__390, obsv_ds_bases_size__390, obsv_ds_size__390);
  int32_t memop_var_391;
  if ((memop_var_390 & 1) == 0)
  {
    branch_id("$95");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$94_391, obsv_ds_bases_size_$94_391, obsv_ds_size_$94_391);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$94_392, obsv_ds_bases_size_$94_392, obsv_ds_size_$94_392);
    }
  }
  else
  {
    branch_id("$94");
    memop_var_391 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$94_391, obsv_ds_bases_size_$94_391, obsv_ds_size_$94_391);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_391 | 1), (unsigned int *) mu_b, obsv_ds_$94_392, obsv_ds_bases_size_$94_392, obsv_ds_size_$94_392);
  }

  int32_t memop_var_393;
  memop_var_393 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__393, obsv_ds_bases_size__393, obsv_ds_size__393);
  uint32_t_secure_store_single((unsigned int) (memop_var_393 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__394, obsv_ds_bases_size__394, obsv_ds_size__394);
  int32_t memop_var_395;
  memop_var_395 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__395, obsv_ds_bases_size__395, obsv_ds_size__395);
  uint32_t_secure_store_single((unsigned int) (memop_var_395 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__396, obsv_ds_bases_size__396, obsv_ds_size__396);
  int32_t memop_var_397;
  memop_var_397 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__397, obsv_ds_bases_size__397, obsv_ds_size__397);
  uint32_t_secure_store_single((unsigned int) (memop_var_397 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__398, obsv_ds_bases_size__398, obsv_ds_size__398);
  mu_i = mu_i + 1;
  int32_t memop_var_399;
  memop_var_399 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__399, obsv_ds_bases_size__399, obsv_ds_size__399);
  uint32_t_secure_store_single((unsigned int) (memop_var_399 << 1), (unsigned int *) mu_b, obsv_ds__400, obsv_ds_bases_size__400, obsv_ds_size__400);
  int32_t memop_var_401;
  memop_var_401 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__401, obsv_ds_bases_size__401, obsv_ds_size__401);
  uint32_t_secure_store_single((unsigned int) (memop_var_401 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__402, obsv_ds_bases_size__402, obsv_ds_size__402);
  int32_t memop_var_403;
  memop_var_403 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__403, obsv_ds_bases_size__403, obsv_ds_size__403);
  uint32_t_secure_store_single((unsigned int) (memop_var_403 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__404, obsv_ds_bases_size__404, obsv_ds_size__404);
  int32_t memop_var_405;
  memop_var_405 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__405, obsv_ds_bases_size__405, obsv_ds_size__405);
  int32_t memop_var_406;
  if ((memop_var_405 & 1) == 0)
  {
    branch_id("$97");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$96_406, obsv_ds_bases_size_$96_406, obsv_ds_size_$96_406);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$96_407, obsv_ds_bases_size_$96_407, obsv_ds_size_$96_407);
    }
  }
  else
  {
    branch_id("$96");
    memop_var_406 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$96_406, obsv_ds_bases_size_$96_406, obsv_ds_size_$96_406);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_406 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$96_407, obsv_ds_bases_size_$96_407, obsv_ds_size_$96_407);
  }

  int32_t memop_var_408;
  memop_var_408 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__408, obsv_ds_bases_size__408, obsv_ds_size__408);
  int32_t memop_var_409;
  if ((memop_var_408 & 1) == 0)
  {
    branch_id("$99");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$98_409, obsv_ds_bases_size_$98_409, obsv_ds_size_$98_409);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$98_410, obsv_ds_bases_size_$98_410, obsv_ds_size_$98_410);
    }
  }
  else
  {
    branch_id("$98");
    memop_var_409 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$98_409, obsv_ds_bases_size_$98_409, obsv_ds_size_$98_409);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_409 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$98_410, obsv_ds_bases_size_$98_410, obsv_ds_size_$98_410);
  }

  int32_t memop_var_411;
  memop_var_411 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__411, obsv_ds_bases_size__411, obsv_ds_size__411);
  int32_t memop_var_412;
  if ((memop_var_411 & 1) == 0)
  {
    branch_id("$101");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$100_412, obsv_ds_bases_size_$100_412, obsv_ds_size_$100_412);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$100_413, obsv_ds_bases_size_$100_413, obsv_ds_size_$100_413);
    }
  }
  else
  {
    branch_id("$100");
    memop_var_412 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$100_412, obsv_ds_bases_size_$100_412, obsv_ds_size_$100_412);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_412 | 1), (unsigned int *) mu_b, obsv_ds_$100_413, obsv_ds_bases_size_$100_413, obsv_ds_size_$100_413);
  }

  int32_t memop_var_414;
  memop_var_414 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__414, obsv_ds_bases_size__414, obsv_ds_size__414);
  uint32_t_secure_store_single((unsigned int) (memop_var_414 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__415, obsv_ds_bases_size__415, obsv_ds_size__415);
  int32_t memop_var_416;
  memop_var_416 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__416, obsv_ds_bases_size__416, obsv_ds_size__416);
  uint32_t_secure_store_single((unsigned int) (memop_var_416 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__417, obsv_ds_bases_size__417, obsv_ds_size__417);
  int32_t memop_var_418;
  memop_var_418 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__418, obsv_ds_bases_size__418, obsv_ds_size__418);
  uint32_t_secure_store_single((unsigned int) (memop_var_418 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__419, obsv_ds_bases_size__419, obsv_ds_size__419);
  mu_i = mu_i + 1;
  int32_t memop_var_420;
  memop_var_420 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__420, obsv_ds_bases_size__420, obsv_ds_size__420);
  uint32_t_secure_store_single((unsigned int) (memop_var_420 << 1), (unsigned int *) mu_b, obsv_ds__421, obsv_ds_bases_size__421, obsv_ds_size__421);
  int32_t memop_var_422;
  memop_var_422 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__422, obsv_ds_bases_size__422, obsv_ds_size__422);
  uint32_t_secure_store_single((unsigned int) (memop_var_422 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__423, obsv_ds_bases_size__423, obsv_ds_size__423);
  int32_t memop_var_424;
  memop_var_424 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__424, obsv_ds_bases_size__424, obsv_ds_size__424);
  uint32_t_secure_store_single((unsigned int) (memop_var_424 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__425, obsv_ds_bases_size__425, obsv_ds_size__425);
  int32_t memop_var_426;
  memop_var_426 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__426, obsv_ds_bases_size__426, obsv_ds_size__426);
  int32_t memop_var_427;
  if ((memop_var_426 & 1) == 0)
  {
    branch_id("$103");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$102_427, obsv_ds_bases_size_$102_427, obsv_ds_size_$102_427);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$102_428, obsv_ds_bases_size_$102_428, obsv_ds_size_$102_428);
    }
  }
  else
  {
    branch_id("$102");
    memop_var_427 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$102_427, obsv_ds_bases_size_$102_427, obsv_ds_size_$102_427);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_427 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$102_428, obsv_ds_bases_size_$102_428, obsv_ds_size_$102_428);
  }

  int32_t memop_var_429;
  memop_var_429 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__429, obsv_ds_bases_size__429, obsv_ds_size__429);
  int32_t memop_var_430;
  if ((memop_var_429 & 1) == 0)
  {
    branch_id("$105");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$104_430, obsv_ds_bases_size_$104_430, obsv_ds_size_$104_430);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$104_431, obsv_ds_bases_size_$104_431, obsv_ds_size_$104_431);
    }
  }
  else
  {
    branch_id("$104");
    memop_var_430 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$104_430, obsv_ds_bases_size_$104_430, obsv_ds_size_$104_430);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_430 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$104_431, obsv_ds_bases_size_$104_431, obsv_ds_size_$104_431);
  }

  int32_t memop_var_432;
  memop_var_432 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__432, obsv_ds_bases_size__432, obsv_ds_size__432);
  int32_t memop_var_433;
  if ((memop_var_432 & 1) == 0)
  {
    branch_id("$107");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$106_433, obsv_ds_bases_size_$106_433, obsv_ds_size_$106_433);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$106_434, obsv_ds_bases_size_$106_434, obsv_ds_size_$106_434);
    }
  }
  else
  {
    branch_id("$106");
    memop_var_433 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$106_433, obsv_ds_bases_size_$106_433, obsv_ds_size_$106_433);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_433 | 1), (unsigned int *) mu_b, obsv_ds_$106_434, obsv_ds_bases_size_$106_434, obsv_ds_size_$106_434);
  }

  int32_t memop_var_435;
  memop_var_435 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__435, obsv_ds_bases_size__435, obsv_ds_size__435);
  uint32_t_secure_store_single((unsigned int) (memop_var_435 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__436, obsv_ds_bases_size__436, obsv_ds_size__436);
  int32_t memop_var_437;
  memop_var_437 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__437, obsv_ds_bases_size__437, obsv_ds_size__437);
  uint32_t_secure_store_single((unsigned int) (memop_var_437 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__438, obsv_ds_bases_size__438, obsv_ds_size__438);
  int32_t memop_var_439;
  memop_var_439 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__439, obsv_ds_bases_size__439, obsv_ds_size__439);
  uint32_t_secure_store_single((unsigned int) (memop_var_439 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__440, obsv_ds_bases_size__440, obsv_ds_size__440);
  mu_i = mu_i + 1;
  int32_t memop_var_441;
  memop_var_441 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__441, obsv_ds_bases_size__441, obsv_ds_size__441);
  uint32_t_secure_store_single((unsigned int) (memop_var_441 << 1), (unsigned int *) mu_b, obsv_ds__442, obsv_ds_bases_size__442, obsv_ds_size__442);
  int32_t memop_var_443;
  memop_var_443 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__443, obsv_ds_bases_size__443, obsv_ds_size__443);
  uint32_t_secure_store_single((unsigned int) (memop_var_443 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__444, obsv_ds_bases_size__444, obsv_ds_size__444);
  int32_t memop_var_445;
  memop_var_445 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__445, obsv_ds_bases_size__445, obsv_ds_size__445);
  uint32_t_secure_store_single((unsigned int) (memop_var_445 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__446, obsv_ds_bases_size__446, obsv_ds_size__446);
  int32_t memop_var_447;
  memop_var_447 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__447, obsv_ds_bases_size__447, obsv_ds_size__447);
  int32_t memop_var_448;
  if ((memop_var_447 & 1) == 0)
  {
    branch_id("$109");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$108_448, obsv_ds_bases_size_$108_448, obsv_ds_size_$108_448);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$108_449, obsv_ds_bases_size_$108_449, obsv_ds_size_$108_449);
    }
  }
  else
  {
    branch_id("$108");
    memop_var_448 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$108_448, obsv_ds_bases_size_$108_448, obsv_ds_size_$108_448);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_448 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$108_449, obsv_ds_bases_size_$108_449, obsv_ds_size_$108_449);
  }

  int32_t memop_var_450;
  memop_var_450 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__450, obsv_ds_bases_size__450, obsv_ds_size__450);
  int32_t memop_var_451;
  if ((memop_var_450 & 1) == 0)
  {
    branch_id("$111");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$110_451, obsv_ds_bases_size_$110_451, obsv_ds_size_$110_451);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$110_452, obsv_ds_bases_size_$110_452, obsv_ds_size_$110_452);
    }
  }
  else
  {
    branch_id("$110");
    memop_var_451 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$110_451, obsv_ds_bases_size_$110_451, obsv_ds_size_$110_451);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_451 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$110_452, obsv_ds_bases_size_$110_452, obsv_ds_size_$110_452);
  }

  int32_t memop_var_453;
  memop_var_453 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__453, obsv_ds_bases_size__453, obsv_ds_size__453);
  int32_t memop_var_454;
  if ((memop_var_453 & 1) == 0)
  {
    branch_id("$113");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$112_454, obsv_ds_bases_size_$112_454, obsv_ds_size_$112_454);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$112_455, obsv_ds_bases_size_$112_455, obsv_ds_size_$112_455);
    }
  }
  else
  {
    branch_id("$112");
    memop_var_454 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$112_454, obsv_ds_bases_size_$112_454, obsv_ds_size_$112_454);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_454 | 1), (unsigned int *) mu_b, obsv_ds_$112_455, obsv_ds_bases_size_$112_455, obsv_ds_size_$112_455);
  }

  int32_t memop_var_456;
  memop_var_456 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__456, obsv_ds_bases_size__456, obsv_ds_size__456);
  uint32_t_secure_store_single((unsigned int) (memop_var_456 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__457, obsv_ds_bases_size__457, obsv_ds_size__457);
  int32_t memop_var_458;
  memop_var_458 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__458, obsv_ds_bases_size__458, obsv_ds_size__458);
  uint32_t_secure_store_single((unsigned int) (memop_var_458 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__459, obsv_ds_bases_size__459, obsv_ds_size__459);
  int32_t memop_var_460;
  memop_var_460 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__460, obsv_ds_bases_size__460, obsv_ds_size__460);
  uint32_t_secure_store_single((unsigned int) (memop_var_460 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__461, obsv_ds_bases_size__461, obsv_ds_size__461);
  mu_i = mu_i + 1;
  int32_t memop_var_462;
  memop_var_462 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__462, obsv_ds_bases_size__462, obsv_ds_size__462);
  uint32_t_secure_store_single((unsigned int) (memop_var_462 << 1), (unsigned int *) mu_b, obsv_ds__463, obsv_ds_bases_size__463, obsv_ds_size__463);
  int32_t memop_var_464;
  memop_var_464 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__464, obsv_ds_bases_size__464, obsv_ds_size__464);
  uint32_t_secure_store_single((unsigned int) (memop_var_464 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__465, obsv_ds_bases_size__465, obsv_ds_size__465);
  int32_t memop_var_466;
  memop_var_466 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__466, obsv_ds_bases_size__466, obsv_ds_size__466);
  uint32_t_secure_store_single((unsigned int) (memop_var_466 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__467, obsv_ds_bases_size__467, obsv_ds_size__467);
  int32_t memop_var_468;
  memop_var_468 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__468, obsv_ds_bases_size__468, obsv_ds_size__468);
  int32_t memop_var_469;
  if ((memop_var_468 & 1) == 0)
  {
    branch_id("$115");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$114_469, obsv_ds_bases_size_$114_469, obsv_ds_size_$114_469);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$114_470, obsv_ds_bases_size_$114_470, obsv_ds_size_$114_470);
    }
  }
  else
  {
    branch_id("$114");
    memop_var_469 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$114_469, obsv_ds_bases_size_$114_469, obsv_ds_size_$114_469);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_469 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$114_470, obsv_ds_bases_size_$114_470, obsv_ds_size_$114_470);
  }

  int32_t memop_var_471;
  memop_var_471 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__471, obsv_ds_bases_size__471, obsv_ds_size__471);
  int32_t memop_var_472;
  if ((memop_var_471 & 1) == 0)
  {
    branch_id("$117");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$116_472, obsv_ds_bases_size_$116_472, obsv_ds_size_$116_472);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$116_473, obsv_ds_bases_size_$116_473, obsv_ds_size_$116_473);
    }
  }
  else
  {
    branch_id("$116");
    memop_var_472 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$116_472, obsv_ds_bases_size_$116_472, obsv_ds_size_$116_472);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_472 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$116_473, obsv_ds_bases_size_$116_473, obsv_ds_size_$116_473);
  }

  int32_t memop_var_474;
  memop_var_474 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__474, obsv_ds_bases_size__474, obsv_ds_size__474);
  int32_t memop_var_475;
  if ((memop_var_474 & 1) == 0)
  {
    branch_id("$119");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$118_475, obsv_ds_bases_size_$118_475, obsv_ds_size_$118_475);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$118_476, obsv_ds_bases_size_$118_476, obsv_ds_size_$118_476);
    }
  }
  else
  {
    branch_id("$118");
    memop_var_475 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$118_475, obsv_ds_bases_size_$118_475, obsv_ds_size_$118_475);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_475 | 1), (unsigned int *) mu_b, obsv_ds_$118_476, obsv_ds_bases_size_$118_476, obsv_ds_size_$118_476);
  }

  int32_t memop_var_477;
  memop_var_477 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__477, obsv_ds_bases_size__477, obsv_ds_size__477);
  uint32_t_secure_store_single((unsigned int) (memop_var_477 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__478, obsv_ds_bases_size__478, obsv_ds_size__478);
  int32_t memop_var_479;
  memop_var_479 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__479, obsv_ds_bases_size__479, obsv_ds_size__479);
  uint32_t_secure_store_single((unsigned int) (memop_var_479 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__480, obsv_ds_bases_size__480, obsv_ds_size__480);
  int32_t memop_var_481;
  memop_var_481 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__481, obsv_ds_bases_size__481, obsv_ds_size__481);
  uint32_t_secure_store_single((unsigned int) (memop_var_481 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__482, obsv_ds_bases_size__482, obsv_ds_size__482);
  mu_i = mu_i + 1;
  int32_t memop_var_483;
  memop_var_483 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__483, obsv_ds_bases_size__483, obsv_ds_size__483);
  uint32_t_secure_store_single((unsigned int) (memop_var_483 << 1), (unsigned int *) mu_b, obsv_ds__484, obsv_ds_bases_size__484, obsv_ds_size__484);
  int32_t memop_var_485;
  memop_var_485 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__485, obsv_ds_bases_size__485, obsv_ds_size__485);
  uint32_t_secure_store_single((unsigned int) (memop_var_485 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__486, obsv_ds_bases_size__486, obsv_ds_size__486);
  int32_t memop_var_487;
  memop_var_487 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__487, obsv_ds_bases_size__487, obsv_ds_size__487);
  uint32_t_secure_store_single((unsigned int) (memop_var_487 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__488, obsv_ds_bases_size__488, obsv_ds_size__488);
  int32_t memop_var_489;
  memop_var_489 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__489, obsv_ds_bases_size__489, obsv_ds_size__489);
  int32_t memop_var_490;
  if ((memop_var_489 & 1) == 0)
  {
    branch_id("$121");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$120_490, obsv_ds_bases_size_$120_490, obsv_ds_size_$120_490);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$120_491, obsv_ds_bases_size_$120_491, obsv_ds_size_$120_491);
    }
  }
  else
  {
    branch_id("$120");
    memop_var_490 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$120_490, obsv_ds_bases_size_$120_490, obsv_ds_size_$120_490);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_490 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$120_491, obsv_ds_bases_size_$120_491, obsv_ds_size_$120_491);
  }

  int32_t memop_var_492;
  memop_var_492 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__492, obsv_ds_bases_size__492, obsv_ds_size__492);
  int32_t memop_var_493;
  if ((memop_var_492 & 1) == 0)
  {
    branch_id("$123");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$122_493, obsv_ds_bases_size_$122_493, obsv_ds_size_$122_493);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$122_494, obsv_ds_bases_size_$122_494, obsv_ds_size_$122_494);
    }
  }
  else
  {
    branch_id("$122");
    memop_var_493 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$122_493, obsv_ds_bases_size_$122_493, obsv_ds_size_$122_493);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_493 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$122_494, obsv_ds_bases_size_$122_494, obsv_ds_size_$122_494);
  }

  int32_t memop_var_495;
  memop_var_495 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__495, obsv_ds_bases_size__495, obsv_ds_size__495);
  int32_t memop_var_496;
  if ((memop_var_495 & 1) == 0)
  {
    branch_id("$125");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$124_496, obsv_ds_bases_size_$124_496, obsv_ds_size_$124_496);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$124_497, obsv_ds_bases_size_$124_497, obsv_ds_size_$124_497);
    }
  }
  else
  {
    branch_id("$124");
    memop_var_496 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$124_496, obsv_ds_bases_size_$124_496, obsv_ds_size_$124_496);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_496 | 1), (unsigned int *) mu_b, obsv_ds_$124_497, obsv_ds_bases_size_$124_497, obsv_ds_size_$124_497);
  }

  int32_t memop_var_498;
  memop_var_498 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__498, obsv_ds_bases_size__498, obsv_ds_size__498);
  uint32_t_secure_store_single((unsigned int) (memop_var_498 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__499, obsv_ds_bases_size__499, obsv_ds_size__499);
  int32_t memop_var_500;
  memop_var_500 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__500, obsv_ds_bases_size__500, obsv_ds_size__500);
  uint32_t_secure_store_single((unsigned int) (memop_var_500 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__501, obsv_ds_bases_size__501, obsv_ds_size__501);
  int32_t memop_var_502;
  memop_var_502 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__502, obsv_ds_bases_size__502, obsv_ds_size__502);
  uint32_t_secure_store_single((unsigned int) (memop_var_502 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__503, obsv_ds_bases_size__503, obsv_ds_size__503);
  mu_i = mu_i + 1;
  int32_t memop_var_504;
  memop_var_504 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__504, obsv_ds_bases_size__504, obsv_ds_size__504);
  uint32_t_secure_store_single((unsigned int) (memop_var_504 << 1), (unsigned int *) mu_b, obsv_ds__505, obsv_ds_bases_size__505, obsv_ds_size__505);
  int32_t memop_var_506;
  memop_var_506 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__506, obsv_ds_bases_size__506, obsv_ds_size__506);
  uint32_t_secure_store_single((unsigned int) (memop_var_506 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__507, obsv_ds_bases_size__507, obsv_ds_size__507);
  int32_t memop_var_508;
  memop_var_508 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__508, obsv_ds_bases_size__508, obsv_ds_size__508);
  uint32_t_secure_store_single((unsigned int) (memop_var_508 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__509, obsv_ds_bases_size__509, obsv_ds_size__509);
  int32_t memop_var_510;
  memop_var_510 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__510, obsv_ds_bases_size__510, obsv_ds_size__510);
  int32_t memop_var_511;
  if ((memop_var_510 & 1) == 0)
  {
    branch_id("$127");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$126_511, obsv_ds_bases_size_$126_511, obsv_ds_size_$126_511);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$126_512, obsv_ds_bases_size_$126_512, obsv_ds_size_$126_512);
    }
  }
  else
  {
    branch_id("$126");
    memop_var_511 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$126_511, obsv_ds_bases_size_$126_511, obsv_ds_size_$126_511);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_511 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$126_512, obsv_ds_bases_size_$126_512, obsv_ds_size_$126_512);
  }

  int32_t memop_var_513;
  memop_var_513 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__513, obsv_ds_bases_size__513, obsv_ds_size__513);
  int32_t memop_var_514;
  if ((memop_var_513 & 1) == 0)
  {
    branch_id("$129");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$128_514, obsv_ds_bases_size_$128_514, obsv_ds_size_$128_514);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$128_515, obsv_ds_bases_size_$128_515, obsv_ds_size_$128_515);
    }
  }
  else
  {
    branch_id("$128");
    memop_var_514 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$128_514, obsv_ds_bases_size_$128_514, obsv_ds_size_$128_514);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_514 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$128_515, obsv_ds_bases_size_$128_515, obsv_ds_size_$128_515);
  }

  int32_t memop_var_516;
  memop_var_516 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__516, obsv_ds_bases_size__516, obsv_ds_size__516);
  int32_t memop_var_517;
  if ((memop_var_516 & 1) == 0)
  {
    branch_id("$131");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$130_517, obsv_ds_bases_size_$130_517, obsv_ds_size_$130_517);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$130_518, obsv_ds_bases_size_$130_518, obsv_ds_size_$130_518);
    }
  }
  else
  {
    branch_id("$130");
    memop_var_517 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$130_517, obsv_ds_bases_size_$130_517, obsv_ds_size_$130_517);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_517 | 1), (unsigned int *) mu_b, obsv_ds_$130_518, obsv_ds_bases_size_$130_518, obsv_ds_size_$130_518);
  }

  int32_t memop_var_519;
  memop_var_519 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__519, obsv_ds_bases_size__519, obsv_ds_size__519);
  uint32_t_secure_store_single((unsigned int) (memop_var_519 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__520, obsv_ds_bases_size__520, obsv_ds_size__520);
  int32_t memop_var_521;
  memop_var_521 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__521, obsv_ds_bases_size__521, obsv_ds_size__521);
  uint32_t_secure_store_single((unsigned int) (memop_var_521 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__522, obsv_ds_bases_size__522, obsv_ds_size__522);
  int32_t memop_var_523;
  memop_var_523 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__523, obsv_ds_bases_size__523, obsv_ds_size__523);
  uint32_t_secure_store_single((unsigned int) (memop_var_523 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__524, obsv_ds_bases_size__524, obsv_ds_size__524);
  mu_i = mu_i + 1;
  int32_t memop_var_525;
  memop_var_525 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__525, obsv_ds_bases_size__525, obsv_ds_size__525);
  uint32_t_secure_store_single((unsigned int) (memop_var_525 << 1), (unsigned int *) mu_b, obsv_ds__526, obsv_ds_bases_size__526, obsv_ds_size__526);
  int32_t memop_var_527;
  memop_var_527 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__527, obsv_ds_bases_size__527, obsv_ds_size__527);
  uint32_t_secure_store_single((unsigned int) (memop_var_527 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__528, obsv_ds_bases_size__528, obsv_ds_size__528);
  int32_t memop_var_529;
  memop_var_529 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__529, obsv_ds_bases_size__529, obsv_ds_size__529);
  uint32_t_secure_store_single((unsigned int) (memop_var_529 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__530, obsv_ds_bases_size__530, obsv_ds_size__530);
  int32_t memop_var_531;
  memop_var_531 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__531, obsv_ds_bases_size__531, obsv_ds_size__531);
  int32_t memop_var_532;
  if ((memop_var_531 & 1) == 0)
  {
    branch_id("$133");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$132_532, obsv_ds_bases_size_$132_532, obsv_ds_size_$132_532);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$132_533, obsv_ds_bases_size_$132_533, obsv_ds_size_$132_533);
    }
  }
  else
  {
    branch_id("$132");
    memop_var_532 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$132_532, obsv_ds_bases_size_$132_532, obsv_ds_size_$132_532);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_532 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$132_533, obsv_ds_bases_size_$132_533, obsv_ds_size_$132_533);
  }

  int32_t memop_var_534;
  memop_var_534 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__534, obsv_ds_bases_size__534, obsv_ds_size__534);
  int32_t memop_var_535;
  if ((memop_var_534 & 1) == 0)
  {
    branch_id("$135");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$134_535, obsv_ds_bases_size_$134_535, obsv_ds_size_$134_535);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$134_536, obsv_ds_bases_size_$134_536, obsv_ds_size_$134_536);
    }
  }
  else
  {
    branch_id("$134");
    memop_var_535 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$134_535, obsv_ds_bases_size_$134_535, obsv_ds_size_$134_535);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_535 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$134_536, obsv_ds_bases_size_$134_536, obsv_ds_size_$134_536);
  }

  int32_t memop_var_537;
  memop_var_537 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__537, obsv_ds_bases_size__537, obsv_ds_size__537);
  int32_t memop_var_538;
  if ((memop_var_537 & 1) == 0)
  {
    branch_id("$137");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$136_538, obsv_ds_bases_size_$136_538, obsv_ds_size_$136_538);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$136_539, obsv_ds_bases_size_$136_539, obsv_ds_size_$136_539);
    }
  }
  else
  {
    branch_id("$136");
    memop_var_538 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$136_538, obsv_ds_bases_size_$136_538, obsv_ds_size_$136_538);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_538 | 1), (unsigned int *) mu_b, obsv_ds_$136_539, obsv_ds_bases_size_$136_539, obsv_ds_size_$136_539);
  }

  int32_t memop_var_540;
  memop_var_540 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__540, obsv_ds_bases_size__540, obsv_ds_size__540);
  uint32_t_secure_store_single((unsigned int) (memop_var_540 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__541, obsv_ds_bases_size__541, obsv_ds_size__541);
  int32_t memop_var_542;
  memop_var_542 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__542, obsv_ds_bases_size__542, obsv_ds_size__542);
  uint32_t_secure_store_single((unsigned int) (memop_var_542 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__543, obsv_ds_bases_size__543, obsv_ds_size__543);
  int32_t memop_var_544;
  memop_var_544 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__544, obsv_ds_bases_size__544, obsv_ds_size__544);
  uint32_t_secure_store_single((unsigned int) (memop_var_544 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__545, obsv_ds_bases_size__545, obsv_ds_size__545);
  mu_i = mu_i + 1;
  int32_t memop_var_546;
  memop_var_546 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__546, obsv_ds_bases_size__546, obsv_ds_size__546);
  uint32_t_secure_store_single((unsigned int) (memop_var_546 << 1), (unsigned int *) mu_b, obsv_ds__547, obsv_ds_bases_size__547, obsv_ds_size__547);
  int32_t memop_var_548;
  memop_var_548 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__548, obsv_ds_bases_size__548, obsv_ds_size__548);
  uint32_t_secure_store_single((unsigned int) (memop_var_548 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__549, obsv_ds_bases_size__549, obsv_ds_size__549);
  int32_t memop_var_550;
  memop_var_550 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__550, obsv_ds_bases_size__550, obsv_ds_size__550);
  uint32_t_secure_store_single((unsigned int) (memop_var_550 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__551, obsv_ds_bases_size__551, obsv_ds_size__551);
  int32_t memop_var_552;
  memop_var_552 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__552, obsv_ds_bases_size__552, obsv_ds_size__552);
  int32_t memop_var_553;
  if ((memop_var_552 & 1) == 0)
  {
    branch_id("$139");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$138_553, obsv_ds_bases_size_$138_553, obsv_ds_size_$138_553);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$138_554, obsv_ds_bases_size_$138_554, obsv_ds_size_$138_554);
    }
  }
  else
  {
    branch_id("$138");
    memop_var_553 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$138_553, obsv_ds_bases_size_$138_553, obsv_ds_size_$138_553);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_553 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$138_554, obsv_ds_bases_size_$138_554, obsv_ds_size_$138_554);
  }

  int32_t memop_var_555;
  memop_var_555 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__555, obsv_ds_bases_size__555, obsv_ds_size__555);
  int32_t memop_var_556;
  if ((memop_var_555 & 1) == 0)
  {
    branch_id("$141");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$140_556, obsv_ds_bases_size_$140_556, obsv_ds_size_$140_556);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$140_557, obsv_ds_bases_size_$140_557, obsv_ds_size_$140_557);
    }
  }
  else
  {
    branch_id("$140");
    memop_var_556 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$140_556, obsv_ds_bases_size_$140_556, obsv_ds_size_$140_556);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_556 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$140_557, obsv_ds_bases_size_$140_557, obsv_ds_size_$140_557);
  }

  int32_t memop_var_558;
  memop_var_558 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__558, obsv_ds_bases_size__558, obsv_ds_size__558);
  int32_t memop_var_559;
  if ((memop_var_558 & 1) == 0)
  {
    branch_id("$143");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$142_559, obsv_ds_bases_size_$142_559, obsv_ds_size_$142_559);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$142_560, obsv_ds_bases_size_$142_560, obsv_ds_size_$142_560);
    }
  }
  else
  {
    branch_id("$142");
    memop_var_559 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$142_559, obsv_ds_bases_size_$142_559, obsv_ds_size_$142_559);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_559 | 1), (unsigned int *) mu_b, obsv_ds_$142_560, obsv_ds_bases_size_$142_560, obsv_ds_size_$142_560);
  }

  int32_t memop_var_561;
  memop_var_561 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__561, obsv_ds_bases_size__561, obsv_ds_size__561);
  uint32_t_secure_store_single((unsigned int) (memop_var_561 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__562, obsv_ds_bases_size__562, obsv_ds_size__562);
  int32_t memop_var_563;
  memop_var_563 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__563, obsv_ds_bases_size__563, obsv_ds_size__563);
  uint32_t_secure_store_single((unsigned int) (memop_var_563 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__564, obsv_ds_bases_size__564, obsv_ds_size__564);
  int32_t memop_var_565;
  memop_var_565 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__565, obsv_ds_bases_size__565, obsv_ds_size__565);
  uint32_t_secure_store_single((unsigned int) (memop_var_565 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__566, obsv_ds_bases_size__566, obsv_ds_size__566);
  mu_i = mu_i + 1;
  int32_t memop_var_567;
  memop_var_567 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__567, obsv_ds_bases_size__567, obsv_ds_size__567);
  uint32_t_secure_store_single((unsigned int) (memop_var_567 << 1), (unsigned int *) mu_b, obsv_ds__568, obsv_ds_bases_size__568, obsv_ds_size__568);
  int32_t memop_var_569;
  memop_var_569 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__569, obsv_ds_bases_size__569, obsv_ds_size__569);
  uint32_t_secure_store_single((unsigned int) (memop_var_569 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__570, obsv_ds_bases_size__570, obsv_ds_size__570);
  int32_t memop_var_571;
  memop_var_571 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__571, obsv_ds_bases_size__571, obsv_ds_size__571);
  uint32_t_secure_store_single((unsigned int) (memop_var_571 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__572, obsv_ds_bases_size__572, obsv_ds_size__572);
  int32_t memop_var_573;
  memop_var_573 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__573, obsv_ds_bases_size__573, obsv_ds_size__573);
  int32_t memop_var_574;
  if ((memop_var_573 & 1) == 0)
  {
    branch_id("$145");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$144_574, obsv_ds_bases_size_$144_574, obsv_ds_size_$144_574);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$144_575, obsv_ds_bases_size_$144_575, obsv_ds_size_$144_575);
    }
  }
  else
  {
    branch_id("$144");
    memop_var_574 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$144_574, obsv_ds_bases_size_$144_574, obsv_ds_size_$144_574);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_574 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$144_575, obsv_ds_bases_size_$144_575, obsv_ds_size_$144_575);
  }

  int32_t memop_var_576;
  memop_var_576 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__576, obsv_ds_bases_size__576, obsv_ds_size__576);
  int32_t memop_var_577;
  if ((memop_var_576 & 1) == 0)
  {
    branch_id("$147");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$146_577, obsv_ds_bases_size_$146_577, obsv_ds_size_$146_577);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$146_578, obsv_ds_bases_size_$146_578, obsv_ds_size_$146_578);
    }
  }
  else
  {
    branch_id("$146");
    memop_var_577 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$146_577, obsv_ds_bases_size_$146_577, obsv_ds_size_$146_577);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_577 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$146_578, obsv_ds_bases_size_$146_578, obsv_ds_size_$146_578);
  }

  int32_t memop_var_579;
  memop_var_579 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__579, obsv_ds_bases_size__579, obsv_ds_size__579);
  int32_t memop_var_580;
  if ((memop_var_579 & 1) == 0)
  {
    branch_id("$149");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$148_580, obsv_ds_bases_size_$148_580, obsv_ds_size_$148_580);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$148_581, obsv_ds_bases_size_$148_581, obsv_ds_size_$148_581);
    }
  }
  else
  {
    branch_id("$148");
    memop_var_580 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$148_580, obsv_ds_bases_size_$148_580, obsv_ds_size_$148_580);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_580 | 1), (unsigned int *) mu_b, obsv_ds_$148_581, obsv_ds_bases_size_$148_581, obsv_ds_size_$148_581);
  }

  int32_t memop_var_582;
  memop_var_582 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__582, obsv_ds_bases_size__582, obsv_ds_size__582);
  uint32_t_secure_store_single((unsigned int) (memop_var_582 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__583, obsv_ds_bases_size__583, obsv_ds_size__583);
  int32_t memop_var_584;
  memop_var_584 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__584, obsv_ds_bases_size__584, obsv_ds_size__584);
  uint32_t_secure_store_single((unsigned int) (memop_var_584 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__585, obsv_ds_bases_size__585, obsv_ds_size__585);
  int32_t memop_var_586;
  memop_var_586 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__586, obsv_ds_bases_size__586, obsv_ds_size__586);
  uint32_t_secure_store_single((unsigned int) (memop_var_586 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__587, obsv_ds_bases_size__587, obsv_ds_size__587);
  mu_i = mu_i + 1;
  int32_t memop_var_588;
  memop_var_588 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__588, obsv_ds_bases_size__588, obsv_ds_size__588);
  uint32_t_secure_store_single((unsigned int) (memop_var_588 << 1), (unsigned int *) mu_b, obsv_ds__589, obsv_ds_bases_size__589, obsv_ds_size__589);
  int32_t memop_var_590;
  memop_var_590 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__590, obsv_ds_bases_size__590, obsv_ds_size__590);
  uint32_t_secure_store_single((unsigned int) (memop_var_590 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__591, obsv_ds_bases_size__591, obsv_ds_size__591);
  int32_t memop_var_592;
  memop_var_592 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__592, obsv_ds_bases_size__592, obsv_ds_size__592);
  uint32_t_secure_store_single((unsigned int) (memop_var_592 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__593, obsv_ds_bases_size__593, obsv_ds_size__593);
  int32_t memop_var_594;
  memop_var_594 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__594, obsv_ds_bases_size__594, obsv_ds_size__594);
  int32_t memop_var_595;
  if ((memop_var_594 & 1) == 0)
  {
    branch_id("$151");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$150_595, obsv_ds_bases_size_$150_595, obsv_ds_size_$150_595);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$150_596, obsv_ds_bases_size_$150_596, obsv_ds_size_$150_596);
    }
  }
  else
  {
    branch_id("$150");
    memop_var_595 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$150_595, obsv_ds_bases_size_$150_595, obsv_ds_size_$150_595);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_595 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$150_596, obsv_ds_bases_size_$150_596, obsv_ds_size_$150_596);
  }

  int32_t memop_var_597;
  memop_var_597 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__597, obsv_ds_bases_size__597, obsv_ds_size__597);
  int32_t memop_var_598;
  if ((memop_var_597 & 1) == 0)
  {
    branch_id("$153");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$152_598, obsv_ds_bases_size_$152_598, obsv_ds_size_$152_598);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$152_599, obsv_ds_bases_size_$152_599, obsv_ds_size_$152_599);
    }
  }
  else
  {
    branch_id("$152");
    memop_var_598 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$152_598, obsv_ds_bases_size_$152_598, obsv_ds_size_$152_598);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_598 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$152_599, obsv_ds_bases_size_$152_599, obsv_ds_size_$152_599);
  }

  int32_t memop_var_600;
  memop_var_600 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__600, obsv_ds_bases_size__600, obsv_ds_size__600);
  int32_t memop_var_601;
  if ((memop_var_600 & 1) == 0)
  {
    branch_id("$155");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$154_601, obsv_ds_bases_size_$154_601, obsv_ds_size_$154_601);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$154_602, obsv_ds_bases_size_$154_602, obsv_ds_size_$154_602);
    }
  }
  else
  {
    branch_id("$154");
    memop_var_601 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$154_601, obsv_ds_bases_size_$154_601, obsv_ds_size_$154_601);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_601 | 1), (unsigned int *) mu_b, obsv_ds_$154_602, obsv_ds_bases_size_$154_602, obsv_ds_size_$154_602);
  }

  int32_t memop_var_603;
  memop_var_603 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__603, obsv_ds_bases_size__603, obsv_ds_size__603);
  uint32_t_secure_store_single((unsigned int) (memop_var_603 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__604, obsv_ds_bases_size__604, obsv_ds_size__604);
  int32_t memop_var_605;
  memop_var_605 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__605, obsv_ds_bases_size__605, obsv_ds_size__605);
  uint32_t_secure_store_single((unsigned int) (memop_var_605 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__606, obsv_ds_bases_size__606, obsv_ds_size__606);
  int32_t memop_var_607;
  memop_var_607 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__607, obsv_ds_bases_size__607, obsv_ds_size__607);
  uint32_t_secure_store_single((unsigned int) (memop_var_607 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__608, obsv_ds_bases_size__608, obsv_ds_size__608);
  mu_i = mu_i + 1;
  int32_t memop_var_609;
  memop_var_609 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__609, obsv_ds_bases_size__609, obsv_ds_size__609);
  uint32_t_secure_store_single((unsigned int) (memop_var_609 << 1), (unsigned int *) mu_b, obsv_ds__610, obsv_ds_bases_size__610, obsv_ds_size__610);
  int32_t memop_var_611;
  memop_var_611 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__611, obsv_ds_bases_size__611, obsv_ds_size__611);
  uint32_t_secure_store_single((unsigned int) (memop_var_611 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__612, obsv_ds_bases_size__612, obsv_ds_size__612);
  int32_t memop_var_613;
  memop_var_613 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__613, obsv_ds_bases_size__613, obsv_ds_size__613);
  uint32_t_secure_store_single((unsigned int) (memop_var_613 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__614, obsv_ds_bases_size__614, obsv_ds_size__614);
  int32_t memop_var_615;
  memop_var_615 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__615, obsv_ds_bases_size__615, obsv_ds_size__615);
  int32_t memop_var_616;
  if ((memop_var_615 & 1) == 0)
  {
    branch_id("$157");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$156_616, obsv_ds_bases_size_$156_616, obsv_ds_size_$156_616);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$156_617, obsv_ds_bases_size_$156_617, obsv_ds_size_$156_617);
    }
  }
  else
  {
    branch_id("$156");
    memop_var_616 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$156_616, obsv_ds_bases_size_$156_616, obsv_ds_size_$156_616);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_616 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$156_617, obsv_ds_bases_size_$156_617, obsv_ds_size_$156_617);
  }

  int32_t memop_var_618;
  memop_var_618 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__618, obsv_ds_bases_size__618, obsv_ds_size__618);
  int32_t memop_var_619;
  if ((memop_var_618 & 1) == 0)
  {
    branch_id("$159");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$158_619, obsv_ds_bases_size_$158_619, obsv_ds_size_$158_619);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$158_620, obsv_ds_bases_size_$158_620, obsv_ds_size_$158_620);
    }
  }
  else
  {
    branch_id("$158");
    memop_var_619 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$158_619, obsv_ds_bases_size_$158_619, obsv_ds_size_$158_619);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_619 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$158_620, obsv_ds_bases_size_$158_620, obsv_ds_size_$158_620);
  }

  int32_t memop_var_621;
  memop_var_621 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__621, obsv_ds_bases_size__621, obsv_ds_size__621);
  int32_t memop_var_622;
  if ((memop_var_621 & 1) == 0)
  {
    branch_id("$161");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$160_622, obsv_ds_bases_size_$160_622, obsv_ds_size_$160_622);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$160_623, obsv_ds_bases_size_$160_623, obsv_ds_size_$160_623);
    }
  }
  else
  {
    branch_id("$160");
    memop_var_622 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$160_622, obsv_ds_bases_size_$160_622, obsv_ds_size_$160_622);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_622 | 1), (unsigned int *) mu_b, obsv_ds_$160_623, obsv_ds_bases_size_$160_623, obsv_ds_size_$160_623);
  }

  int32_t memop_var_624;
  memop_var_624 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__624, obsv_ds_bases_size__624, obsv_ds_size__624);
  uint32_t_secure_store_single((unsigned int) (memop_var_624 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__625, obsv_ds_bases_size__625, obsv_ds_size__625);
  int32_t memop_var_626;
  memop_var_626 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__626, obsv_ds_bases_size__626, obsv_ds_size__626);
  uint32_t_secure_store_single((unsigned int) (memop_var_626 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__627, obsv_ds_bases_size__627, obsv_ds_size__627);
  int32_t memop_var_628;
  memop_var_628 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__628, obsv_ds_bases_size__628, obsv_ds_size__628);
  uint32_t_secure_store_single((unsigned int) (memop_var_628 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__629, obsv_ds_bases_size__629, obsv_ds_size__629);
  mu_i = mu_i + 1;
  int32_t memop_var_630;
  memop_var_630 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__630, obsv_ds_bases_size__630, obsv_ds_size__630);
  uint32_t_secure_store_single((unsigned int) (memop_var_630 << 1), (unsigned int *) mu_b, obsv_ds__631, obsv_ds_bases_size__631, obsv_ds_size__631);
  int32_t memop_var_632;
  memop_var_632 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__632, obsv_ds_bases_size__632, obsv_ds_size__632);
  uint32_t_secure_store_single((unsigned int) (memop_var_632 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__633, obsv_ds_bases_size__633, obsv_ds_size__633);
  int32_t memop_var_634;
  memop_var_634 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__634, obsv_ds_bases_size__634, obsv_ds_size__634);
  uint32_t_secure_store_single((unsigned int) (memop_var_634 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__635, obsv_ds_bases_size__635, obsv_ds_size__635);
  int32_t memop_var_636;
  memop_var_636 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__636, obsv_ds_bases_size__636, obsv_ds_size__636);
  int32_t memop_var_637;
  if ((memop_var_636 & 1) == 0)
  {
    branch_id("$163");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$162_637, obsv_ds_bases_size_$162_637, obsv_ds_size_$162_637);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$162_638, obsv_ds_bases_size_$162_638, obsv_ds_size_$162_638);
    }
  }
  else
  {
    branch_id("$162");
    memop_var_637 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$162_637, obsv_ds_bases_size_$162_637, obsv_ds_size_$162_637);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_637 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$162_638, obsv_ds_bases_size_$162_638, obsv_ds_size_$162_638);
  }

  int32_t memop_var_639;
  memop_var_639 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__639, obsv_ds_bases_size__639, obsv_ds_size__639);
  int32_t memop_var_640;
  if ((memop_var_639 & 1) == 0)
  {
    branch_id("$165");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$164_640, obsv_ds_bases_size_$164_640, obsv_ds_size_$164_640);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$164_641, obsv_ds_bases_size_$164_641, obsv_ds_size_$164_641);
    }
  }
  else
  {
    branch_id("$164");
    memop_var_640 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$164_640, obsv_ds_bases_size_$164_640, obsv_ds_size_$164_640);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_640 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$164_641, obsv_ds_bases_size_$164_641, obsv_ds_size_$164_641);
  }

  int32_t memop_var_642;
  memop_var_642 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__642, obsv_ds_bases_size__642, obsv_ds_size__642);
  int32_t memop_var_643;
  if ((memop_var_642 & 1) == 0)
  {
    branch_id("$167");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$166_643, obsv_ds_bases_size_$166_643, obsv_ds_size_$166_643);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$166_644, obsv_ds_bases_size_$166_644, obsv_ds_size_$166_644);
    }
  }
  else
  {
    branch_id("$166");
    memop_var_643 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$166_643, obsv_ds_bases_size_$166_643, obsv_ds_size_$166_643);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_643 | 1), (unsigned int *) mu_b, obsv_ds_$166_644, obsv_ds_bases_size_$166_644, obsv_ds_size_$166_644);
  }

  int32_t memop_var_645;
  memop_var_645 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__645, obsv_ds_bases_size__645, obsv_ds_size__645);
  uint32_t_secure_store_single((unsigned int) (memop_var_645 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__646, obsv_ds_bases_size__646, obsv_ds_size__646);
  int32_t memop_var_647;
  memop_var_647 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__647, obsv_ds_bases_size__647, obsv_ds_size__647);
  uint32_t_secure_store_single((unsigned int) (memop_var_647 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__648, obsv_ds_bases_size__648, obsv_ds_size__648);
  int32_t memop_var_649;
  memop_var_649 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__649, obsv_ds_bases_size__649, obsv_ds_size__649);
  uint32_t_secure_store_single((unsigned int) (memop_var_649 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__650, obsv_ds_bases_size__650, obsv_ds_size__650);
  mu_i = mu_i + 1;
  int32_t memop_var_651;
  memop_var_651 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__651, obsv_ds_bases_size__651, obsv_ds_size__651);
  uint32_t_secure_store_single((unsigned int) (memop_var_651 << 1), (unsigned int *) mu_b, obsv_ds__652, obsv_ds_bases_size__652, obsv_ds_size__652);
  int32_t memop_var_653;
  memop_var_653 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__653, obsv_ds_bases_size__653, obsv_ds_size__653);
  uint32_t_secure_store_single((unsigned int) (memop_var_653 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__654, obsv_ds_bases_size__654, obsv_ds_size__654);
  int32_t memop_var_655;
  memop_var_655 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__655, obsv_ds_bases_size__655, obsv_ds_size__655);
  uint32_t_secure_store_single((unsigned int) (memop_var_655 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__656, obsv_ds_bases_size__656, obsv_ds_size__656);
  int32_t memop_var_657;
  memop_var_657 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__657, obsv_ds_bases_size__657, obsv_ds_size__657);
  int32_t memop_var_658;
  if ((memop_var_657 & 1) == 0)
  {
    branch_id("$169");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$168_658, obsv_ds_bases_size_$168_658, obsv_ds_size_$168_658);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$168_659, obsv_ds_bases_size_$168_659, obsv_ds_size_$168_659);
    }
  }
  else
  {
    branch_id("$168");
    memop_var_658 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$168_658, obsv_ds_bases_size_$168_658, obsv_ds_size_$168_658);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_658 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$168_659, obsv_ds_bases_size_$168_659, obsv_ds_size_$168_659);
  }

  int32_t memop_var_660;
  memop_var_660 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__660, obsv_ds_bases_size__660, obsv_ds_size__660);
  int32_t memop_var_661;
  if ((memop_var_660 & 1) == 0)
  {
    branch_id("$171");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$170_661, obsv_ds_bases_size_$170_661, obsv_ds_size_$170_661);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$170_662, obsv_ds_bases_size_$170_662, obsv_ds_size_$170_662);
    }
  }
  else
  {
    branch_id("$170");
    memop_var_661 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$170_661, obsv_ds_bases_size_$170_661, obsv_ds_size_$170_661);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_661 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$170_662, obsv_ds_bases_size_$170_662, obsv_ds_size_$170_662);
  }

  int32_t memop_var_663;
  memop_var_663 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__663, obsv_ds_bases_size__663, obsv_ds_size__663);
  int32_t memop_var_664;
  if ((memop_var_663 & 1) == 0)
  {
    branch_id("$173");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$172_664, obsv_ds_bases_size_$172_664, obsv_ds_size_$172_664);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$172_665, obsv_ds_bases_size_$172_665, obsv_ds_size_$172_665);
    }
  }
  else
  {
    branch_id("$172");
    memop_var_664 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$172_664, obsv_ds_bases_size_$172_664, obsv_ds_size_$172_664);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_664 | 1), (unsigned int *) mu_b, obsv_ds_$172_665, obsv_ds_bases_size_$172_665, obsv_ds_size_$172_665);
  }

  int32_t memop_var_666;
  memop_var_666 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__666, obsv_ds_bases_size__666, obsv_ds_size__666);
  uint32_t_secure_store_single((unsigned int) (memop_var_666 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__667, obsv_ds_bases_size__667, obsv_ds_size__667);
  int32_t memop_var_668;
  memop_var_668 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__668, obsv_ds_bases_size__668, obsv_ds_size__668);
  uint32_t_secure_store_single((unsigned int) (memop_var_668 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__669, obsv_ds_bases_size__669, obsv_ds_size__669);
  int32_t memop_var_670;
  memop_var_670 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__670, obsv_ds_bases_size__670, obsv_ds_size__670);
  uint32_t_secure_store_single((unsigned int) (memop_var_670 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__671, obsv_ds_bases_size__671, obsv_ds_size__671);
  mu_i = mu_i + 1;
  int32_t memop_var_672;
  memop_var_672 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__672, obsv_ds_bases_size__672, obsv_ds_size__672);
  uint32_t_secure_store_single((unsigned int) (memop_var_672 << 1), (unsigned int *) mu_b, obsv_ds__673, obsv_ds_bases_size__673, obsv_ds_size__673);
  int32_t memop_var_674;
  memop_var_674 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__674, obsv_ds_bases_size__674, obsv_ds_size__674);
  uint32_t_secure_store_single((unsigned int) (memop_var_674 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__675, obsv_ds_bases_size__675, obsv_ds_size__675);
  int32_t memop_var_676;
  memop_var_676 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__676, obsv_ds_bases_size__676, obsv_ds_size__676);
  uint32_t_secure_store_single((unsigned int) (memop_var_676 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__677, obsv_ds_bases_size__677, obsv_ds_size__677);
  int32_t memop_var_678;
  memop_var_678 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__678, obsv_ds_bases_size__678, obsv_ds_size__678);
  int32_t memop_var_679;
  if ((memop_var_678 & 1) == 0)
  {
    branch_id("$175");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$174_679, obsv_ds_bases_size_$174_679, obsv_ds_size_$174_679);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$174_680, obsv_ds_bases_size_$174_680, obsv_ds_size_$174_680);
    }
  }
  else
  {
    branch_id("$174");
    memop_var_679 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$174_679, obsv_ds_bases_size_$174_679, obsv_ds_size_$174_679);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_679 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$174_680, obsv_ds_bases_size_$174_680, obsv_ds_size_$174_680);
  }

  int32_t memop_var_681;
  memop_var_681 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__681, obsv_ds_bases_size__681, obsv_ds_size__681);
  int32_t memop_var_682;
  if ((memop_var_681 & 1) == 0)
  {
    branch_id("$177");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$176_682, obsv_ds_bases_size_$176_682, obsv_ds_size_$176_682);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$176_683, obsv_ds_bases_size_$176_683, obsv_ds_size_$176_683);
    }
  }
  else
  {
    branch_id("$176");
    memop_var_682 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$176_682, obsv_ds_bases_size_$176_682, obsv_ds_size_$176_682);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_682 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$176_683, obsv_ds_bases_size_$176_683, obsv_ds_size_$176_683);
  }

  int32_t memop_var_684;
  memop_var_684 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__684, obsv_ds_bases_size__684, obsv_ds_size__684);
  int32_t memop_var_685;
  if ((memop_var_684 & 1) == 0)
  {
    branch_id("$179");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$178_685, obsv_ds_bases_size_$178_685, obsv_ds_size_$178_685);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$178_686, obsv_ds_bases_size_$178_686, obsv_ds_size_$178_686);
    }
  }
  else
  {
    branch_id("$178");
    memop_var_685 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$178_685, obsv_ds_bases_size_$178_685, obsv_ds_size_$178_685);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_685 | 1), (unsigned int *) mu_b, obsv_ds_$178_686, obsv_ds_bases_size_$178_686, obsv_ds_size_$178_686);
  }

  int32_t memop_var_687;
  memop_var_687 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__687, obsv_ds_bases_size__687, obsv_ds_size__687);
  uint32_t_secure_store_single((unsigned int) (memop_var_687 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__688, obsv_ds_bases_size__688, obsv_ds_size__688);
  int32_t memop_var_689;
  memop_var_689 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__689, obsv_ds_bases_size__689, obsv_ds_size__689);
  uint32_t_secure_store_single((unsigned int) (memop_var_689 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__690, obsv_ds_bases_size__690, obsv_ds_size__690);
  int32_t memop_var_691;
  memop_var_691 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__691, obsv_ds_bases_size__691, obsv_ds_size__691);
  uint32_t_secure_store_single((unsigned int) (memop_var_691 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__692, obsv_ds_bases_size__692, obsv_ds_size__692);
  mu_i = mu_i + 1;
  int32_t memop_var_693;
  memop_var_693 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__693, obsv_ds_bases_size__693, obsv_ds_size__693);
  uint32_t_secure_store_single((unsigned int) (memop_var_693 << 1), (unsigned int *) mu_b, obsv_ds__694, obsv_ds_bases_size__694, obsv_ds_size__694);
  int32_t memop_var_695;
  memop_var_695 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__695, obsv_ds_bases_size__695, obsv_ds_size__695);
  uint32_t_secure_store_single((unsigned int) (memop_var_695 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__696, obsv_ds_bases_size__696, obsv_ds_size__696);
  int32_t memop_var_697;
  memop_var_697 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__697, obsv_ds_bases_size__697, obsv_ds_size__697);
  uint32_t_secure_store_single((unsigned int) (memop_var_697 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__698, obsv_ds_bases_size__698, obsv_ds_size__698);
  int32_t memop_var_699;
  memop_var_699 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__699, obsv_ds_bases_size__699, obsv_ds_size__699);
  int32_t memop_var_700;
  if ((memop_var_699 & 1) == 0)
  {
    branch_id("$181");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$180_700, obsv_ds_bases_size_$180_700, obsv_ds_size_$180_700);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$180_701, obsv_ds_bases_size_$180_701, obsv_ds_size_$180_701);
    }
  }
  else
  {
    branch_id("$180");
    memop_var_700 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$180_700, obsv_ds_bases_size_$180_700, obsv_ds_size_$180_700);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_700 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$180_701, obsv_ds_bases_size_$180_701, obsv_ds_size_$180_701);
  }

  int32_t memop_var_702;
  memop_var_702 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__702, obsv_ds_bases_size__702, obsv_ds_size__702);
  int32_t memop_var_703;
  if ((memop_var_702 & 1) == 0)
  {
    branch_id("$183");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$182_703, obsv_ds_bases_size_$182_703, obsv_ds_size_$182_703);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$182_704, obsv_ds_bases_size_$182_704, obsv_ds_size_$182_704);
    }
  }
  else
  {
    branch_id("$182");
    memop_var_703 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$182_703, obsv_ds_bases_size_$182_703, obsv_ds_size_$182_703);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_703 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$182_704, obsv_ds_bases_size_$182_704, obsv_ds_size_$182_704);
  }

  int32_t memop_var_705;
  memop_var_705 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__705, obsv_ds_bases_size__705, obsv_ds_size__705);
  int32_t memop_var_706;
  if ((memop_var_705 & 1) == 0)
  {
    branch_id("$185");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$184_706, obsv_ds_bases_size_$184_706, obsv_ds_size_$184_706);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$184_707, obsv_ds_bases_size_$184_707, obsv_ds_size_$184_707);
    }
  }
  else
  {
    branch_id("$184");
    memop_var_706 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$184_706, obsv_ds_bases_size_$184_706, obsv_ds_size_$184_706);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_706 | 1), (unsigned int *) mu_b, obsv_ds_$184_707, obsv_ds_bases_size_$184_707, obsv_ds_size_$184_707);
  }

  int32_t memop_var_708;
  memop_var_708 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__708, obsv_ds_bases_size__708, obsv_ds_size__708);
  uint32_t_secure_store_single((unsigned int) (memop_var_708 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__709, obsv_ds_bases_size__709, obsv_ds_size__709);
  int32_t memop_var_710;
  memop_var_710 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__710, obsv_ds_bases_size__710, obsv_ds_size__710);
  uint32_t_secure_store_single((unsigned int) (memop_var_710 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__711, obsv_ds_bases_size__711, obsv_ds_size__711);
  int32_t memop_var_712;
  memop_var_712 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__712, obsv_ds_bases_size__712, obsv_ds_size__712);
  uint32_t_secure_store_single((unsigned int) (memop_var_712 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__713, obsv_ds_bases_size__713, obsv_ds_size__713);
  mu_i = mu_i + 1;
  int32_t memop_var_714;
  memop_var_714 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__714, obsv_ds_bases_size__714, obsv_ds_size__714);
  uint32_t_secure_store_single((unsigned int) (memop_var_714 << 1), (unsigned int *) mu_b, obsv_ds__715, obsv_ds_bases_size__715, obsv_ds_size__715);
  int32_t memop_var_716;
  memop_var_716 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__716, obsv_ds_bases_size__716, obsv_ds_size__716);
  uint32_t_secure_store_single((unsigned int) (memop_var_716 << 1), (unsigned int *) (&mu_b[1]), obsv_ds__717, obsv_ds_bases_size__717, obsv_ds_size__717);
  int32_t memop_var_718;
  memop_var_718 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__718, obsv_ds_bases_size__718, obsv_ds_size__718);
  uint32_t_secure_store_single((unsigned int) (memop_var_718 << 1), (unsigned int *) (&mu_b[2]), obsv_ds__719, obsv_ds_bases_size__719, obsv_ds_size__719);
  int32_t memop_var_720;
  memop_var_720 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__720, obsv_ds_bases_size__720, obsv_ds_size__720);
  int32_t memop_var_721;
  if ((memop_var_720 & 1) == 0)
  {
    branch_id("$187");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$186_721, obsv_ds_bases_size_$186_721, obsv_ds_size_$186_721);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$186_722, obsv_ds_bases_size_$186_722, obsv_ds_size_$186_722);
    }
  }
  else
  {
    branch_id("$186");
    memop_var_721 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[2]), obsv_ds_$186_721, obsv_ds_bases_size_$186_721, obsv_ds_size_$186_721);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_721 | 1), (unsigned int *) (&mu_b[2]), obsv_ds_$186_722, obsv_ds_bases_size_$186_722, obsv_ds_size_$186_722);
  }

  int32_t memop_var_723;
  memop_var_723 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__723, obsv_ds_bases_size__723, obsv_ds_size__723);
  int32_t memop_var_724;
  if ((memop_var_723 & 1) == 0)
  {
    branch_id("$189");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$188_724, obsv_ds_bases_size_$188_724, obsv_ds_size_$188_724);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$188_725, obsv_ds_bases_size_$188_725, obsv_ds_size_$188_725);
    }
  }
  else
  {
    branch_id("$188");
    memop_var_724 = uint32_t_secure_load_single_sensitive((unsigned int *) (&mu_b[1]), obsv_ds_$188_724, obsv_ds_bases_size_$188_724, obsv_ds_size_$188_724);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_724 | 1), (unsigned int *) (&mu_b[1]), obsv_ds_$188_725, obsv_ds_bases_size_$188_725, obsv_ds_size_$188_725);
  }

  int32_t memop_var_726;
  memop_var_726 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__726, obsv_ds_bases_size__726, obsv_ds_size__726);
  int32_t memop_var_727;
  if ((memop_var_726 & 1) == 0)
  {
    branch_id("$191");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$190_727, obsv_ds_bases_size_$190_727, obsv_ds_size_$190_727);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$190_728, obsv_ds_bases_size_$190_728, obsv_ds_size_$190_728);
    }
  }
  else
  {
    branch_id("$190");
    memop_var_727 = uint32_t_secure_load_single_sensitive((unsigned int *) mu_b, obsv_ds_$190_727, obsv_ds_bases_size_$190_727, obsv_ds_size_$190_727);
    uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_727 | 1), (unsigned int *) mu_b, obsv_ds_$190_728, obsv_ds_bases_size_$190_728, obsv_ds_size_$190_728);
  }

  int32_t memop_var_729;
  memop_var_729 = uint32_t_secure_load_single((unsigned int *) (&mu_a[0]), obsv_ds__729, obsv_ds_bases_size__729, obsv_ds_size__729);
  uint32_t_secure_store_single((unsigned int) (memop_var_729 >> 1), (unsigned int *) (&mu_a[0]), obsv_ds__730, obsv_ds_bases_size__730, obsv_ds_size__730);
  int32_t memop_var_731;
  memop_var_731 = uint32_t_secure_load_single((unsigned int *) (&mu_a[1]), obsv_ds__731, obsv_ds_bases_size__731, obsv_ds_size__731);
  uint32_t_secure_store_single((unsigned int) (memop_var_731 >> 1), (unsigned int *) (&mu_a[1]), obsv_ds__732, obsv_ds_bases_size__732, obsv_ds_size__732);
  int32_t memop_var_733;
  memop_var_733 = uint32_t_secure_load_single((unsigned int *) (&mu_a[2]), obsv_ds__733, obsv_ds_bases_size__733, obsv_ds_size__733);
  uint32_t_secure_store_single((unsigned int) (memop_var_733 >> 1), (unsigned int *) (&mu_a[2]), obsv_ds__734, obsv_ds_bases_size__734, obsv_ds_size__734);
  mu_i = mu_i + 1;
  int32_t memop_var_735;
  memop_var_735 = uint32_t_secure_load_single((unsigned int *) mu_b, obsv_ds__735, obsv_ds_bases_size__735, obsv_ds_size__735);
  uint32_t_secure_store_single((unsigned int) memop_var_735, (unsigned int *) (&mu_a[0]), obsv_ds__736, obsv_ds_bases_size__736, obsv_ds_size__736);
  int32_t memop_var_737;
  memop_var_737 = uint32_t_secure_load_single((unsigned int *) (&mu_b[1]), obsv_ds__737, obsv_ds_bases_size__737, obsv_ds_size__737);
  uint32_t_secure_store_single((unsigned int) memop_var_737, (unsigned int *) (&mu_a[1]), obsv_ds__738, obsv_ds_bases_size__738, obsv_ds_size__738);
  int32_t memop_var_739;
  memop_var_739 = uint32_t_secure_load_single((unsigned int *) (&mu_b[2]), obsv_ds__739, obsv_ds_bases_size__739, obsv_ds_size__739);
  uint32_t_secure_store_single((unsigned int) memop_var_739, (unsigned int *) (&mu_a[2]), obsv_ds__740, obsv_ds_bases_size__740, obsv_ds_size__740);
  ;
  ;
  rndcon_gen_strt = 0xB0B;
  rndcon_gen_rtab = (int32_t *) twy_key_c->ercon;
  rndcon_gen_i = 0;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__741, obsv_ds_bases_size__741, obsv_ds_size__741);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$193");
  }
  else
  {
    branch_id("$192");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__742, obsv_ds_bases_size__742, obsv_ds_size__742);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$195");
  }
  else
  {
    branch_id("$194");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__743, obsv_ds_bases_size__743, obsv_ds_size__743);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$197");
  }
  else
  {
    branch_id("$196");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__744, obsv_ds_bases_size__744, obsv_ds_size__744);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$199");
  }
  else
  {
    branch_id("$198");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__745, obsv_ds_bases_size__745, obsv_ds_size__745);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$201");
  }
  else
  {
    branch_id("$200");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__746, obsv_ds_bases_size__746, obsv_ds_size__746);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$203");
  }
  else
  {
    branch_id("$202");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__747, obsv_ds_bases_size__747, obsv_ds_size__747);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$205");
  }
  else
  {
    branch_id("$204");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__748, obsv_ds_bases_size__748, obsv_ds_size__748);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$207");
  }
  else
  {
    branch_id("$206");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__749, obsv_ds_bases_size__749, obsv_ds_size__749);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$209");
  }
  else
  {
    branch_id("$208");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__750, obsv_ds_bases_size__750, obsv_ds_size__750);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$211");
  }
  else
  {
    branch_id("$210");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__751, obsv_ds_bases_size__751, obsv_ds_size__751);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$213");
  }
  else
  {
    branch_id("$212");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  ;
  ;
  rndcon_gen_strt = 0xB1B1;
  rndcon_gen_rtab = (int32_t *) twy_key_c->drcon;
  rndcon_gen_i = 0;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__752, obsv_ds_bases_size__752, obsv_ds_size__752);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$215");
  }
  else
  {
    branch_id("$214");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__753, obsv_ds_bases_size__753, obsv_ds_size__753);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$217");
  }
  else
  {
    branch_id("$216");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__754, obsv_ds_bases_size__754, obsv_ds_size__754);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$219");
  }
  else
  {
    branch_id("$218");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__755, obsv_ds_bases_size__755, obsv_ds_size__755);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$221");
  }
  else
  {
    branch_id("$220");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__756, obsv_ds_bases_size__756, obsv_ds_size__756);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$223");
  }
  else
  {
    branch_id("$222");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__757, obsv_ds_bases_size__757, obsv_ds_size__757);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$225");
  }
  else
  {
    branch_id("$224");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__758, obsv_ds_bases_size__758, obsv_ds_size__758);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$227");
  }
  else
  {
    branch_id("$226");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__759, obsv_ds_bases_size__759, obsv_ds_size__759);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$229");
  }
  else
  {
    branch_id("$228");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__760, obsv_ds_bases_size__760, obsv_ds_size__760);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$231");
  }
  else
  {
    branch_id("$230");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__761, obsv_ds_bases_size__761, obsv_ds_size__761);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$233");
  }
  else
  {
    branch_id("$232");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  uint32_t_secure_store_single((unsigned int) rndcon_gen_strt, (unsigned int *) (&rndcon_gen_rtab[rndcon_gen_i]), obsv_ds__762, obsv_ds_bases_size__762, obsv_ds_size__762);
  rndcon_gen_strt = rndcon_gen_strt << 1;
  if ((rndcon_gen_strt & 0x10000) == 0)
  {
    branch_id("$235");
  }
  else
  {
    branch_id("$234");
    rndcon_gen_strt = rndcon_gen_strt ^ 0x11011;
  }

  rndcon_gen_i = rndcon_gen_i + 1;
  ;
  ;
  ;
  encrypt_c = &gc;
  encrypt_a = (int32_t *) in_pub;
  encrypt_i = 0;
  int32_t memop_var_763;
  memop_var_763 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__763, obsv_ds_bases_size__763, obsv_ds_size__763);
  uint32_t memop_var_764;
  memop_var_764 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__764, obsv_ds_bases_size__764, obsv_ds_size__764);
  uint32_t memop_var_765;
  memop_var_765 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__765, obsv_ds_bases_size__765, obsv_ds_size__765);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_763) ^ memop_var_764) ^ (memop_var_765 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__766, obsv_ds_bases_size__766, obsv_ds_size__766);
  int32_t memop_var_767;
  memop_var_767 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__767, obsv_ds_bases_size__767, obsv_ds_size__767);
  uint32_t memop_var_768;
  memop_var_768 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__768, obsv_ds_bases_size__768, obsv_ds_size__768);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_767) ^ memop_var_768)), (unsigned int *) (&encrypt_a[1]), obsv_ds__769, obsv_ds_bases_size__769, obsv_ds_size__769);
  int32_t memop_var_770;
  memop_var_770 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__770, obsv_ds_bases_size__770, obsv_ds_size__770);
  uint32_t memop_var_771;
  memop_var_771 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__771, obsv_ds_bases_size__771, obsv_ds_size__771);
  uint32_t memop_var_772;
  memop_var_772 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__772, obsv_ds_bases_size__772, obsv_ds_size__772);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_770) ^ memop_var_771) ^ memop_var_772)), (unsigned int *) (&encrypt_a[2]), obsv_ds__773, obsv_ds_bases_size__773, obsv_ds_size__773);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_774;
  memop_var_774 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__774, obsv_ds_bases_size__774, obsv_ds_size__774);
  int32_t memop_var_775;
  memop_var_775 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__775, obsv_ds_bases_size__775, obsv_ds_size__775);
  int32_t memop_var_776;
  memop_var_776 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__776, obsv_ds_bases_size__776, obsv_ds_size__776);
  int32_t memop_var_777;
  memop_var_777 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__777, obsv_ds_bases_size__777, obsv_ds_size__777);
  int32_t memop_var_778;
  memop_var_778 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__778, obsv_ds_bases_size__778, obsv_ds_size__778);
  int32_t memop_var_779;
  memop_var_779 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__779, obsv_ds_bases_size__779, obsv_ds_size__779);
  int32_t memop_var_780;
  memop_var_780 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__780, obsv_ds_bases_size__780, obsv_ds_size__780);
  int32_t memop_var_781;
  memop_var_781 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__781, obsv_ds_bases_size__781, obsv_ds_size__781);
  int32_t memop_var_782;
  memop_var_782 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__782, obsv_ds_bases_size__782, obsv_ds_size__782);
  int32_t memop_var_783;
  memop_var_783 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__783, obsv_ds_bases_size__783, obsv_ds_size__783);
  int32_t memop_var_784;
  memop_var_784 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__784, obsv_ds_bases_size__784, obsv_ds_size__784);
  int32_t memop_var_785;
  memop_var_785 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__785, obsv_ds_bases_size__785, obsv_ds_size__785);
  int32_t memop_var_786;
  memop_var_786 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__786, obsv_ds_bases_size__786, obsv_ds_size__786);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_774 ^ (memop_var_775 >> 16)) ^ (memop_var_776 << 16)) ^ (memop_var_777 >> 16)) ^ (memop_var_778 << 16)) ^ (memop_var_779 >> 24)) ^ (memop_var_780 << 8)) ^ (memop_var_781 >> 8)) ^ (memop_var_782 << 24)) ^ (memop_var_783 >> 16)) ^ (memop_var_784 << 16)) ^ (memop_var_785 >> 24)) ^ (memop_var_786 << 8)), (unsigned int *) theta_b, obsv_ds__787, obsv_ds_bases_size__787, obsv_ds_size__787);
  int32_t memop_var_788;
  memop_var_788 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__788, obsv_ds_bases_size__788, obsv_ds_size__788);
  int32_t memop_var_789;
  memop_var_789 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__789, obsv_ds_bases_size__789, obsv_ds_size__789);
  int32_t memop_var_790;
  memop_var_790 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__790, obsv_ds_bases_size__790, obsv_ds_size__790);
  int32_t memop_var_791;
  memop_var_791 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__791, obsv_ds_bases_size__791, obsv_ds_size__791);
  int32_t memop_var_792;
  memop_var_792 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__792, obsv_ds_bases_size__792, obsv_ds_size__792);
  int32_t memop_var_793;
  memop_var_793 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__793, obsv_ds_bases_size__793, obsv_ds_size__793);
  int32_t memop_var_794;
  memop_var_794 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__794, obsv_ds_bases_size__794, obsv_ds_size__794);
  int32_t memop_var_795;
  memop_var_795 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__795, obsv_ds_bases_size__795, obsv_ds_size__795);
  int32_t memop_var_796;
  memop_var_796 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__796, obsv_ds_bases_size__796, obsv_ds_size__796);
  int32_t memop_var_797;
  memop_var_797 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__797, obsv_ds_bases_size__797, obsv_ds_size__797);
  int32_t memop_var_798;
  memop_var_798 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__798, obsv_ds_bases_size__798, obsv_ds_size__798);
  int32_t memop_var_799;
  memop_var_799 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__799, obsv_ds_bases_size__799, obsv_ds_size__799);
  int32_t memop_var_800;
  memop_var_800 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__800, obsv_ds_bases_size__800, obsv_ds_size__800);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_788 ^ (memop_var_789 >> 16)) ^ (memop_var_790 << 16)) ^ (memop_var_791 >> 16)) ^ (memop_var_792 << 16)) ^ (memop_var_793 >> 24)) ^ (memop_var_794 << 8)) ^ (memop_var_795 >> 8)) ^ (memop_var_796 << 24)) ^ (memop_var_797 >> 16)) ^ (memop_var_798 << 16)) ^ (memop_var_799 >> 24)) ^ (memop_var_800 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__801, obsv_ds_bases_size__801, obsv_ds_size__801);
  int32_t memop_var_802;
  memop_var_802 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__802, obsv_ds_bases_size__802, obsv_ds_size__802);
  int32_t memop_var_803;
  memop_var_803 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__803, obsv_ds_bases_size__803, obsv_ds_size__803);
  int32_t memop_var_804;
  memop_var_804 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__804, obsv_ds_bases_size__804, obsv_ds_size__804);
  int32_t memop_var_805;
  memop_var_805 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__805, obsv_ds_bases_size__805, obsv_ds_size__805);
  int32_t memop_var_806;
  memop_var_806 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__806, obsv_ds_bases_size__806, obsv_ds_size__806);
  int32_t memop_var_807;
  memop_var_807 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__807, obsv_ds_bases_size__807, obsv_ds_size__807);
  int32_t memop_var_808;
  memop_var_808 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__808, obsv_ds_bases_size__808, obsv_ds_size__808);
  int32_t memop_var_809;
  memop_var_809 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__809, obsv_ds_bases_size__809, obsv_ds_size__809);
  int32_t memop_var_810;
  memop_var_810 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__810, obsv_ds_bases_size__810, obsv_ds_size__810);
  int32_t memop_var_811;
  memop_var_811 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__811, obsv_ds_bases_size__811, obsv_ds_size__811);
  int32_t memop_var_812;
  memop_var_812 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__812, obsv_ds_bases_size__812, obsv_ds_size__812);
  int32_t memop_var_813;
  memop_var_813 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__813, obsv_ds_bases_size__813, obsv_ds_size__813);
  int32_t memop_var_814;
  memop_var_814 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__814, obsv_ds_bases_size__814, obsv_ds_size__814);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_802 ^ (memop_var_803 >> 16)) ^ (memop_var_804 << 16)) ^ (memop_var_805 >> 16)) ^ (memop_var_806 << 16)) ^ (memop_var_807 >> 24)) ^ (memop_var_808 << 8)) ^ (memop_var_809 >> 8)) ^ (memop_var_810 << 24)) ^ (memop_var_811 >> 16)) ^ (memop_var_812 << 16)) ^ (memop_var_813 >> 24)) ^ (memop_var_814 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__815, obsv_ds_bases_size__815, obsv_ds_size__815);
  int32_t memop_var_816;
  memop_var_816 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__816, obsv_ds_bases_size__816, obsv_ds_size__816);
  uint32_t_secure_store_single((unsigned int) memop_var_816, (unsigned int *) (&theta_a[0]), obsv_ds__817, obsv_ds_bases_size__817, obsv_ds_size__817);
  int32_t memop_var_818;
  memop_var_818 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__818, obsv_ds_bases_size__818, obsv_ds_size__818);
  uint32_t_secure_store_single((unsigned int) memop_var_818, (unsigned int *) (&theta_a[1]), obsv_ds__819, obsv_ds_bases_size__819, obsv_ds_size__819);
  int32_t memop_var_820;
  memop_var_820 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__820, obsv_ds_bases_size__820, obsv_ds_size__820);
  uint32_t_secure_store_single((unsigned int) memop_var_820, (unsigned int *) (&theta_a[2]), obsv_ds__821, obsv_ds_bases_size__821, obsv_ds_size__821);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_822;
  memop_var_822 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__822, obsv_ds_bases_size__822, obsv_ds_size__822);
  int32_t memop_var_823;
  memop_var_823 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__823, obsv_ds_bases_size__823, obsv_ds_size__823);
  uint32_t_secure_store_single((unsigned int) ((memop_var_822 >> 10) ^ (memop_var_823 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__824, obsv_ds_bases_size__824, obsv_ds_size__824);
  int32_t memop_var_825;
  memop_var_825 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__825, obsv_ds_bases_size__825, obsv_ds_size__825);
  int32_t memop_var_826;
  memop_var_826 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__826, obsv_ds_bases_size__826, obsv_ds_size__826);
  uint32_t_secure_store_single((unsigned int) ((memop_var_825 << 1) ^ (memop_var_826 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__827, obsv_ds_bases_size__827, obsv_ds_size__827);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_828;
  memop_var_828 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__828, obsv_ds_bases_size__828, obsv_ds_size__828);
  int32_t memop_var_829;
  memop_var_829 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__829, obsv_ds_bases_size__829, obsv_ds_size__829);
  int32_t memop_var_830;
  memop_var_830 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__830, obsv_ds_bases_size__830, obsv_ds_size__830);
  uint32_t_secure_store_single((unsigned int) (memop_var_828 ^ (memop_var_829 | (~memop_var_830))), (unsigned int *) gamma_b, obsv_ds__831, obsv_ds_bases_size__831, obsv_ds_size__831);
  int32_t memop_var_832;
  memop_var_832 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__832, obsv_ds_bases_size__832, obsv_ds_size__832);
  int32_t memop_var_833;
  memop_var_833 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__833, obsv_ds_bases_size__833, obsv_ds_size__833);
  int32_t memop_var_834;
  memop_var_834 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__834, obsv_ds_bases_size__834, obsv_ds_size__834);
  uint32_t_secure_store_single((unsigned int) (memop_var_832 ^ (memop_var_833 | (~memop_var_834))), (unsigned int *) (&gamma_b[1]), obsv_ds__835, obsv_ds_bases_size__835, obsv_ds_size__835);
  int32_t memop_var_836;
  memop_var_836 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__836, obsv_ds_bases_size__836, obsv_ds_size__836);
  int32_t memop_var_837;
  memop_var_837 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__837, obsv_ds_bases_size__837, obsv_ds_size__837);
  int32_t memop_var_838;
  memop_var_838 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__838, obsv_ds_bases_size__838, obsv_ds_size__838);
  uint32_t_secure_store_single((unsigned int) (memop_var_836 ^ (memop_var_837 | (~memop_var_838))), (unsigned int *) (&gamma_b[2]), obsv_ds__839, obsv_ds_bases_size__839, obsv_ds_size__839);
  int32_t memop_var_840;
  memop_var_840 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__840, obsv_ds_bases_size__840, obsv_ds_size__840);
  uint32_t_secure_store_single((unsigned int) memop_var_840, (unsigned int *) (&gamma_a[0]), obsv_ds__841, obsv_ds_bases_size__841, obsv_ds_size__841);
  int32_t memop_var_842;
  memop_var_842 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__842, obsv_ds_bases_size__842, obsv_ds_size__842);
  uint32_t_secure_store_single((unsigned int) memop_var_842, (unsigned int *) (&gamma_a[1]), obsv_ds__843, obsv_ds_bases_size__843, obsv_ds_size__843);
  int32_t memop_var_844;
  memop_var_844 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__844, obsv_ds_bases_size__844, obsv_ds_size__844);
  uint32_t_secure_store_single((unsigned int) memop_var_844, (unsigned int *) (&gamma_a[2]), obsv_ds__845, obsv_ds_bases_size__845, obsv_ds_size__845);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_846;
  memop_var_846 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__846, obsv_ds_bases_size__846, obsv_ds_size__846);
  int32_t memop_var_847;
  memop_var_847 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__847, obsv_ds_bases_size__847, obsv_ds_size__847);
  uint32_t_secure_store_single((unsigned int) ((memop_var_846 << 1) ^ (memop_var_847 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__848, obsv_ds_bases_size__848, obsv_ds_size__848);
  int32_t memop_var_849;
  memop_var_849 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__849, obsv_ds_bases_size__849, obsv_ds_size__849);
  int32_t memop_var_850;
  memop_var_850 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__850, obsv_ds_bases_size__850, obsv_ds_size__850);
  uint32_t_secure_store_single((unsigned int) ((memop_var_849 >> 10) ^ (memop_var_850 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__851, obsv_ds_bases_size__851, obsv_ds_size__851);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_852;
  memop_var_852 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__852, obsv_ds_bases_size__852, obsv_ds_size__852);
  uint32_t memop_var_853;
  memop_var_853 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__853, obsv_ds_bases_size__853, obsv_ds_size__853);
  uint32_t memop_var_854;
  memop_var_854 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__854, obsv_ds_bases_size__854, obsv_ds_size__854);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_852) ^ memop_var_853) ^ (memop_var_854 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__855, obsv_ds_bases_size__855, obsv_ds_size__855);
  int32_t memop_var_856;
  memop_var_856 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__856, obsv_ds_bases_size__856, obsv_ds_size__856);
  uint32_t memop_var_857;
  memop_var_857 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__857, obsv_ds_bases_size__857, obsv_ds_size__857);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_856) ^ memop_var_857)), (unsigned int *) (&encrypt_a[1]), obsv_ds__858, obsv_ds_bases_size__858, obsv_ds_size__858);
  int32_t memop_var_859;
  memop_var_859 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__859, obsv_ds_bases_size__859, obsv_ds_size__859);
  uint32_t memop_var_860;
  memop_var_860 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__860, obsv_ds_bases_size__860, obsv_ds_size__860);
  uint32_t memop_var_861;
  memop_var_861 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__861, obsv_ds_bases_size__861, obsv_ds_size__861);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_859) ^ memop_var_860) ^ memop_var_861)), (unsigned int *) (&encrypt_a[2]), obsv_ds__862, obsv_ds_bases_size__862, obsv_ds_size__862);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_863;
  memop_var_863 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__863, obsv_ds_bases_size__863, obsv_ds_size__863);
  int32_t memop_var_864;
  memop_var_864 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__864, obsv_ds_bases_size__864, obsv_ds_size__864);
  int32_t memop_var_865;
  memop_var_865 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__865, obsv_ds_bases_size__865, obsv_ds_size__865);
  int32_t memop_var_866;
  memop_var_866 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__866, obsv_ds_bases_size__866, obsv_ds_size__866);
  int32_t memop_var_867;
  memop_var_867 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__867, obsv_ds_bases_size__867, obsv_ds_size__867);
  int32_t memop_var_868;
  memop_var_868 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__868, obsv_ds_bases_size__868, obsv_ds_size__868);
  int32_t memop_var_869;
  memop_var_869 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__869, obsv_ds_bases_size__869, obsv_ds_size__869);
  int32_t memop_var_870;
  memop_var_870 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__870, obsv_ds_bases_size__870, obsv_ds_size__870);
  int32_t memop_var_871;
  memop_var_871 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__871, obsv_ds_bases_size__871, obsv_ds_size__871);
  int32_t memop_var_872;
  memop_var_872 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__872, obsv_ds_bases_size__872, obsv_ds_size__872);
  int32_t memop_var_873;
  memop_var_873 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__873, obsv_ds_bases_size__873, obsv_ds_size__873);
  int32_t memop_var_874;
  memop_var_874 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__874, obsv_ds_bases_size__874, obsv_ds_size__874);
  int32_t memop_var_875;
  memop_var_875 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__875, obsv_ds_bases_size__875, obsv_ds_size__875);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_863 ^ (memop_var_864 >> 16)) ^ (memop_var_865 << 16)) ^ (memop_var_866 >> 16)) ^ (memop_var_867 << 16)) ^ (memop_var_868 >> 24)) ^ (memop_var_869 << 8)) ^ (memop_var_870 >> 8)) ^ (memop_var_871 << 24)) ^ (memop_var_872 >> 16)) ^ (memop_var_873 << 16)) ^ (memop_var_874 >> 24)) ^ (memop_var_875 << 8)), (unsigned int *) theta_b, obsv_ds__876, obsv_ds_bases_size__876, obsv_ds_size__876);
  int32_t memop_var_877;
  memop_var_877 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__877, obsv_ds_bases_size__877, obsv_ds_size__877);
  int32_t memop_var_878;
  memop_var_878 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__878, obsv_ds_bases_size__878, obsv_ds_size__878);
  int32_t memop_var_879;
  memop_var_879 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__879, obsv_ds_bases_size__879, obsv_ds_size__879);
  int32_t memop_var_880;
  memop_var_880 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__880, obsv_ds_bases_size__880, obsv_ds_size__880);
  int32_t memop_var_881;
  memop_var_881 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__881, obsv_ds_bases_size__881, obsv_ds_size__881);
  int32_t memop_var_882;
  memop_var_882 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__882, obsv_ds_bases_size__882, obsv_ds_size__882);
  int32_t memop_var_883;
  memop_var_883 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__883, obsv_ds_bases_size__883, obsv_ds_size__883);
  int32_t memop_var_884;
  memop_var_884 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__884, obsv_ds_bases_size__884, obsv_ds_size__884);
  int32_t memop_var_885;
  memop_var_885 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__885, obsv_ds_bases_size__885, obsv_ds_size__885);
  int32_t memop_var_886;
  memop_var_886 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__886, obsv_ds_bases_size__886, obsv_ds_size__886);
  int32_t memop_var_887;
  memop_var_887 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__887, obsv_ds_bases_size__887, obsv_ds_size__887);
  int32_t memop_var_888;
  memop_var_888 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__888, obsv_ds_bases_size__888, obsv_ds_size__888);
  int32_t memop_var_889;
  memop_var_889 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__889, obsv_ds_bases_size__889, obsv_ds_size__889);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_877 ^ (memop_var_878 >> 16)) ^ (memop_var_879 << 16)) ^ (memop_var_880 >> 16)) ^ (memop_var_881 << 16)) ^ (memop_var_882 >> 24)) ^ (memop_var_883 << 8)) ^ (memop_var_884 >> 8)) ^ (memop_var_885 << 24)) ^ (memop_var_886 >> 16)) ^ (memop_var_887 << 16)) ^ (memop_var_888 >> 24)) ^ (memop_var_889 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__890, obsv_ds_bases_size__890, obsv_ds_size__890);
  int32_t memop_var_891;
  memop_var_891 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__891, obsv_ds_bases_size__891, obsv_ds_size__891);
  int32_t memop_var_892;
  memop_var_892 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__892, obsv_ds_bases_size__892, obsv_ds_size__892);
  int32_t memop_var_893;
  memop_var_893 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__893, obsv_ds_bases_size__893, obsv_ds_size__893);
  int32_t memop_var_894;
  memop_var_894 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__894, obsv_ds_bases_size__894, obsv_ds_size__894);
  int32_t memop_var_895;
  memop_var_895 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__895, obsv_ds_bases_size__895, obsv_ds_size__895);
  int32_t memop_var_896;
  memop_var_896 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__896, obsv_ds_bases_size__896, obsv_ds_size__896);
  int32_t memop_var_897;
  memop_var_897 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__897, obsv_ds_bases_size__897, obsv_ds_size__897);
  int32_t memop_var_898;
  memop_var_898 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__898, obsv_ds_bases_size__898, obsv_ds_size__898);
  int32_t memop_var_899;
  memop_var_899 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__899, obsv_ds_bases_size__899, obsv_ds_size__899);
  int32_t memop_var_900;
  memop_var_900 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__900, obsv_ds_bases_size__900, obsv_ds_size__900);
  int32_t memop_var_901;
  memop_var_901 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__901, obsv_ds_bases_size__901, obsv_ds_size__901);
  int32_t memop_var_902;
  memop_var_902 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__902, obsv_ds_bases_size__902, obsv_ds_size__902);
  int32_t memop_var_903;
  memop_var_903 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__903, obsv_ds_bases_size__903, obsv_ds_size__903);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_891 ^ (memop_var_892 >> 16)) ^ (memop_var_893 << 16)) ^ (memop_var_894 >> 16)) ^ (memop_var_895 << 16)) ^ (memop_var_896 >> 24)) ^ (memop_var_897 << 8)) ^ (memop_var_898 >> 8)) ^ (memop_var_899 << 24)) ^ (memop_var_900 >> 16)) ^ (memop_var_901 << 16)) ^ (memop_var_902 >> 24)) ^ (memop_var_903 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__904, obsv_ds_bases_size__904, obsv_ds_size__904);
  int32_t memop_var_905;
  memop_var_905 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__905, obsv_ds_bases_size__905, obsv_ds_size__905);
  uint32_t_secure_store_single((unsigned int) memop_var_905, (unsigned int *) (&theta_a[0]), obsv_ds__906, obsv_ds_bases_size__906, obsv_ds_size__906);
  int32_t memop_var_907;
  memop_var_907 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__907, obsv_ds_bases_size__907, obsv_ds_size__907);
  uint32_t_secure_store_single((unsigned int) memop_var_907, (unsigned int *) (&theta_a[1]), obsv_ds__908, obsv_ds_bases_size__908, obsv_ds_size__908);
  int32_t memop_var_909;
  memop_var_909 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__909, obsv_ds_bases_size__909, obsv_ds_size__909);
  uint32_t_secure_store_single((unsigned int) memop_var_909, (unsigned int *) (&theta_a[2]), obsv_ds__910, obsv_ds_bases_size__910, obsv_ds_size__910);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_911;
  memop_var_911 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__911, obsv_ds_bases_size__911, obsv_ds_size__911);
  int32_t memop_var_912;
  memop_var_912 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__912, obsv_ds_bases_size__912, obsv_ds_size__912);
  uint32_t_secure_store_single((unsigned int) ((memop_var_911 >> 10) ^ (memop_var_912 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__913, obsv_ds_bases_size__913, obsv_ds_size__913);
  int32_t memop_var_914;
  memop_var_914 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__914, obsv_ds_bases_size__914, obsv_ds_size__914);
  int32_t memop_var_915;
  memop_var_915 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__915, obsv_ds_bases_size__915, obsv_ds_size__915);
  uint32_t_secure_store_single((unsigned int) ((memop_var_914 << 1) ^ (memop_var_915 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__916, obsv_ds_bases_size__916, obsv_ds_size__916);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_917;
  memop_var_917 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__917, obsv_ds_bases_size__917, obsv_ds_size__917);
  int32_t memop_var_918;
  memop_var_918 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__918, obsv_ds_bases_size__918, obsv_ds_size__918);
  int32_t memop_var_919;
  memop_var_919 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__919, obsv_ds_bases_size__919, obsv_ds_size__919);
  uint32_t_secure_store_single((unsigned int) (memop_var_917 ^ (memop_var_918 | (~memop_var_919))), (unsigned int *) gamma_b, obsv_ds__920, obsv_ds_bases_size__920, obsv_ds_size__920);
  int32_t memop_var_921;
  memop_var_921 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__921, obsv_ds_bases_size__921, obsv_ds_size__921);
  int32_t memop_var_922;
  memop_var_922 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__922, obsv_ds_bases_size__922, obsv_ds_size__922);
  int32_t memop_var_923;
  memop_var_923 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__923, obsv_ds_bases_size__923, obsv_ds_size__923);
  uint32_t_secure_store_single((unsigned int) (memop_var_921 ^ (memop_var_922 | (~memop_var_923))), (unsigned int *) (&gamma_b[1]), obsv_ds__924, obsv_ds_bases_size__924, obsv_ds_size__924);
  int32_t memop_var_925;
  memop_var_925 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__925, obsv_ds_bases_size__925, obsv_ds_size__925);
  int32_t memop_var_926;
  memop_var_926 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__926, obsv_ds_bases_size__926, obsv_ds_size__926);
  int32_t memop_var_927;
  memop_var_927 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__927, obsv_ds_bases_size__927, obsv_ds_size__927);
  uint32_t_secure_store_single((unsigned int) (memop_var_925 ^ (memop_var_926 | (~memop_var_927))), (unsigned int *) (&gamma_b[2]), obsv_ds__928, obsv_ds_bases_size__928, obsv_ds_size__928);
  int32_t memop_var_929;
  memop_var_929 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__929, obsv_ds_bases_size__929, obsv_ds_size__929);
  uint32_t_secure_store_single((unsigned int) memop_var_929, (unsigned int *) (&gamma_a[0]), obsv_ds__930, obsv_ds_bases_size__930, obsv_ds_size__930);
  int32_t memop_var_931;
  memop_var_931 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__931, obsv_ds_bases_size__931, obsv_ds_size__931);
  uint32_t_secure_store_single((unsigned int) memop_var_931, (unsigned int *) (&gamma_a[1]), obsv_ds__932, obsv_ds_bases_size__932, obsv_ds_size__932);
  int32_t memop_var_933;
  memop_var_933 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__933, obsv_ds_bases_size__933, obsv_ds_size__933);
  uint32_t_secure_store_single((unsigned int) memop_var_933, (unsigned int *) (&gamma_a[2]), obsv_ds__934, obsv_ds_bases_size__934, obsv_ds_size__934);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_935;
  memop_var_935 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__935, obsv_ds_bases_size__935, obsv_ds_size__935);
  int32_t memop_var_936;
  memop_var_936 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__936, obsv_ds_bases_size__936, obsv_ds_size__936);
  uint32_t_secure_store_single((unsigned int) ((memop_var_935 << 1) ^ (memop_var_936 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__937, obsv_ds_bases_size__937, obsv_ds_size__937);
  int32_t memop_var_938;
  memop_var_938 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__938, obsv_ds_bases_size__938, obsv_ds_size__938);
  int32_t memop_var_939;
  memop_var_939 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__939, obsv_ds_bases_size__939, obsv_ds_size__939);
  uint32_t_secure_store_single((unsigned int) ((memop_var_938 >> 10) ^ (memop_var_939 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__940, obsv_ds_bases_size__940, obsv_ds_size__940);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_941;
  memop_var_941 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__941, obsv_ds_bases_size__941, obsv_ds_size__941);
  uint32_t memop_var_942;
  memop_var_942 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__942, obsv_ds_bases_size__942, obsv_ds_size__942);
  uint32_t memop_var_943;
  memop_var_943 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__943, obsv_ds_bases_size__943, obsv_ds_size__943);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_941) ^ memop_var_942) ^ (memop_var_943 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__944, obsv_ds_bases_size__944, obsv_ds_size__944);
  int32_t memop_var_945;
  memop_var_945 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__945, obsv_ds_bases_size__945, obsv_ds_size__945);
  uint32_t memop_var_946;
  memop_var_946 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__946, obsv_ds_bases_size__946, obsv_ds_size__946);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_945) ^ memop_var_946)), (unsigned int *) (&encrypt_a[1]), obsv_ds__947, obsv_ds_bases_size__947, obsv_ds_size__947);
  int32_t memop_var_948;
  memop_var_948 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__948, obsv_ds_bases_size__948, obsv_ds_size__948);
  uint32_t memop_var_949;
  memop_var_949 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__949, obsv_ds_bases_size__949, obsv_ds_size__949);
  uint32_t memop_var_950;
  memop_var_950 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__950, obsv_ds_bases_size__950, obsv_ds_size__950);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_948) ^ memop_var_949) ^ memop_var_950)), (unsigned int *) (&encrypt_a[2]), obsv_ds__951, obsv_ds_bases_size__951, obsv_ds_size__951);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_952;
  memop_var_952 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__952, obsv_ds_bases_size__952, obsv_ds_size__952);
  int32_t memop_var_953;
  memop_var_953 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__953, obsv_ds_bases_size__953, obsv_ds_size__953);
  int32_t memop_var_954;
  memop_var_954 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__954, obsv_ds_bases_size__954, obsv_ds_size__954);
  int32_t memop_var_955;
  memop_var_955 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__955, obsv_ds_bases_size__955, obsv_ds_size__955);
  int32_t memop_var_956;
  memop_var_956 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__956, obsv_ds_bases_size__956, obsv_ds_size__956);
  int32_t memop_var_957;
  memop_var_957 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__957, obsv_ds_bases_size__957, obsv_ds_size__957);
  int32_t memop_var_958;
  memop_var_958 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__958, obsv_ds_bases_size__958, obsv_ds_size__958);
  int32_t memop_var_959;
  memop_var_959 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__959, obsv_ds_bases_size__959, obsv_ds_size__959);
  int32_t memop_var_960;
  memop_var_960 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__960, obsv_ds_bases_size__960, obsv_ds_size__960);
  int32_t memop_var_961;
  memop_var_961 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__961, obsv_ds_bases_size__961, obsv_ds_size__961);
  int32_t memop_var_962;
  memop_var_962 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__962, obsv_ds_bases_size__962, obsv_ds_size__962);
  int32_t memop_var_963;
  memop_var_963 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__963, obsv_ds_bases_size__963, obsv_ds_size__963);
  int32_t memop_var_964;
  memop_var_964 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__964, obsv_ds_bases_size__964, obsv_ds_size__964);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_952 ^ (memop_var_953 >> 16)) ^ (memop_var_954 << 16)) ^ (memop_var_955 >> 16)) ^ (memop_var_956 << 16)) ^ (memop_var_957 >> 24)) ^ (memop_var_958 << 8)) ^ (memop_var_959 >> 8)) ^ (memop_var_960 << 24)) ^ (memop_var_961 >> 16)) ^ (memop_var_962 << 16)) ^ (memop_var_963 >> 24)) ^ (memop_var_964 << 8)), (unsigned int *) theta_b, obsv_ds__965, obsv_ds_bases_size__965, obsv_ds_size__965);
  int32_t memop_var_966;
  memop_var_966 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__966, obsv_ds_bases_size__966, obsv_ds_size__966);
  int32_t memop_var_967;
  memop_var_967 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__967, obsv_ds_bases_size__967, obsv_ds_size__967);
  int32_t memop_var_968;
  memop_var_968 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__968, obsv_ds_bases_size__968, obsv_ds_size__968);
  int32_t memop_var_969;
  memop_var_969 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__969, obsv_ds_bases_size__969, obsv_ds_size__969);
  int32_t memop_var_970;
  memop_var_970 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__970, obsv_ds_bases_size__970, obsv_ds_size__970);
  int32_t memop_var_971;
  memop_var_971 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__971, obsv_ds_bases_size__971, obsv_ds_size__971);
  int32_t memop_var_972;
  memop_var_972 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__972, obsv_ds_bases_size__972, obsv_ds_size__972);
  int32_t memop_var_973;
  memop_var_973 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__973, obsv_ds_bases_size__973, obsv_ds_size__973);
  int32_t memop_var_974;
  memop_var_974 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__974, obsv_ds_bases_size__974, obsv_ds_size__974);
  int32_t memop_var_975;
  memop_var_975 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__975, obsv_ds_bases_size__975, obsv_ds_size__975);
  int32_t memop_var_976;
  memop_var_976 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__976, obsv_ds_bases_size__976, obsv_ds_size__976);
  int32_t memop_var_977;
  memop_var_977 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__977, obsv_ds_bases_size__977, obsv_ds_size__977);
  int32_t memop_var_978;
  memop_var_978 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__978, obsv_ds_bases_size__978, obsv_ds_size__978);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_966 ^ (memop_var_967 >> 16)) ^ (memop_var_968 << 16)) ^ (memop_var_969 >> 16)) ^ (memop_var_970 << 16)) ^ (memop_var_971 >> 24)) ^ (memop_var_972 << 8)) ^ (memop_var_973 >> 8)) ^ (memop_var_974 << 24)) ^ (memop_var_975 >> 16)) ^ (memop_var_976 << 16)) ^ (memop_var_977 >> 24)) ^ (memop_var_978 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__979, obsv_ds_bases_size__979, obsv_ds_size__979);
  int32_t memop_var_980;
  memop_var_980 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__980, obsv_ds_bases_size__980, obsv_ds_size__980);
  int32_t memop_var_981;
  memop_var_981 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__981, obsv_ds_bases_size__981, obsv_ds_size__981);
  int32_t memop_var_982;
  memop_var_982 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__982, obsv_ds_bases_size__982, obsv_ds_size__982);
  int32_t memop_var_983;
  memop_var_983 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__983, obsv_ds_bases_size__983, obsv_ds_size__983);
  int32_t memop_var_984;
  memop_var_984 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__984, obsv_ds_bases_size__984, obsv_ds_size__984);
  int32_t memop_var_985;
  memop_var_985 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__985, obsv_ds_bases_size__985, obsv_ds_size__985);
  int32_t memop_var_986;
  memop_var_986 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__986, obsv_ds_bases_size__986, obsv_ds_size__986);
  int32_t memop_var_987;
  memop_var_987 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__987, obsv_ds_bases_size__987, obsv_ds_size__987);
  int32_t memop_var_988;
  memop_var_988 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__988, obsv_ds_bases_size__988, obsv_ds_size__988);
  int32_t memop_var_989;
  memop_var_989 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__989, obsv_ds_bases_size__989, obsv_ds_size__989);
  int32_t memop_var_990;
  memop_var_990 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__990, obsv_ds_bases_size__990, obsv_ds_size__990);
  int32_t memop_var_991;
  memop_var_991 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__991, obsv_ds_bases_size__991, obsv_ds_size__991);
  int32_t memop_var_992;
  memop_var_992 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__992, obsv_ds_bases_size__992, obsv_ds_size__992);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_980 ^ (memop_var_981 >> 16)) ^ (memop_var_982 << 16)) ^ (memop_var_983 >> 16)) ^ (memop_var_984 << 16)) ^ (memop_var_985 >> 24)) ^ (memop_var_986 << 8)) ^ (memop_var_987 >> 8)) ^ (memop_var_988 << 24)) ^ (memop_var_989 >> 16)) ^ (memop_var_990 << 16)) ^ (memop_var_991 >> 24)) ^ (memop_var_992 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__993, obsv_ds_bases_size__993, obsv_ds_size__993);
  int32_t memop_var_994;
  memop_var_994 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__994, obsv_ds_bases_size__994, obsv_ds_size__994);
  uint32_t_secure_store_single((unsigned int) memop_var_994, (unsigned int *) (&theta_a[0]), obsv_ds__995, obsv_ds_bases_size__995, obsv_ds_size__995);
  int32_t memop_var_996;
  memop_var_996 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__996, obsv_ds_bases_size__996, obsv_ds_size__996);
  uint32_t_secure_store_single((unsigned int) memop_var_996, (unsigned int *) (&theta_a[1]), obsv_ds__997, obsv_ds_bases_size__997, obsv_ds_size__997);
  int32_t memop_var_998;
  memop_var_998 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__998, obsv_ds_bases_size__998, obsv_ds_size__998);
  uint32_t_secure_store_single((unsigned int) memop_var_998, (unsigned int *) (&theta_a[2]), obsv_ds__999, obsv_ds_bases_size__999, obsv_ds_size__999);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1000;
  memop_var_1000 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1000, obsv_ds_bases_size__1000, obsv_ds_size__1000);
  int32_t memop_var_1001;
  memop_var_1001 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1001, obsv_ds_bases_size__1001, obsv_ds_size__1001);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1000 >> 10) ^ (memop_var_1001 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1002, obsv_ds_bases_size__1002, obsv_ds_size__1002);
  int32_t memop_var_1003;
  memop_var_1003 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1003, obsv_ds_bases_size__1003, obsv_ds_size__1003);
  int32_t memop_var_1004;
  memop_var_1004 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1004, obsv_ds_bases_size__1004, obsv_ds_size__1004);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1003 << 1) ^ (memop_var_1004 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1005, obsv_ds_bases_size__1005, obsv_ds_size__1005);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1006;
  memop_var_1006 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1006, obsv_ds_bases_size__1006, obsv_ds_size__1006);
  int32_t memop_var_1007;
  memop_var_1007 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1007, obsv_ds_bases_size__1007, obsv_ds_size__1007);
  int32_t memop_var_1008;
  memop_var_1008 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1008, obsv_ds_bases_size__1008, obsv_ds_size__1008);
  uint32_t_secure_store_single((unsigned int) (memop_var_1006 ^ (memop_var_1007 | (~memop_var_1008))), (unsigned int *) gamma_b, obsv_ds__1009, obsv_ds_bases_size__1009, obsv_ds_size__1009);
  int32_t memop_var_1010;
  memop_var_1010 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1010, obsv_ds_bases_size__1010, obsv_ds_size__1010);
  int32_t memop_var_1011;
  memop_var_1011 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1011, obsv_ds_bases_size__1011, obsv_ds_size__1011);
  int32_t memop_var_1012;
  memop_var_1012 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1012, obsv_ds_bases_size__1012, obsv_ds_size__1012);
  uint32_t_secure_store_single((unsigned int) (memop_var_1010 ^ (memop_var_1011 | (~memop_var_1012))), (unsigned int *) (&gamma_b[1]), obsv_ds__1013, obsv_ds_bases_size__1013, obsv_ds_size__1013);
  int32_t memop_var_1014;
  memop_var_1014 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1014, obsv_ds_bases_size__1014, obsv_ds_size__1014);
  int32_t memop_var_1015;
  memop_var_1015 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1015, obsv_ds_bases_size__1015, obsv_ds_size__1015);
  int32_t memop_var_1016;
  memop_var_1016 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1016, obsv_ds_bases_size__1016, obsv_ds_size__1016);
  uint32_t_secure_store_single((unsigned int) (memop_var_1014 ^ (memop_var_1015 | (~memop_var_1016))), (unsigned int *) (&gamma_b[2]), obsv_ds__1017, obsv_ds_bases_size__1017, obsv_ds_size__1017);
  int32_t memop_var_1018;
  memop_var_1018 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1018, obsv_ds_bases_size__1018, obsv_ds_size__1018);
  uint32_t_secure_store_single((unsigned int) memop_var_1018, (unsigned int *) (&gamma_a[0]), obsv_ds__1019, obsv_ds_bases_size__1019, obsv_ds_size__1019);
  int32_t memop_var_1020;
  memop_var_1020 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1020, obsv_ds_bases_size__1020, obsv_ds_size__1020);
  uint32_t_secure_store_single((unsigned int) memop_var_1020, (unsigned int *) (&gamma_a[1]), obsv_ds__1021, obsv_ds_bases_size__1021, obsv_ds_size__1021);
  int32_t memop_var_1022;
  memop_var_1022 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1022, obsv_ds_bases_size__1022, obsv_ds_size__1022);
  uint32_t_secure_store_single((unsigned int) memop_var_1022, (unsigned int *) (&gamma_a[2]), obsv_ds__1023, obsv_ds_bases_size__1023, obsv_ds_size__1023);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1024;
  memop_var_1024 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1024, obsv_ds_bases_size__1024, obsv_ds_size__1024);
  int32_t memop_var_1025;
  memop_var_1025 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1025, obsv_ds_bases_size__1025, obsv_ds_size__1025);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1024 << 1) ^ (memop_var_1025 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1026, obsv_ds_bases_size__1026, obsv_ds_size__1026);
  int32_t memop_var_1027;
  memop_var_1027 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1027, obsv_ds_bases_size__1027, obsv_ds_size__1027);
  int32_t memop_var_1028;
  memop_var_1028 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1028, obsv_ds_bases_size__1028, obsv_ds_size__1028);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1027 >> 10) ^ (memop_var_1028 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1029, obsv_ds_bases_size__1029, obsv_ds_size__1029);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1030;
  memop_var_1030 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1030, obsv_ds_bases_size__1030, obsv_ds_size__1030);
  uint32_t memop_var_1031;
  memop_var_1031 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1031, obsv_ds_bases_size__1031, obsv_ds_size__1031);
  uint32_t memop_var_1032;
  memop_var_1032 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1032, obsv_ds_bases_size__1032, obsv_ds_size__1032);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1030) ^ memop_var_1031) ^ (memop_var_1032 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1033, obsv_ds_bases_size__1033, obsv_ds_size__1033);
  int32_t memop_var_1034;
  memop_var_1034 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1034, obsv_ds_bases_size__1034, obsv_ds_size__1034);
  uint32_t memop_var_1035;
  memop_var_1035 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1035, obsv_ds_bases_size__1035, obsv_ds_size__1035);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1034) ^ memop_var_1035)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1036, obsv_ds_bases_size__1036, obsv_ds_size__1036);
  int32_t memop_var_1037;
  memop_var_1037 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1037, obsv_ds_bases_size__1037, obsv_ds_size__1037);
  uint32_t memop_var_1038;
  memop_var_1038 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1038, obsv_ds_bases_size__1038, obsv_ds_size__1038);
  uint32_t memop_var_1039;
  memop_var_1039 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1039, obsv_ds_bases_size__1039, obsv_ds_size__1039);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1037) ^ memop_var_1038) ^ memop_var_1039)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1040, obsv_ds_bases_size__1040, obsv_ds_size__1040);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1041;
  memop_var_1041 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1041, obsv_ds_bases_size__1041, obsv_ds_size__1041);
  int32_t memop_var_1042;
  memop_var_1042 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1042, obsv_ds_bases_size__1042, obsv_ds_size__1042);
  int32_t memop_var_1043;
  memop_var_1043 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1043, obsv_ds_bases_size__1043, obsv_ds_size__1043);
  int32_t memop_var_1044;
  memop_var_1044 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1044, obsv_ds_bases_size__1044, obsv_ds_size__1044);
  int32_t memop_var_1045;
  memop_var_1045 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1045, obsv_ds_bases_size__1045, obsv_ds_size__1045);
  int32_t memop_var_1046;
  memop_var_1046 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1046, obsv_ds_bases_size__1046, obsv_ds_size__1046);
  int32_t memop_var_1047;
  memop_var_1047 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1047, obsv_ds_bases_size__1047, obsv_ds_size__1047);
  int32_t memop_var_1048;
  memop_var_1048 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1048, obsv_ds_bases_size__1048, obsv_ds_size__1048);
  int32_t memop_var_1049;
  memop_var_1049 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1049, obsv_ds_bases_size__1049, obsv_ds_size__1049);
  int32_t memop_var_1050;
  memop_var_1050 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1050, obsv_ds_bases_size__1050, obsv_ds_size__1050);
  int32_t memop_var_1051;
  memop_var_1051 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1051, obsv_ds_bases_size__1051, obsv_ds_size__1051);
  int32_t memop_var_1052;
  memop_var_1052 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1052, obsv_ds_bases_size__1052, obsv_ds_size__1052);
  int32_t memop_var_1053;
  memop_var_1053 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1053, obsv_ds_bases_size__1053, obsv_ds_size__1053);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1041 ^ (memop_var_1042 >> 16)) ^ (memop_var_1043 << 16)) ^ (memop_var_1044 >> 16)) ^ (memop_var_1045 << 16)) ^ (memop_var_1046 >> 24)) ^ (memop_var_1047 << 8)) ^ (memop_var_1048 >> 8)) ^ (memop_var_1049 << 24)) ^ (memop_var_1050 >> 16)) ^ (memop_var_1051 << 16)) ^ (memop_var_1052 >> 24)) ^ (memop_var_1053 << 8)), (unsigned int *) theta_b, obsv_ds__1054, obsv_ds_bases_size__1054, obsv_ds_size__1054);
  int32_t memop_var_1055;
  memop_var_1055 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1055, obsv_ds_bases_size__1055, obsv_ds_size__1055);
  int32_t memop_var_1056;
  memop_var_1056 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1056, obsv_ds_bases_size__1056, obsv_ds_size__1056);
  int32_t memop_var_1057;
  memop_var_1057 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1057, obsv_ds_bases_size__1057, obsv_ds_size__1057);
  int32_t memop_var_1058;
  memop_var_1058 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1058, obsv_ds_bases_size__1058, obsv_ds_size__1058);
  int32_t memop_var_1059;
  memop_var_1059 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1059, obsv_ds_bases_size__1059, obsv_ds_size__1059);
  int32_t memop_var_1060;
  memop_var_1060 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1060, obsv_ds_bases_size__1060, obsv_ds_size__1060);
  int32_t memop_var_1061;
  memop_var_1061 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1061, obsv_ds_bases_size__1061, obsv_ds_size__1061);
  int32_t memop_var_1062;
  memop_var_1062 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1062, obsv_ds_bases_size__1062, obsv_ds_size__1062);
  int32_t memop_var_1063;
  memop_var_1063 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1063, obsv_ds_bases_size__1063, obsv_ds_size__1063);
  int32_t memop_var_1064;
  memop_var_1064 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1064, obsv_ds_bases_size__1064, obsv_ds_size__1064);
  int32_t memop_var_1065;
  memop_var_1065 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1065, obsv_ds_bases_size__1065, obsv_ds_size__1065);
  int32_t memop_var_1066;
  memop_var_1066 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1066, obsv_ds_bases_size__1066, obsv_ds_size__1066);
  int32_t memop_var_1067;
  memop_var_1067 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1067, obsv_ds_bases_size__1067, obsv_ds_size__1067);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1055 ^ (memop_var_1056 >> 16)) ^ (memop_var_1057 << 16)) ^ (memop_var_1058 >> 16)) ^ (memop_var_1059 << 16)) ^ (memop_var_1060 >> 24)) ^ (memop_var_1061 << 8)) ^ (memop_var_1062 >> 8)) ^ (memop_var_1063 << 24)) ^ (memop_var_1064 >> 16)) ^ (memop_var_1065 << 16)) ^ (memop_var_1066 >> 24)) ^ (memop_var_1067 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1068, obsv_ds_bases_size__1068, obsv_ds_size__1068);
  int32_t memop_var_1069;
  memop_var_1069 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1069, obsv_ds_bases_size__1069, obsv_ds_size__1069);
  int32_t memop_var_1070;
  memop_var_1070 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1070, obsv_ds_bases_size__1070, obsv_ds_size__1070);
  int32_t memop_var_1071;
  memop_var_1071 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1071, obsv_ds_bases_size__1071, obsv_ds_size__1071);
  int32_t memop_var_1072;
  memop_var_1072 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1072, obsv_ds_bases_size__1072, obsv_ds_size__1072);
  int32_t memop_var_1073;
  memop_var_1073 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1073, obsv_ds_bases_size__1073, obsv_ds_size__1073);
  int32_t memop_var_1074;
  memop_var_1074 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1074, obsv_ds_bases_size__1074, obsv_ds_size__1074);
  int32_t memop_var_1075;
  memop_var_1075 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1075, obsv_ds_bases_size__1075, obsv_ds_size__1075);
  int32_t memop_var_1076;
  memop_var_1076 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1076, obsv_ds_bases_size__1076, obsv_ds_size__1076);
  int32_t memop_var_1077;
  memop_var_1077 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1077, obsv_ds_bases_size__1077, obsv_ds_size__1077);
  int32_t memop_var_1078;
  memop_var_1078 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1078, obsv_ds_bases_size__1078, obsv_ds_size__1078);
  int32_t memop_var_1079;
  memop_var_1079 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1079, obsv_ds_bases_size__1079, obsv_ds_size__1079);
  int32_t memop_var_1080;
  memop_var_1080 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1080, obsv_ds_bases_size__1080, obsv_ds_size__1080);
  int32_t memop_var_1081;
  memop_var_1081 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1081, obsv_ds_bases_size__1081, obsv_ds_size__1081);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1069 ^ (memop_var_1070 >> 16)) ^ (memop_var_1071 << 16)) ^ (memop_var_1072 >> 16)) ^ (memop_var_1073 << 16)) ^ (memop_var_1074 >> 24)) ^ (memop_var_1075 << 8)) ^ (memop_var_1076 >> 8)) ^ (memop_var_1077 << 24)) ^ (memop_var_1078 >> 16)) ^ (memop_var_1079 << 16)) ^ (memop_var_1080 >> 24)) ^ (memop_var_1081 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1082, obsv_ds_bases_size__1082, obsv_ds_size__1082);
  int32_t memop_var_1083;
  memop_var_1083 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1083, obsv_ds_bases_size__1083, obsv_ds_size__1083);
  uint32_t_secure_store_single((unsigned int) memop_var_1083, (unsigned int *) (&theta_a[0]), obsv_ds__1084, obsv_ds_bases_size__1084, obsv_ds_size__1084);
  int32_t memop_var_1085;
  memop_var_1085 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1085, obsv_ds_bases_size__1085, obsv_ds_size__1085);
  uint32_t_secure_store_single((unsigned int) memop_var_1085, (unsigned int *) (&theta_a[1]), obsv_ds__1086, obsv_ds_bases_size__1086, obsv_ds_size__1086);
  int32_t memop_var_1087;
  memop_var_1087 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1087, obsv_ds_bases_size__1087, obsv_ds_size__1087);
  uint32_t_secure_store_single((unsigned int) memop_var_1087, (unsigned int *) (&theta_a[2]), obsv_ds__1088, obsv_ds_bases_size__1088, obsv_ds_size__1088);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1089;
  memop_var_1089 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1089, obsv_ds_bases_size__1089, obsv_ds_size__1089);
  int32_t memop_var_1090;
  memop_var_1090 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1090, obsv_ds_bases_size__1090, obsv_ds_size__1090);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1089 >> 10) ^ (memop_var_1090 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1091, obsv_ds_bases_size__1091, obsv_ds_size__1091);
  int32_t memop_var_1092;
  memop_var_1092 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1092, obsv_ds_bases_size__1092, obsv_ds_size__1092);
  int32_t memop_var_1093;
  memop_var_1093 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1093, obsv_ds_bases_size__1093, obsv_ds_size__1093);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1092 << 1) ^ (memop_var_1093 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1094, obsv_ds_bases_size__1094, obsv_ds_size__1094);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1095;
  memop_var_1095 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1095, obsv_ds_bases_size__1095, obsv_ds_size__1095);
  int32_t memop_var_1096;
  memop_var_1096 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1096, obsv_ds_bases_size__1096, obsv_ds_size__1096);
  int32_t memop_var_1097;
  memop_var_1097 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1097, obsv_ds_bases_size__1097, obsv_ds_size__1097);
  uint32_t_secure_store_single((unsigned int) (memop_var_1095 ^ (memop_var_1096 | (~memop_var_1097))), (unsigned int *) gamma_b, obsv_ds__1098, obsv_ds_bases_size__1098, obsv_ds_size__1098);
  int32_t memop_var_1099;
  memop_var_1099 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1099, obsv_ds_bases_size__1099, obsv_ds_size__1099);
  int32_t memop_var_1100;
  memop_var_1100 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1100, obsv_ds_bases_size__1100, obsv_ds_size__1100);
  int32_t memop_var_1101;
  memop_var_1101 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1101, obsv_ds_bases_size__1101, obsv_ds_size__1101);
  uint32_t_secure_store_single((unsigned int) (memop_var_1099 ^ (memop_var_1100 | (~memop_var_1101))), (unsigned int *) (&gamma_b[1]), obsv_ds__1102, obsv_ds_bases_size__1102, obsv_ds_size__1102);
  int32_t memop_var_1103;
  memop_var_1103 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1103, obsv_ds_bases_size__1103, obsv_ds_size__1103);
  int32_t memop_var_1104;
  memop_var_1104 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1104, obsv_ds_bases_size__1104, obsv_ds_size__1104);
  int32_t memop_var_1105;
  memop_var_1105 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1105, obsv_ds_bases_size__1105, obsv_ds_size__1105);
  uint32_t_secure_store_single((unsigned int) (memop_var_1103 ^ (memop_var_1104 | (~memop_var_1105))), (unsigned int *) (&gamma_b[2]), obsv_ds__1106, obsv_ds_bases_size__1106, obsv_ds_size__1106);
  int32_t memop_var_1107;
  memop_var_1107 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1107, obsv_ds_bases_size__1107, obsv_ds_size__1107);
  uint32_t_secure_store_single((unsigned int) memop_var_1107, (unsigned int *) (&gamma_a[0]), obsv_ds__1108, obsv_ds_bases_size__1108, obsv_ds_size__1108);
  int32_t memop_var_1109;
  memop_var_1109 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1109, obsv_ds_bases_size__1109, obsv_ds_size__1109);
  uint32_t_secure_store_single((unsigned int) memop_var_1109, (unsigned int *) (&gamma_a[1]), obsv_ds__1110, obsv_ds_bases_size__1110, obsv_ds_size__1110);
  int32_t memop_var_1111;
  memop_var_1111 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1111, obsv_ds_bases_size__1111, obsv_ds_size__1111);
  uint32_t_secure_store_single((unsigned int) memop_var_1111, (unsigned int *) (&gamma_a[2]), obsv_ds__1112, obsv_ds_bases_size__1112, obsv_ds_size__1112);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1113;
  memop_var_1113 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1113, obsv_ds_bases_size__1113, obsv_ds_size__1113);
  int32_t memop_var_1114;
  memop_var_1114 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1114, obsv_ds_bases_size__1114, obsv_ds_size__1114);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1113 << 1) ^ (memop_var_1114 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1115, obsv_ds_bases_size__1115, obsv_ds_size__1115);
  int32_t memop_var_1116;
  memop_var_1116 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1116, obsv_ds_bases_size__1116, obsv_ds_size__1116);
  int32_t memop_var_1117;
  memop_var_1117 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1117, obsv_ds_bases_size__1117, obsv_ds_size__1117);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1116 >> 10) ^ (memop_var_1117 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1118, obsv_ds_bases_size__1118, obsv_ds_size__1118);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1119;
  memop_var_1119 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1119, obsv_ds_bases_size__1119, obsv_ds_size__1119);
  uint32_t memop_var_1120;
  memop_var_1120 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1120, obsv_ds_bases_size__1120, obsv_ds_size__1120);
  uint32_t memop_var_1121;
  memop_var_1121 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1121, obsv_ds_bases_size__1121, obsv_ds_size__1121);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1119) ^ memop_var_1120) ^ (memop_var_1121 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1122, obsv_ds_bases_size__1122, obsv_ds_size__1122);
  int32_t memop_var_1123;
  memop_var_1123 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1123, obsv_ds_bases_size__1123, obsv_ds_size__1123);
  uint32_t memop_var_1124;
  memop_var_1124 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1124, obsv_ds_bases_size__1124, obsv_ds_size__1124);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1123) ^ memop_var_1124)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1125, obsv_ds_bases_size__1125, obsv_ds_size__1125);
  int32_t memop_var_1126;
  memop_var_1126 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1126, obsv_ds_bases_size__1126, obsv_ds_size__1126);
  uint32_t memop_var_1127;
  memop_var_1127 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1127, obsv_ds_bases_size__1127, obsv_ds_size__1127);
  uint32_t memop_var_1128;
  memop_var_1128 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1128, obsv_ds_bases_size__1128, obsv_ds_size__1128);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1126) ^ memop_var_1127) ^ memop_var_1128)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1129, obsv_ds_bases_size__1129, obsv_ds_size__1129);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1130;
  memop_var_1130 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1130, obsv_ds_bases_size__1130, obsv_ds_size__1130);
  int32_t memop_var_1131;
  memop_var_1131 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1131, obsv_ds_bases_size__1131, obsv_ds_size__1131);
  int32_t memop_var_1132;
  memop_var_1132 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1132, obsv_ds_bases_size__1132, obsv_ds_size__1132);
  int32_t memop_var_1133;
  memop_var_1133 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1133, obsv_ds_bases_size__1133, obsv_ds_size__1133);
  int32_t memop_var_1134;
  memop_var_1134 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1134, obsv_ds_bases_size__1134, obsv_ds_size__1134);
  int32_t memop_var_1135;
  memop_var_1135 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1135, obsv_ds_bases_size__1135, obsv_ds_size__1135);
  int32_t memop_var_1136;
  memop_var_1136 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1136, obsv_ds_bases_size__1136, obsv_ds_size__1136);
  int32_t memop_var_1137;
  memop_var_1137 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1137, obsv_ds_bases_size__1137, obsv_ds_size__1137);
  int32_t memop_var_1138;
  memop_var_1138 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1138, obsv_ds_bases_size__1138, obsv_ds_size__1138);
  int32_t memop_var_1139;
  memop_var_1139 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1139, obsv_ds_bases_size__1139, obsv_ds_size__1139);
  int32_t memop_var_1140;
  memop_var_1140 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1140, obsv_ds_bases_size__1140, obsv_ds_size__1140);
  int32_t memop_var_1141;
  memop_var_1141 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1141, obsv_ds_bases_size__1141, obsv_ds_size__1141);
  int32_t memop_var_1142;
  memop_var_1142 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1142, obsv_ds_bases_size__1142, obsv_ds_size__1142);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1130 ^ (memop_var_1131 >> 16)) ^ (memop_var_1132 << 16)) ^ (memop_var_1133 >> 16)) ^ (memop_var_1134 << 16)) ^ (memop_var_1135 >> 24)) ^ (memop_var_1136 << 8)) ^ (memop_var_1137 >> 8)) ^ (memop_var_1138 << 24)) ^ (memop_var_1139 >> 16)) ^ (memop_var_1140 << 16)) ^ (memop_var_1141 >> 24)) ^ (memop_var_1142 << 8)), (unsigned int *) theta_b, obsv_ds__1143, obsv_ds_bases_size__1143, obsv_ds_size__1143);
  int32_t memop_var_1144;
  memop_var_1144 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1144, obsv_ds_bases_size__1144, obsv_ds_size__1144);
  int32_t memop_var_1145;
  memop_var_1145 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1145, obsv_ds_bases_size__1145, obsv_ds_size__1145);
  int32_t memop_var_1146;
  memop_var_1146 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1146, obsv_ds_bases_size__1146, obsv_ds_size__1146);
  int32_t memop_var_1147;
  memop_var_1147 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1147, obsv_ds_bases_size__1147, obsv_ds_size__1147);
  int32_t memop_var_1148;
  memop_var_1148 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1148, obsv_ds_bases_size__1148, obsv_ds_size__1148);
  int32_t memop_var_1149;
  memop_var_1149 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1149, obsv_ds_bases_size__1149, obsv_ds_size__1149);
  int32_t memop_var_1150;
  memop_var_1150 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1150, obsv_ds_bases_size__1150, obsv_ds_size__1150);
  int32_t memop_var_1151;
  memop_var_1151 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1151, obsv_ds_bases_size__1151, obsv_ds_size__1151);
  int32_t memop_var_1152;
  memop_var_1152 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1152, obsv_ds_bases_size__1152, obsv_ds_size__1152);
  int32_t memop_var_1153;
  memop_var_1153 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1153, obsv_ds_bases_size__1153, obsv_ds_size__1153);
  int32_t memop_var_1154;
  memop_var_1154 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1154, obsv_ds_bases_size__1154, obsv_ds_size__1154);
  int32_t memop_var_1155;
  memop_var_1155 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1155, obsv_ds_bases_size__1155, obsv_ds_size__1155);
  int32_t memop_var_1156;
  memop_var_1156 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1156, obsv_ds_bases_size__1156, obsv_ds_size__1156);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1144 ^ (memop_var_1145 >> 16)) ^ (memop_var_1146 << 16)) ^ (memop_var_1147 >> 16)) ^ (memop_var_1148 << 16)) ^ (memop_var_1149 >> 24)) ^ (memop_var_1150 << 8)) ^ (memop_var_1151 >> 8)) ^ (memop_var_1152 << 24)) ^ (memop_var_1153 >> 16)) ^ (memop_var_1154 << 16)) ^ (memop_var_1155 >> 24)) ^ (memop_var_1156 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1157, obsv_ds_bases_size__1157, obsv_ds_size__1157);
  int32_t memop_var_1158;
  memop_var_1158 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1158, obsv_ds_bases_size__1158, obsv_ds_size__1158);
  int32_t memop_var_1159;
  memop_var_1159 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1159, obsv_ds_bases_size__1159, obsv_ds_size__1159);
  int32_t memop_var_1160;
  memop_var_1160 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1160, obsv_ds_bases_size__1160, obsv_ds_size__1160);
  int32_t memop_var_1161;
  memop_var_1161 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1161, obsv_ds_bases_size__1161, obsv_ds_size__1161);
  int32_t memop_var_1162;
  memop_var_1162 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1162, obsv_ds_bases_size__1162, obsv_ds_size__1162);
  int32_t memop_var_1163;
  memop_var_1163 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1163, obsv_ds_bases_size__1163, obsv_ds_size__1163);
  int32_t memop_var_1164;
  memop_var_1164 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1164, obsv_ds_bases_size__1164, obsv_ds_size__1164);
  int32_t memop_var_1165;
  memop_var_1165 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1165, obsv_ds_bases_size__1165, obsv_ds_size__1165);
  int32_t memop_var_1166;
  memop_var_1166 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1166, obsv_ds_bases_size__1166, obsv_ds_size__1166);
  int32_t memop_var_1167;
  memop_var_1167 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1167, obsv_ds_bases_size__1167, obsv_ds_size__1167);
  int32_t memop_var_1168;
  memop_var_1168 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1168, obsv_ds_bases_size__1168, obsv_ds_size__1168);
  int32_t memop_var_1169;
  memop_var_1169 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1169, obsv_ds_bases_size__1169, obsv_ds_size__1169);
  int32_t memop_var_1170;
  memop_var_1170 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1170, obsv_ds_bases_size__1170, obsv_ds_size__1170);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1158 ^ (memop_var_1159 >> 16)) ^ (memop_var_1160 << 16)) ^ (memop_var_1161 >> 16)) ^ (memop_var_1162 << 16)) ^ (memop_var_1163 >> 24)) ^ (memop_var_1164 << 8)) ^ (memop_var_1165 >> 8)) ^ (memop_var_1166 << 24)) ^ (memop_var_1167 >> 16)) ^ (memop_var_1168 << 16)) ^ (memop_var_1169 >> 24)) ^ (memop_var_1170 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1171, obsv_ds_bases_size__1171, obsv_ds_size__1171);
  int32_t memop_var_1172;
  memop_var_1172 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1172, obsv_ds_bases_size__1172, obsv_ds_size__1172);
  uint32_t_secure_store_single((unsigned int) memop_var_1172, (unsigned int *) (&theta_a[0]), obsv_ds__1173, obsv_ds_bases_size__1173, obsv_ds_size__1173);
  int32_t memop_var_1174;
  memop_var_1174 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1174, obsv_ds_bases_size__1174, obsv_ds_size__1174);
  uint32_t_secure_store_single((unsigned int) memop_var_1174, (unsigned int *) (&theta_a[1]), obsv_ds__1175, obsv_ds_bases_size__1175, obsv_ds_size__1175);
  int32_t memop_var_1176;
  memop_var_1176 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1176, obsv_ds_bases_size__1176, obsv_ds_size__1176);
  uint32_t_secure_store_single((unsigned int) memop_var_1176, (unsigned int *) (&theta_a[2]), obsv_ds__1177, obsv_ds_bases_size__1177, obsv_ds_size__1177);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1178;
  memop_var_1178 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1178, obsv_ds_bases_size__1178, obsv_ds_size__1178);
  int32_t memop_var_1179;
  memop_var_1179 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1179, obsv_ds_bases_size__1179, obsv_ds_size__1179);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1178 >> 10) ^ (memop_var_1179 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1180, obsv_ds_bases_size__1180, obsv_ds_size__1180);
  int32_t memop_var_1181;
  memop_var_1181 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1181, obsv_ds_bases_size__1181, obsv_ds_size__1181);
  int32_t memop_var_1182;
  memop_var_1182 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1182, obsv_ds_bases_size__1182, obsv_ds_size__1182);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1181 << 1) ^ (memop_var_1182 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1183, obsv_ds_bases_size__1183, obsv_ds_size__1183);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1184;
  memop_var_1184 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1184, obsv_ds_bases_size__1184, obsv_ds_size__1184);
  int32_t memop_var_1185;
  memop_var_1185 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1185, obsv_ds_bases_size__1185, obsv_ds_size__1185);
  int32_t memop_var_1186;
  memop_var_1186 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1186, obsv_ds_bases_size__1186, obsv_ds_size__1186);
  uint32_t_secure_store_single((unsigned int) (memop_var_1184 ^ (memop_var_1185 | (~memop_var_1186))), (unsigned int *) gamma_b, obsv_ds__1187, obsv_ds_bases_size__1187, obsv_ds_size__1187);
  int32_t memop_var_1188;
  memop_var_1188 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1188, obsv_ds_bases_size__1188, obsv_ds_size__1188);
  int32_t memop_var_1189;
  memop_var_1189 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1189, obsv_ds_bases_size__1189, obsv_ds_size__1189);
  int32_t memop_var_1190;
  memop_var_1190 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1190, obsv_ds_bases_size__1190, obsv_ds_size__1190);
  uint32_t_secure_store_single((unsigned int) (memop_var_1188 ^ (memop_var_1189 | (~memop_var_1190))), (unsigned int *) (&gamma_b[1]), obsv_ds__1191, obsv_ds_bases_size__1191, obsv_ds_size__1191);
  int32_t memop_var_1192;
  memop_var_1192 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1192, obsv_ds_bases_size__1192, obsv_ds_size__1192);
  int32_t memop_var_1193;
  memop_var_1193 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1193, obsv_ds_bases_size__1193, obsv_ds_size__1193);
  int32_t memop_var_1194;
  memop_var_1194 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1194, obsv_ds_bases_size__1194, obsv_ds_size__1194);
  uint32_t_secure_store_single((unsigned int) (memop_var_1192 ^ (memop_var_1193 | (~memop_var_1194))), (unsigned int *) (&gamma_b[2]), obsv_ds__1195, obsv_ds_bases_size__1195, obsv_ds_size__1195);
  int32_t memop_var_1196;
  memop_var_1196 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1196, obsv_ds_bases_size__1196, obsv_ds_size__1196);
  uint32_t_secure_store_single((unsigned int) memop_var_1196, (unsigned int *) (&gamma_a[0]), obsv_ds__1197, obsv_ds_bases_size__1197, obsv_ds_size__1197);
  int32_t memop_var_1198;
  memop_var_1198 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1198, obsv_ds_bases_size__1198, obsv_ds_size__1198);
  uint32_t_secure_store_single((unsigned int) memop_var_1198, (unsigned int *) (&gamma_a[1]), obsv_ds__1199, obsv_ds_bases_size__1199, obsv_ds_size__1199);
  int32_t memop_var_1200;
  memop_var_1200 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1200, obsv_ds_bases_size__1200, obsv_ds_size__1200);
  uint32_t_secure_store_single((unsigned int) memop_var_1200, (unsigned int *) (&gamma_a[2]), obsv_ds__1201, obsv_ds_bases_size__1201, obsv_ds_size__1201);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1202;
  memop_var_1202 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1202, obsv_ds_bases_size__1202, obsv_ds_size__1202);
  int32_t memop_var_1203;
  memop_var_1203 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1203, obsv_ds_bases_size__1203, obsv_ds_size__1203);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1202 << 1) ^ (memop_var_1203 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1204, obsv_ds_bases_size__1204, obsv_ds_size__1204);
  int32_t memop_var_1205;
  memop_var_1205 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1205, obsv_ds_bases_size__1205, obsv_ds_size__1205);
  int32_t memop_var_1206;
  memop_var_1206 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1206, obsv_ds_bases_size__1206, obsv_ds_size__1206);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1205 >> 10) ^ (memop_var_1206 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1207, obsv_ds_bases_size__1207, obsv_ds_size__1207);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1208;
  memop_var_1208 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1208, obsv_ds_bases_size__1208, obsv_ds_size__1208);
  uint32_t memop_var_1209;
  memop_var_1209 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1209, obsv_ds_bases_size__1209, obsv_ds_size__1209);
  uint32_t memop_var_1210;
  memop_var_1210 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1210, obsv_ds_bases_size__1210, obsv_ds_size__1210);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1208) ^ memop_var_1209) ^ (memop_var_1210 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1211, obsv_ds_bases_size__1211, obsv_ds_size__1211);
  int32_t memop_var_1212;
  memop_var_1212 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1212, obsv_ds_bases_size__1212, obsv_ds_size__1212);
  uint32_t memop_var_1213;
  memop_var_1213 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1213, obsv_ds_bases_size__1213, obsv_ds_size__1213);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1212) ^ memop_var_1213)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1214, obsv_ds_bases_size__1214, obsv_ds_size__1214);
  int32_t memop_var_1215;
  memop_var_1215 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1215, obsv_ds_bases_size__1215, obsv_ds_size__1215);
  uint32_t memop_var_1216;
  memop_var_1216 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1216, obsv_ds_bases_size__1216, obsv_ds_size__1216);
  uint32_t memop_var_1217;
  memop_var_1217 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1217, obsv_ds_bases_size__1217, obsv_ds_size__1217);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1215) ^ memop_var_1216) ^ memop_var_1217)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1218, obsv_ds_bases_size__1218, obsv_ds_size__1218);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1219;
  memop_var_1219 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1219, obsv_ds_bases_size__1219, obsv_ds_size__1219);
  int32_t memop_var_1220;
  memop_var_1220 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1220, obsv_ds_bases_size__1220, obsv_ds_size__1220);
  int32_t memop_var_1221;
  memop_var_1221 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1221, obsv_ds_bases_size__1221, obsv_ds_size__1221);
  int32_t memop_var_1222;
  memop_var_1222 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1222, obsv_ds_bases_size__1222, obsv_ds_size__1222);
  int32_t memop_var_1223;
  memop_var_1223 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1223, obsv_ds_bases_size__1223, obsv_ds_size__1223);
  int32_t memop_var_1224;
  memop_var_1224 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1224, obsv_ds_bases_size__1224, obsv_ds_size__1224);
  int32_t memop_var_1225;
  memop_var_1225 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1225, obsv_ds_bases_size__1225, obsv_ds_size__1225);
  int32_t memop_var_1226;
  memop_var_1226 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1226, obsv_ds_bases_size__1226, obsv_ds_size__1226);
  int32_t memop_var_1227;
  memop_var_1227 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1227, obsv_ds_bases_size__1227, obsv_ds_size__1227);
  int32_t memop_var_1228;
  memop_var_1228 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1228, obsv_ds_bases_size__1228, obsv_ds_size__1228);
  int32_t memop_var_1229;
  memop_var_1229 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1229, obsv_ds_bases_size__1229, obsv_ds_size__1229);
  int32_t memop_var_1230;
  memop_var_1230 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1230, obsv_ds_bases_size__1230, obsv_ds_size__1230);
  int32_t memop_var_1231;
  memop_var_1231 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1231, obsv_ds_bases_size__1231, obsv_ds_size__1231);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1219 ^ (memop_var_1220 >> 16)) ^ (memop_var_1221 << 16)) ^ (memop_var_1222 >> 16)) ^ (memop_var_1223 << 16)) ^ (memop_var_1224 >> 24)) ^ (memop_var_1225 << 8)) ^ (memop_var_1226 >> 8)) ^ (memop_var_1227 << 24)) ^ (memop_var_1228 >> 16)) ^ (memop_var_1229 << 16)) ^ (memop_var_1230 >> 24)) ^ (memop_var_1231 << 8)), (unsigned int *) theta_b, obsv_ds__1232, obsv_ds_bases_size__1232, obsv_ds_size__1232);
  int32_t memop_var_1233;
  memop_var_1233 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1233, obsv_ds_bases_size__1233, obsv_ds_size__1233);
  int32_t memop_var_1234;
  memop_var_1234 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1234, obsv_ds_bases_size__1234, obsv_ds_size__1234);
  int32_t memop_var_1235;
  memop_var_1235 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1235, obsv_ds_bases_size__1235, obsv_ds_size__1235);
  int32_t memop_var_1236;
  memop_var_1236 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1236, obsv_ds_bases_size__1236, obsv_ds_size__1236);
  int32_t memop_var_1237;
  memop_var_1237 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1237, obsv_ds_bases_size__1237, obsv_ds_size__1237);
  int32_t memop_var_1238;
  memop_var_1238 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1238, obsv_ds_bases_size__1238, obsv_ds_size__1238);
  int32_t memop_var_1239;
  memop_var_1239 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1239, obsv_ds_bases_size__1239, obsv_ds_size__1239);
  int32_t memop_var_1240;
  memop_var_1240 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1240, obsv_ds_bases_size__1240, obsv_ds_size__1240);
  int32_t memop_var_1241;
  memop_var_1241 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1241, obsv_ds_bases_size__1241, obsv_ds_size__1241);
  int32_t memop_var_1242;
  memop_var_1242 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1242, obsv_ds_bases_size__1242, obsv_ds_size__1242);
  int32_t memop_var_1243;
  memop_var_1243 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1243, obsv_ds_bases_size__1243, obsv_ds_size__1243);
  int32_t memop_var_1244;
  memop_var_1244 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1244, obsv_ds_bases_size__1244, obsv_ds_size__1244);
  int32_t memop_var_1245;
  memop_var_1245 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1245, obsv_ds_bases_size__1245, obsv_ds_size__1245);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1233 ^ (memop_var_1234 >> 16)) ^ (memop_var_1235 << 16)) ^ (memop_var_1236 >> 16)) ^ (memop_var_1237 << 16)) ^ (memop_var_1238 >> 24)) ^ (memop_var_1239 << 8)) ^ (memop_var_1240 >> 8)) ^ (memop_var_1241 << 24)) ^ (memop_var_1242 >> 16)) ^ (memop_var_1243 << 16)) ^ (memop_var_1244 >> 24)) ^ (memop_var_1245 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1246, obsv_ds_bases_size__1246, obsv_ds_size__1246);
  int32_t memop_var_1247;
  memop_var_1247 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1247, obsv_ds_bases_size__1247, obsv_ds_size__1247);
  int32_t memop_var_1248;
  memop_var_1248 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1248, obsv_ds_bases_size__1248, obsv_ds_size__1248);
  int32_t memop_var_1249;
  memop_var_1249 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1249, obsv_ds_bases_size__1249, obsv_ds_size__1249);
  int32_t memop_var_1250;
  memop_var_1250 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1250, obsv_ds_bases_size__1250, obsv_ds_size__1250);
  int32_t memop_var_1251;
  memop_var_1251 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1251, obsv_ds_bases_size__1251, obsv_ds_size__1251);
  int32_t memop_var_1252;
  memop_var_1252 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1252, obsv_ds_bases_size__1252, obsv_ds_size__1252);
  int32_t memop_var_1253;
  memop_var_1253 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1253, obsv_ds_bases_size__1253, obsv_ds_size__1253);
  int32_t memop_var_1254;
  memop_var_1254 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1254, obsv_ds_bases_size__1254, obsv_ds_size__1254);
  int32_t memop_var_1255;
  memop_var_1255 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1255, obsv_ds_bases_size__1255, obsv_ds_size__1255);
  int32_t memop_var_1256;
  memop_var_1256 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1256, obsv_ds_bases_size__1256, obsv_ds_size__1256);
  int32_t memop_var_1257;
  memop_var_1257 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1257, obsv_ds_bases_size__1257, obsv_ds_size__1257);
  int32_t memop_var_1258;
  memop_var_1258 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1258, obsv_ds_bases_size__1258, obsv_ds_size__1258);
  int32_t memop_var_1259;
  memop_var_1259 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1259, obsv_ds_bases_size__1259, obsv_ds_size__1259);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1247 ^ (memop_var_1248 >> 16)) ^ (memop_var_1249 << 16)) ^ (memop_var_1250 >> 16)) ^ (memop_var_1251 << 16)) ^ (memop_var_1252 >> 24)) ^ (memop_var_1253 << 8)) ^ (memop_var_1254 >> 8)) ^ (memop_var_1255 << 24)) ^ (memop_var_1256 >> 16)) ^ (memop_var_1257 << 16)) ^ (memop_var_1258 >> 24)) ^ (memop_var_1259 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1260, obsv_ds_bases_size__1260, obsv_ds_size__1260);
  int32_t memop_var_1261;
  memop_var_1261 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1261, obsv_ds_bases_size__1261, obsv_ds_size__1261);
  uint32_t_secure_store_single((unsigned int) memop_var_1261, (unsigned int *) (&theta_a[0]), obsv_ds__1262, obsv_ds_bases_size__1262, obsv_ds_size__1262);
  int32_t memop_var_1263;
  memop_var_1263 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1263, obsv_ds_bases_size__1263, obsv_ds_size__1263);
  uint32_t_secure_store_single((unsigned int) memop_var_1263, (unsigned int *) (&theta_a[1]), obsv_ds__1264, obsv_ds_bases_size__1264, obsv_ds_size__1264);
  int32_t memop_var_1265;
  memop_var_1265 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1265, obsv_ds_bases_size__1265, obsv_ds_size__1265);
  uint32_t_secure_store_single((unsigned int) memop_var_1265, (unsigned int *) (&theta_a[2]), obsv_ds__1266, obsv_ds_bases_size__1266, obsv_ds_size__1266);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1267;
  memop_var_1267 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1267, obsv_ds_bases_size__1267, obsv_ds_size__1267);
  int32_t memop_var_1268;
  memop_var_1268 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1268, obsv_ds_bases_size__1268, obsv_ds_size__1268);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1267 >> 10) ^ (memop_var_1268 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1269, obsv_ds_bases_size__1269, obsv_ds_size__1269);
  int32_t memop_var_1270;
  memop_var_1270 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1270, obsv_ds_bases_size__1270, obsv_ds_size__1270);
  int32_t memop_var_1271;
  memop_var_1271 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1271, obsv_ds_bases_size__1271, obsv_ds_size__1271);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1270 << 1) ^ (memop_var_1271 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1272, obsv_ds_bases_size__1272, obsv_ds_size__1272);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1273;
  memop_var_1273 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1273, obsv_ds_bases_size__1273, obsv_ds_size__1273);
  int32_t memop_var_1274;
  memop_var_1274 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1274, obsv_ds_bases_size__1274, obsv_ds_size__1274);
  int32_t memop_var_1275;
  memop_var_1275 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1275, obsv_ds_bases_size__1275, obsv_ds_size__1275);
  uint32_t_secure_store_single((unsigned int) (memop_var_1273 ^ (memop_var_1274 | (~memop_var_1275))), (unsigned int *) gamma_b, obsv_ds__1276, obsv_ds_bases_size__1276, obsv_ds_size__1276);
  int32_t memop_var_1277;
  memop_var_1277 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1277, obsv_ds_bases_size__1277, obsv_ds_size__1277);
  int32_t memop_var_1278;
  memop_var_1278 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1278, obsv_ds_bases_size__1278, obsv_ds_size__1278);
  int32_t memop_var_1279;
  memop_var_1279 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1279, obsv_ds_bases_size__1279, obsv_ds_size__1279);
  uint32_t_secure_store_single((unsigned int) (memop_var_1277 ^ (memop_var_1278 | (~memop_var_1279))), (unsigned int *) (&gamma_b[1]), obsv_ds__1280, obsv_ds_bases_size__1280, obsv_ds_size__1280);
  int32_t memop_var_1281;
  memop_var_1281 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1281, obsv_ds_bases_size__1281, obsv_ds_size__1281);
  int32_t memop_var_1282;
  memop_var_1282 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1282, obsv_ds_bases_size__1282, obsv_ds_size__1282);
  int32_t memop_var_1283;
  memop_var_1283 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1283, obsv_ds_bases_size__1283, obsv_ds_size__1283);
  uint32_t_secure_store_single((unsigned int) (memop_var_1281 ^ (memop_var_1282 | (~memop_var_1283))), (unsigned int *) (&gamma_b[2]), obsv_ds__1284, obsv_ds_bases_size__1284, obsv_ds_size__1284);
  int32_t memop_var_1285;
  memop_var_1285 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1285, obsv_ds_bases_size__1285, obsv_ds_size__1285);
  uint32_t_secure_store_single((unsigned int) memop_var_1285, (unsigned int *) (&gamma_a[0]), obsv_ds__1286, obsv_ds_bases_size__1286, obsv_ds_size__1286);
  int32_t memop_var_1287;
  memop_var_1287 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1287, obsv_ds_bases_size__1287, obsv_ds_size__1287);
  uint32_t_secure_store_single((unsigned int) memop_var_1287, (unsigned int *) (&gamma_a[1]), obsv_ds__1288, obsv_ds_bases_size__1288, obsv_ds_size__1288);
  int32_t memop_var_1289;
  memop_var_1289 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1289, obsv_ds_bases_size__1289, obsv_ds_size__1289);
  uint32_t_secure_store_single((unsigned int) memop_var_1289, (unsigned int *) (&gamma_a[2]), obsv_ds__1290, obsv_ds_bases_size__1290, obsv_ds_size__1290);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1291;
  memop_var_1291 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1291, obsv_ds_bases_size__1291, obsv_ds_size__1291);
  int32_t memop_var_1292;
  memop_var_1292 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1292, obsv_ds_bases_size__1292, obsv_ds_size__1292);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1291 << 1) ^ (memop_var_1292 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1293, obsv_ds_bases_size__1293, obsv_ds_size__1293);
  int32_t memop_var_1294;
  memop_var_1294 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1294, obsv_ds_bases_size__1294, obsv_ds_size__1294);
  int32_t memop_var_1295;
  memop_var_1295 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1295, obsv_ds_bases_size__1295, obsv_ds_size__1295);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1294 >> 10) ^ (memop_var_1295 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1296, obsv_ds_bases_size__1296, obsv_ds_size__1296);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1297;
  memop_var_1297 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1297, obsv_ds_bases_size__1297, obsv_ds_size__1297);
  uint32_t memop_var_1298;
  memop_var_1298 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1298, obsv_ds_bases_size__1298, obsv_ds_size__1298);
  uint32_t memop_var_1299;
  memop_var_1299 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1299, obsv_ds_bases_size__1299, obsv_ds_size__1299);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1297) ^ memop_var_1298) ^ (memop_var_1299 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1300, obsv_ds_bases_size__1300, obsv_ds_size__1300);
  int32_t memop_var_1301;
  memop_var_1301 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1301, obsv_ds_bases_size__1301, obsv_ds_size__1301);
  uint32_t memop_var_1302;
  memop_var_1302 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1302, obsv_ds_bases_size__1302, obsv_ds_size__1302);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1301) ^ memop_var_1302)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1303, obsv_ds_bases_size__1303, obsv_ds_size__1303);
  int32_t memop_var_1304;
  memop_var_1304 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1304, obsv_ds_bases_size__1304, obsv_ds_size__1304);
  uint32_t memop_var_1305;
  memop_var_1305 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1305, obsv_ds_bases_size__1305, obsv_ds_size__1305);
  uint32_t memop_var_1306;
  memop_var_1306 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1306, obsv_ds_bases_size__1306, obsv_ds_size__1306);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1304) ^ memop_var_1305) ^ memop_var_1306)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1307, obsv_ds_bases_size__1307, obsv_ds_size__1307);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1308;
  memop_var_1308 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1308, obsv_ds_bases_size__1308, obsv_ds_size__1308);
  int32_t memop_var_1309;
  memop_var_1309 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1309, obsv_ds_bases_size__1309, obsv_ds_size__1309);
  int32_t memop_var_1310;
  memop_var_1310 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1310, obsv_ds_bases_size__1310, obsv_ds_size__1310);
  int32_t memop_var_1311;
  memop_var_1311 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1311, obsv_ds_bases_size__1311, obsv_ds_size__1311);
  int32_t memop_var_1312;
  memop_var_1312 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1312, obsv_ds_bases_size__1312, obsv_ds_size__1312);
  int32_t memop_var_1313;
  memop_var_1313 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1313, obsv_ds_bases_size__1313, obsv_ds_size__1313);
  int32_t memop_var_1314;
  memop_var_1314 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1314, obsv_ds_bases_size__1314, obsv_ds_size__1314);
  int32_t memop_var_1315;
  memop_var_1315 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1315, obsv_ds_bases_size__1315, obsv_ds_size__1315);
  int32_t memop_var_1316;
  memop_var_1316 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1316, obsv_ds_bases_size__1316, obsv_ds_size__1316);
  int32_t memop_var_1317;
  memop_var_1317 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1317, obsv_ds_bases_size__1317, obsv_ds_size__1317);
  int32_t memop_var_1318;
  memop_var_1318 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1318, obsv_ds_bases_size__1318, obsv_ds_size__1318);
  int32_t memop_var_1319;
  memop_var_1319 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1319, obsv_ds_bases_size__1319, obsv_ds_size__1319);
  int32_t memop_var_1320;
  memop_var_1320 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1320, obsv_ds_bases_size__1320, obsv_ds_size__1320);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1308 ^ (memop_var_1309 >> 16)) ^ (memop_var_1310 << 16)) ^ (memop_var_1311 >> 16)) ^ (memop_var_1312 << 16)) ^ (memop_var_1313 >> 24)) ^ (memop_var_1314 << 8)) ^ (memop_var_1315 >> 8)) ^ (memop_var_1316 << 24)) ^ (memop_var_1317 >> 16)) ^ (memop_var_1318 << 16)) ^ (memop_var_1319 >> 24)) ^ (memop_var_1320 << 8)), (unsigned int *) theta_b, obsv_ds__1321, obsv_ds_bases_size__1321, obsv_ds_size__1321);
  int32_t memop_var_1322;
  memop_var_1322 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1322, obsv_ds_bases_size__1322, obsv_ds_size__1322);
  int32_t memop_var_1323;
  memop_var_1323 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1323, obsv_ds_bases_size__1323, obsv_ds_size__1323);
  int32_t memop_var_1324;
  memop_var_1324 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1324, obsv_ds_bases_size__1324, obsv_ds_size__1324);
  int32_t memop_var_1325;
  memop_var_1325 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1325, obsv_ds_bases_size__1325, obsv_ds_size__1325);
  int32_t memop_var_1326;
  memop_var_1326 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1326, obsv_ds_bases_size__1326, obsv_ds_size__1326);
  int32_t memop_var_1327;
  memop_var_1327 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1327, obsv_ds_bases_size__1327, obsv_ds_size__1327);
  int32_t memop_var_1328;
  memop_var_1328 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1328, obsv_ds_bases_size__1328, obsv_ds_size__1328);
  int32_t memop_var_1329;
  memop_var_1329 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1329, obsv_ds_bases_size__1329, obsv_ds_size__1329);
  int32_t memop_var_1330;
  memop_var_1330 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1330, obsv_ds_bases_size__1330, obsv_ds_size__1330);
  int32_t memop_var_1331;
  memop_var_1331 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1331, obsv_ds_bases_size__1331, obsv_ds_size__1331);
  int32_t memop_var_1332;
  memop_var_1332 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1332, obsv_ds_bases_size__1332, obsv_ds_size__1332);
  int32_t memop_var_1333;
  memop_var_1333 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1333, obsv_ds_bases_size__1333, obsv_ds_size__1333);
  int32_t memop_var_1334;
  memop_var_1334 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1334, obsv_ds_bases_size__1334, obsv_ds_size__1334);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1322 ^ (memop_var_1323 >> 16)) ^ (memop_var_1324 << 16)) ^ (memop_var_1325 >> 16)) ^ (memop_var_1326 << 16)) ^ (memop_var_1327 >> 24)) ^ (memop_var_1328 << 8)) ^ (memop_var_1329 >> 8)) ^ (memop_var_1330 << 24)) ^ (memop_var_1331 >> 16)) ^ (memop_var_1332 << 16)) ^ (memop_var_1333 >> 24)) ^ (memop_var_1334 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1335, obsv_ds_bases_size__1335, obsv_ds_size__1335);
  int32_t memop_var_1336;
  memop_var_1336 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1336, obsv_ds_bases_size__1336, obsv_ds_size__1336);
  int32_t memop_var_1337;
  memop_var_1337 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1337, obsv_ds_bases_size__1337, obsv_ds_size__1337);
  int32_t memop_var_1338;
  memop_var_1338 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1338, obsv_ds_bases_size__1338, obsv_ds_size__1338);
  int32_t memop_var_1339;
  memop_var_1339 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1339, obsv_ds_bases_size__1339, obsv_ds_size__1339);
  int32_t memop_var_1340;
  memop_var_1340 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1340, obsv_ds_bases_size__1340, obsv_ds_size__1340);
  int32_t memop_var_1341;
  memop_var_1341 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1341, obsv_ds_bases_size__1341, obsv_ds_size__1341);
  int32_t memop_var_1342;
  memop_var_1342 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1342, obsv_ds_bases_size__1342, obsv_ds_size__1342);
  int32_t memop_var_1343;
  memop_var_1343 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1343, obsv_ds_bases_size__1343, obsv_ds_size__1343);
  int32_t memop_var_1344;
  memop_var_1344 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1344, obsv_ds_bases_size__1344, obsv_ds_size__1344);
  int32_t memop_var_1345;
  memop_var_1345 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1345, obsv_ds_bases_size__1345, obsv_ds_size__1345);
  int32_t memop_var_1346;
  memop_var_1346 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1346, obsv_ds_bases_size__1346, obsv_ds_size__1346);
  int32_t memop_var_1347;
  memop_var_1347 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1347, obsv_ds_bases_size__1347, obsv_ds_size__1347);
  int32_t memop_var_1348;
  memop_var_1348 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1348, obsv_ds_bases_size__1348, obsv_ds_size__1348);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1336 ^ (memop_var_1337 >> 16)) ^ (memop_var_1338 << 16)) ^ (memop_var_1339 >> 16)) ^ (memop_var_1340 << 16)) ^ (memop_var_1341 >> 24)) ^ (memop_var_1342 << 8)) ^ (memop_var_1343 >> 8)) ^ (memop_var_1344 << 24)) ^ (memop_var_1345 >> 16)) ^ (memop_var_1346 << 16)) ^ (memop_var_1347 >> 24)) ^ (memop_var_1348 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1349, obsv_ds_bases_size__1349, obsv_ds_size__1349);
  int32_t memop_var_1350;
  memop_var_1350 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1350, obsv_ds_bases_size__1350, obsv_ds_size__1350);
  uint32_t_secure_store_single((unsigned int) memop_var_1350, (unsigned int *) (&theta_a[0]), obsv_ds__1351, obsv_ds_bases_size__1351, obsv_ds_size__1351);
  int32_t memop_var_1352;
  memop_var_1352 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1352, obsv_ds_bases_size__1352, obsv_ds_size__1352);
  uint32_t_secure_store_single((unsigned int) memop_var_1352, (unsigned int *) (&theta_a[1]), obsv_ds__1353, obsv_ds_bases_size__1353, obsv_ds_size__1353);
  int32_t memop_var_1354;
  memop_var_1354 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1354, obsv_ds_bases_size__1354, obsv_ds_size__1354);
  uint32_t_secure_store_single((unsigned int) memop_var_1354, (unsigned int *) (&theta_a[2]), obsv_ds__1355, obsv_ds_bases_size__1355, obsv_ds_size__1355);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1356;
  memop_var_1356 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1356, obsv_ds_bases_size__1356, obsv_ds_size__1356);
  int32_t memop_var_1357;
  memop_var_1357 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1357, obsv_ds_bases_size__1357, obsv_ds_size__1357);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1356 >> 10) ^ (memop_var_1357 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1358, obsv_ds_bases_size__1358, obsv_ds_size__1358);
  int32_t memop_var_1359;
  memop_var_1359 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1359, obsv_ds_bases_size__1359, obsv_ds_size__1359);
  int32_t memop_var_1360;
  memop_var_1360 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1360, obsv_ds_bases_size__1360, obsv_ds_size__1360);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1359 << 1) ^ (memop_var_1360 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1361, obsv_ds_bases_size__1361, obsv_ds_size__1361);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1362;
  memop_var_1362 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1362, obsv_ds_bases_size__1362, obsv_ds_size__1362);
  int32_t memop_var_1363;
  memop_var_1363 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1363, obsv_ds_bases_size__1363, obsv_ds_size__1363);
  int32_t memop_var_1364;
  memop_var_1364 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1364, obsv_ds_bases_size__1364, obsv_ds_size__1364);
  uint32_t_secure_store_single((unsigned int) (memop_var_1362 ^ (memop_var_1363 | (~memop_var_1364))), (unsigned int *) gamma_b, obsv_ds__1365, obsv_ds_bases_size__1365, obsv_ds_size__1365);
  int32_t memop_var_1366;
  memop_var_1366 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1366, obsv_ds_bases_size__1366, obsv_ds_size__1366);
  int32_t memop_var_1367;
  memop_var_1367 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1367, obsv_ds_bases_size__1367, obsv_ds_size__1367);
  int32_t memop_var_1368;
  memop_var_1368 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1368, obsv_ds_bases_size__1368, obsv_ds_size__1368);
  uint32_t_secure_store_single((unsigned int) (memop_var_1366 ^ (memop_var_1367 | (~memop_var_1368))), (unsigned int *) (&gamma_b[1]), obsv_ds__1369, obsv_ds_bases_size__1369, obsv_ds_size__1369);
  int32_t memop_var_1370;
  memop_var_1370 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1370, obsv_ds_bases_size__1370, obsv_ds_size__1370);
  int32_t memop_var_1371;
  memop_var_1371 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1371, obsv_ds_bases_size__1371, obsv_ds_size__1371);
  int32_t memop_var_1372;
  memop_var_1372 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1372, obsv_ds_bases_size__1372, obsv_ds_size__1372);
  uint32_t_secure_store_single((unsigned int) (memop_var_1370 ^ (memop_var_1371 | (~memop_var_1372))), (unsigned int *) (&gamma_b[2]), obsv_ds__1373, obsv_ds_bases_size__1373, obsv_ds_size__1373);
  int32_t memop_var_1374;
  memop_var_1374 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1374, obsv_ds_bases_size__1374, obsv_ds_size__1374);
  uint32_t_secure_store_single((unsigned int) memop_var_1374, (unsigned int *) (&gamma_a[0]), obsv_ds__1375, obsv_ds_bases_size__1375, obsv_ds_size__1375);
  int32_t memop_var_1376;
  memop_var_1376 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1376, obsv_ds_bases_size__1376, obsv_ds_size__1376);
  uint32_t_secure_store_single((unsigned int) memop_var_1376, (unsigned int *) (&gamma_a[1]), obsv_ds__1377, obsv_ds_bases_size__1377, obsv_ds_size__1377);
  int32_t memop_var_1378;
  memop_var_1378 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1378, obsv_ds_bases_size__1378, obsv_ds_size__1378);
  uint32_t_secure_store_single((unsigned int) memop_var_1378, (unsigned int *) (&gamma_a[2]), obsv_ds__1379, obsv_ds_bases_size__1379, obsv_ds_size__1379);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1380;
  memop_var_1380 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1380, obsv_ds_bases_size__1380, obsv_ds_size__1380);
  int32_t memop_var_1381;
  memop_var_1381 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1381, obsv_ds_bases_size__1381, obsv_ds_size__1381);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1380 << 1) ^ (memop_var_1381 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1382, obsv_ds_bases_size__1382, obsv_ds_size__1382);
  int32_t memop_var_1383;
  memop_var_1383 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1383, obsv_ds_bases_size__1383, obsv_ds_size__1383);
  int32_t memop_var_1384;
  memop_var_1384 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1384, obsv_ds_bases_size__1384, obsv_ds_size__1384);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1383 >> 10) ^ (memop_var_1384 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1385, obsv_ds_bases_size__1385, obsv_ds_size__1385);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1386;
  memop_var_1386 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1386, obsv_ds_bases_size__1386, obsv_ds_size__1386);
  uint32_t memop_var_1387;
  memop_var_1387 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1387, obsv_ds_bases_size__1387, obsv_ds_size__1387);
  uint32_t memop_var_1388;
  memop_var_1388 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1388, obsv_ds_bases_size__1388, obsv_ds_size__1388);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1386) ^ memop_var_1387) ^ (memop_var_1388 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1389, obsv_ds_bases_size__1389, obsv_ds_size__1389);
  int32_t memop_var_1390;
  memop_var_1390 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1390, obsv_ds_bases_size__1390, obsv_ds_size__1390);
  uint32_t memop_var_1391;
  memop_var_1391 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1391, obsv_ds_bases_size__1391, obsv_ds_size__1391);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1390) ^ memop_var_1391)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1392, obsv_ds_bases_size__1392, obsv_ds_size__1392);
  int32_t memop_var_1393;
  memop_var_1393 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1393, obsv_ds_bases_size__1393, obsv_ds_size__1393);
  uint32_t memop_var_1394;
  memop_var_1394 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1394, obsv_ds_bases_size__1394, obsv_ds_size__1394);
  uint32_t memop_var_1395;
  memop_var_1395 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1395, obsv_ds_bases_size__1395, obsv_ds_size__1395);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1393) ^ memop_var_1394) ^ memop_var_1395)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1396, obsv_ds_bases_size__1396, obsv_ds_size__1396);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1397;
  memop_var_1397 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1397, obsv_ds_bases_size__1397, obsv_ds_size__1397);
  int32_t memop_var_1398;
  memop_var_1398 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1398, obsv_ds_bases_size__1398, obsv_ds_size__1398);
  int32_t memop_var_1399;
  memop_var_1399 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1399, obsv_ds_bases_size__1399, obsv_ds_size__1399);
  int32_t memop_var_1400;
  memop_var_1400 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1400, obsv_ds_bases_size__1400, obsv_ds_size__1400);
  int32_t memop_var_1401;
  memop_var_1401 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1401, obsv_ds_bases_size__1401, obsv_ds_size__1401);
  int32_t memop_var_1402;
  memop_var_1402 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1402, obsv_ds_bases_size__1402, obsv_ds_size__1402);
  int32_t memop_var_1403;
  memop_var_1403 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1403, obsv_ds_bases_size__1403, obsv_ds_size__1403);
  int32_t memop_var_1404;
  memop_var_1404 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1404, obsv_ds_bases_size__1404, obsv_ds_size__1404);
  int32_t memop_var_1405;
  memop_var_1405 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1405, obsv_ds_bases_size__1405, obsv_ds_size__1405);
  int32_t memop_var_1406;
  memop_var_1406 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1406, obsv_ds_bases_size__1406, obsv_ds_size__1406);
  int32_t memop_var_1407;
  memop_var_1407 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1407, obsv_ds_bases_size__1407, obsv_ds_size__1407);
  int32_t memop_var_1408;
  memop_var_1408 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1408, obsv_ds_bases_size__1408, obsv_ds_size__1408);
  int32_t memop_var_1409;
  memop_var_1409 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1409, obsv_ds_bases_size__1409, obsv_ds_size__1409);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1397 ^ (memop_var_1398 >> 16)) ^ (memop_var_1399 << 16)) ^ (memop_var_1400 >> 16)) ^ (memop_var_1401 << 16)) ^ (memop_var_1402 >> 24)) ^ (memop_var_1403 << 8)) ^ (memop_var_1404 >> 8)) ^ (memop_var_1405 << 24)) ^ (memop_var_1406 >> 16)) ^ (memop_var_1407 << 16)) ^ (memop_var_1408 >> 24)) ^ (memop_var_1409 << 8)), (unsigned int *) theta_b, obsv_ds__1410, obsv_ds_bases_size__1410, obsv_ds_size__1410);
  int32_t memop_var_1411;
  memop_var_1411 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1411, obsv_ds_bases_size__1411, obsv_ds_size__1411);
  int32_t memop_var_1412;
  memop_var_1412 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1412, obsv_ds_bases_size__1412, obsv_ds_size__1412);
  int32_t memop_var_1413;
  memop_var_1413 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1413, obsv_ds_bases_size__1413, obsv_ds_size__1413);
  int32_t memop_var_1414;
  memop_var_1414 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1414, obsv_ds_bases_size__1414, obsv_ds_size__1414);
  int32_t memop_var_1415;
  memop_var_1415 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1415, obsv_ds_bases_size__1415, obsv_ds_size__1415);
  int32_t memop_var_1416;
  memop_var_1416 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1416, obsv_ds_bases_size__1416, obsv_ds_size__1416);
  int32_t memop_var_1417;
  memop_var_1417 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1417, obsv_ds_bases_size__1417, obsv_ds_size__1417);
  int32_t memop_var_1418;
  memop_var_1418 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1418, obsv_ds_bases_size__1418, obsv_ds_size__1418);
  int32_t memop_var_1419;
  memop_var_1419 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1419, obsv_ds_bases_size__1419, obsv_ds_size__1419);
  int32_t memop_var_1420;
  memop_var_1420 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1420, obsv_ds_bases_size__1420, obsv_ds_size__1420);
  int32_t memop_var_1421;
  memop_var_1421 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1421, obsv_ds_bases_size__1421, obsv_ds_size__1421);
  int32_t memop_var_1422;
  memop_var_1422 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1422, obsv_ds_bases_size__1422, obsv_ds_size__1422);
  int32_t memop_var_1423;
  memop_var_1423 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1423, obsv_ds_bases_size__1423, obsv_ds_size__1423);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1411 ^ (memop_var_1412 >> 16)) ^ (memop_var_1413 << 16)) ^ (memop_var_1414 >> 16)) ^ (memop_var_1415 << 16)) ^ (memop_var_1416 >> 24)) ^ (memop_var_1417 << 8)) ^ (memop_var_1418 >> 8)) ^ (memop_var_1419 << 24)) ^ (memop_var_1420 >> 16)) ^ (memop_var_1421 << 16)) ^ (memop_var_1422 >> 24)) ^ (memop_var_1423 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1424, obsv_ds_bases_size__1424, obsv_ds_size__1424);
  int32_t memop_var_1425;
  memop_var_1425 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1425, obsv_ds_bases_size__1425, obsv_ds_size__1425);
  int32_t memop_var_1426;
  memop_var_1426 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1426, obsv_ds_bases_size__1426, obsv_ds_size__1426);
  int32_t memop_var_1427;
  memop_var_1427 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1427, obsv_ds_bases_size__1427, obsv_ds_size__1427);
  int32_t memop_var_1428;
  memop_var_1428 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1428, obsv_ds_bases_size__1428, obsv_ds_size__1428);
  int32_t memop_var_1429;
  memop_var_1429 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1429, obsv_ds_bases_size__1429, obsv_ds_size__1429);
  int32_t memop_var_1430;
  memop_var_1430 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1430, obsv_ds_bases_size__1430, obsv_ds_size__1430);
  int32_t memop_var_1431;
  memop_var_1431 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1431, obsv_ds_bases_size__1431, obsv_ds_size__1431);
  int32_t memop_var_1432;
  memop_var_1432 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1432, obsv_ds_bases_size__1432, obsv_ds_size__1432);
  int32_t memop_var_1433;
  memop_var_1433 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1433, obsv_ds_bases_size__1433, obsv_ds_size__1433);
  int32_t memop_var_1434;
  memop_var_1434 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1434, obsv_ds_bases_size__1434, obsv_ds_size__1434);
  int32_t memop_var_1435;
  memop_var_1435 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1435, obsv_ds_bases_size__1435, obsv_ds_size__1435);
  int32_t memop_var_1436;
  memop_var_1436 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1436, obsv_ds_bases_size__1436, obsv_ds_size__1436);
  int32_t memop_var_1437;
  memop_var_1437 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1437, obsv_ds_bases_size__1437, obsv_ds_size__1437);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1425 ^ (memop_var_1426 >> 16)) ^ (memop_var_1427 << 16)) ^ (memop_var_1428 >> 16)) ^ (memop_var_1429 << 16)) ^ (memop_var_1430 >> 24)) ^ (memop_var_1431 << 8)) ^ (memop_var_1432 >> 8)) ^ (memop_var_1433 << 24)) ^ (memop_var_1434 >> 16)) ^ (memop_var_1435 << 16)) ^ (memop_var_1436 >> 24)) ^ (memop_var_1437 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1438, obsv_ds_bases_size__1438, obsv_ds_size__1438);
  int32_t memop_var_1439;
  memop_var_1439 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1439, obsv_ds_bases_size__1439, obsv_ds_size__1439);
  uint32_t_secure_store_single((unsigned int) memop_var_1439, (unsigned int *) (&theta_a[0]), obsv_ds__1440, obsv_ds_bases_size__1440, obsv_ds_size__1440);
  int32_t memop_var_1441;
  memop_var_1441 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1441, obsv_ds_bases_size__1441, obsv_ds_size__1441);
  uint32_t_secure_store_single((unsigned int) memop_var_1441, (unsigned int *) (&theta_a[1]), obsv_ds__1442, obsv_ds_bases_size__1442, obsv_ds_size__1442);
  int32_t memop_var_1443;
  memop_var_1443 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1443, obsv_ds_bases_size__1443, obsv_ds_size__1443);
  uint32_t_secure_store_single((unsigned int) memop_var_1443, (unsigned int *) (&theta_a[2]), obsv_ds__1444, obsv_ds_bases_size__1444, obsv_ds_size__1444);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1445;
  memop_var_1445 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1445, obsv_ds_bases_size__1445, obsv_ds_size__1445);
  int32_t memop_var_1446;
  memop_var_1446 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1446, obsv_ds_bases_size__1446, obsv_ds_size__1446);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1445 >> 10) ^ (memop_var_1446 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1447, obsv_ds_bases_size__1447, obsv_ds_size__1447);
  int32_t memop_var_1448;
  memop_var_1448 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1448, obsv_ds_bases_size__1448, obsv_ds_size__1448);
  int32_t memop_var_1449;
  memop_var_1449 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1449, obsv_ds_bases_size__1449, obsv_ds_size__1449);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1448 << 1) ^ (memop_var_1449 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1450, obsv_ds_bases_size__1450, obsv_ds_size__1450);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1451;
  memop_var_1451 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1451, obsv_ds_bases_size__1451, obsv_ds_size__1451);
  int32_t memop_var_1452;
  memop_var_1452 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1452, obsv_ds_bases_size__1452, obsv_ds_size__1452);
  int32_t memop_var_1453;
  memop_var_1453 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1453, obsv_ds_bases_size__1453, obsv_ds_size__1453);
  uint32_t_secure_store_single((unsigned int) (memop_var_1451 ^ (memop_var_1452 | (~memop_var_1453))), (unsigned int *) gamma_b, obsv_ds__1454, obsv_ds_bases_size__1454, obsv_ds_size__1454);
  int32_t memop_var_1455;
  memop_var_1455 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1455, obsv_ds_bases_size__1455, obsv_ds_size__1455);
  int32_t memop_var_1456;
  memop_var_1456 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1456, obsv_ds_bases_size__1456, obsv_ds_size__1456);
  int32_t memop_var_1457;
  memop_var_1457 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1457, obsv_ds_bases_size__1457, obsv_ds_size__1457);
  uint32_t_secure_store_single((unsigned int) (memop_var_1455 ^ (memop_var_1456 | (~memop_var_1457))), (unsigned int *) (&gamma_b[1]), obsv_ds__1458, obsv_ds_bases_size__1458, obsv_ds_size__1458);
  int32_t memop_var_1459;
  memop_var_1459 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1459, obsv_ds_bases_size__1459, obsv_ds_size__1459);
  int32_t memop_var_1460;
  memop_var_1460 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1460, obsv_ds_bases_size__1460, obsv_ds_size__1460);
  int32_t memop_var_1461;
  memop_var_1461 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1461, obsv_ds_bases_size__1461, obsv_ds_size__1461);
  uint32_t_secure_store_single((unsigned int) (memop_var_1459 ^ (memop_var_1460 | (~memop_var_1461))), (unsigned int *) (&gamma_b[2]), obsv_ds__1462, obsv_ds_bases_size__1462, obsv_ds_size__1462);
  int32_t memop_var_1463;
  memop_var_1463 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1463, obsv_ds_bases_size__1463, obsv_ds_size__1463);
  uint32_t_secure_store_single((unsigned int) memop_var_1463, (unsigned int *) (&gamma_a[0]), obsv_ds__1464, obsv_ds_bases_size__1464, obsv_ds_size__1464);
  int32_t memop_var_1465;
  memop_var_1465 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1465, obsv_ds_bases_size__1465, obsv_ds_size__1465);
  uint32_t_secure_store_single((unsigned int) memop_var_1465, (unsigned int *) (&gamma_a[1]), obsv_ds__1466, obsv_ds_bases_size__1466, obsv_ds_size__1466);
  int32_t memop_var_1467;
  memop_var_1467 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1467, obsv_ds_bases_size__1467, obsv_ds_size__1467);
  uint32_t_secure_store_single((unsigned int) memop_var_1467, (unsigned int *) (&gamma_a[2]), obsv_ds__1468, obsv_ds_bases_size__1468, obsv_ds_size__1468);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1469;
  memop_var_1469 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1469, obsv_ds_bases_size__1469, obsv_ds_size__1469);
  int32_t memop_var_1470;
  memop_var_1470 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1470, obsv_ds_bases_size__1470, obsv_ds_size__1470);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1469 << 1) ^ (memop_var_1470 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1471, obsv_ds_bases_size__1471, obsv_ds_size__1471);
  int32_t memop_var_1472;
  memop_var_1472 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1472, obsv_ds_bases_size__1472, obsv_ds_size__1472);
  int32_t memop_var_1473;
  memop_var_1473 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1473, obsv_ds_bases_size__1473, obsv_ds_size__1473);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1472 >> 10) ^ (memop_var_1473 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1474, obsv_ds_bases_size__1474, obsv_ds_size__1474);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1475;
  memop_var_1475 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1475, obsv_ds_bases_size__1475, obsv_ds_size__1475);
  uint32_t memop_var_1476;
  memop_var_1476 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1476, obsv_ds_bases_size__1476, obsv_ds_size__1476);
  uint32_t memop_var_1477;
  memop_var_1477 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1477, obsv_ds_bases_size__1477, obsv_ds_size__1477);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1475) ^ memop_var_1476) ^ (memop_var_1477 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1478, obsv_ds_bases_size__1478, obsv_ds_size__1478);
  int32_t memop_var_1479;
  memop_var_1479 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1479, obsv_ds_bases_size__1479, obsv_ds_size__1479);
  uint32_t memop_var_1480;
  memop_var_1480 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1480, obsv_ds_bases_size__1480, obsv_ds_size__1480);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1479) ^ memop_var_1480)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1481, obsv_ds_bases_size__1481, obsv_ds_size__1481);
  int32_t memop_var_1482;
  memop_var_1482 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1482, obsv_ds_bases_size__1482, obsv_ds_size__1482);
  uint32_t memop_var_1483;
  memop_var_1483 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1483, obsv_ds_bases_size__1483, obsv_ds_size__1483);
  uint32_t memop_var_1484;
  memop_var_1484 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1484, obsv_ds_bases_size__1484, obsv_ds_size__1484);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1482) ^ memop_var_1483) ^ memop_var_1484)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1485, obsv_ds_bases_size__1485, obsv_ds_size__1485);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1486;
  memop_var_1486 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1486, obsv_ds_bases_size__1486, obsv_ds_size__1486);
  int32_t memop_var_1487;
  memop_var_1487 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1487, obsv_ds_bases_size__1487, obsv_ds_size__1487);
  int32_t memop_var_1488;
  memop_var_1488 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1488, obsv_ds_bases_size__1488, obsv_ds_size__1488);
  int32_t memop_var_1489;
  memop_var_1489 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1489, obsv_ds_bases_size__1489, obsv_ds_size__1489);
  int32_t memop_var_1490;
  memop_var_1490 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1490, obsv_ds_bases_size__1490, obsv_ds_size__1490);
  int32_t memop_var_1491;
  memop_var_1491 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1491, obsv_ds_bases_size__1491, obsv_ds_size__1491);
  int32_t memop_var_1492;
  memop_var_1492 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1492, obsv_ds_bases_size__1492, obsv_ds_size__1492);
  int32_t memop_var_1493;
  memop_var_1493 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1493, obsv_ds_bases_size__1493, obsv_ds_size__1493);
  int32_t memop_var_1494;
  memop_var_1494 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1494, obsv_ds_bases_size__1494, obsv_ds_size__1494);
  int32_t memop_var_1495;
  memop_var_1495 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1495, obsv_ds_bases_size__1495, obsv_ds_size__1495);
  int32_t memop_var_1496;
  memop_var_1496 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1496, obsv_ds_bases_size__1496, obsv_ds_size__1496);
  int32_t memop_var_1497;
  memop_var_1497 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1497, obsv_ds_bases_size__1497, obsv_ds_size__1497);
  int32_t memop_var_1498;
  memop_var_1498 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1498, obsv_ds_bases_size__1498, obsv_ds_size__1498);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1486 ^ (memop_var_1487 >> 16)) ^ (memop_var_1488 << 16)) ^ (memop_var_1489 >> 16)) ^ (memop_var_1490 << 16)) ^ (memop_var_1491 >> 24)) ^ (memop_var_1492 << 8)) ^ (memop_var_1493 >> 8)) ^ (memop_var_1494 << 24)) ^ (memop_var_1495 >> 16)) ^ (memop_var_1496 << 16)) ^ (memop_var_1497 >> 24)) ^ (memop_var_1498 << 8)), (unsigned int *) theta_b, obsv_ds__1499, obsv_ds_bases_size__1499, obsv_ds_size__1499);
  int32_t memop_var_1500;
  memop_var_1500 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1500, obsv_ds_bases_size__1500, obsv_ds_size__1500);
  int32_t memop_var_1501;
  memop_var_1501 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1501, obsv_ds_bases_size__1501, obsv_ds_size__1501);
  int32_t memop_var_1502;
  memop_var_1502 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1502, obsv_ds_bases_size__1502, obsv_ds_size__1502);
  int32_t memop_var_1503;
  memop_var_1503 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1503, obsv_ds_bases_size__1503, obsv_ds_size__1503);
  int32_t memop_var_1504;
  memop_var_1504 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1504, obsv_ds_bases_size__1504, obsv_ds_size__1504);
  int32_t memop_var_1505;
  memop_var_1505 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1505, obsv_ds_bases_size__1505, obsv_ds_size__1505);
  int32_t memop_var_1506;
  memop_var_1506 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1506, obsv_ds_bases_size__1506, obsv_ds_size__1506);
  int32_t memop_var_1507;
  memop_var_1507 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1507, obsv_ds_bases_size__1507, obsv_ds_size__1507);
  int32_t memop_var_1508;
  memop_var_1508 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1508, obsv_ds_bases_size__1508, obsv_ds_size__1508);
  int32_t memop_var_1509;
  memop_var_1509 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1509, obsv_ds_bases_size__1509, obsv_ds_size__1509);
  int32_t memop_var_1510;
  memop_var_1510 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1510, obsv_ds_bases_size__1510, obsv_ds_size__1510);
  int32_t memop_var_1511;
  memop_var_1511 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1511, obsv_ds_bases_size__1511, obsv_ds_size__1511);
  int32_t memop_var_1512;
  memop_var_1512 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1512, obsv_ds_bases_size__1512, obsv_ds_size__1512);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1500 ^ (memop_var_1501 >> 16)) ^ (memop_var_1502 << 16)) ^ (memop_var_1503 >> 16)) ^ (memop_var_1504 << 16)) ^ (memop_var_1505 >> 24)) ^ (memop_var_1506 << 8)) ^ (memop_var_1507 >> 8)) ^ (memop_var_1508 << 24)) ^ (memop_var_1509 >> 16)) ^ (memop_var_1510 << 16)) ^ (memop_var_1511 >> 24)) ^ (memop_var_1512 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1513, obsv_ds_bases_size__1513, obsv_ds_size__1513);
  int32_t memop_var_1514;
  memop_var_1514 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1514, obsv_ds_bases_size__1514, obsv_ds_size__1514);
  int32_t memop_var_1515;
  memop_var_1515 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1515, obsv_ds_bases_size__1515, obsv_ds_size__1515);
  int32_t memop_var_1516;
  memop_var_1516 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1516, obsv_ds_bases_size__1516, obsv_ds_size__1516);
  int32_t memop_var_1517;
  memop_var_1517 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1517, obsv_ds_bases_size__1517, obsv_ds_size__1517);
  int32_t memop_var_1518;
  memop_var_1518 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1518, obsv_ds_bases_size__1518, obsv_ds_size__1518);
  int32_t memop_var_1519;
  memop_var_1519 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1519, obsv_ds_bases_size__1519, obsv_ds_size__1519);
  int32_t memop_var_1520;
  memop_var_1520 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1520, obsv_ds_bases_size__1520, obsv_ds_size__1520);
  int32_t memop_var_1521;
  memop_var_1521 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1521, obsv_ds_bases_size__1521, obsv_ds_size__1521);
  int32_t memop_var_1522;
  memop_var_1522 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1522, obsv_ds_bases_size__1522, obsv_ds_size__1522);
  int32_t memop_var_1523;
  memop_var_1523 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1523, obsv_ds_bases_size__1523, obsv_ds_size__1523);
  int32_t memop_var_1524;
  memop_var_1524 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1524, obsv_ds_bases_size__1524, obsv_ds_size__1524);
  int32_t memop_var_1525;
  memop_var_1525 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1525, obsv_ds_bases_size__1525, obsv_ds_size__1525);
  int32_t memop_var_1526;
  memop_var_1526 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1526, obsv_ds_bases_size__1526, obsv_ds_size__1526);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1514 ^ (memop_var_1515 >> 16)) ^ (memop_var_1516 << 16)) ^ (memop_var_1517 >> 16)) ^ (memop_var_1518 << 16)) ^ (memop_var_1519 >> 24)) ^ (memop_var_1520 << 8)) ^ (memop_var_1521 >> 8)) ^ (memop_var_1522 << 24)) ^ (memop_var_1523 >> 16)) ^ (memop_var_1524 << 16)) ^ (memop_var_1525 >> 24)) ^ (memop_var_1526 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1527, obsv_ds_bases_size__1527, obsv_ds_size__1527);
  int32_t memop_var_1528;
  memop_var_1528 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1528, obsv_ds_bases_size__1528, obsv_ds_size__1528);
  uint32_t_secure_store_single((unsigned int) memop_var_1528, (unsigned int *) (&theta_a[0]), obsv_ds__1529, obsv_ds_bases_size__1529, obsv_ds_size__1529);
  int32_t memop_var_1530;
  memop_var_1530 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1530, obsv_ds_bases_size__1530, obsv_ds_size__1530);
  uint32_t_secure_store_single((unsigned int) memop_var_1530, (unsigned int *) (&theta_a[1]), obsv_ds__1531, obsv_ds_bases_size__1531, obsv_ds_size__1531);
  int32_t memop_var_1532;
  memop_var_1532 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1532, obsv_ds_bases_size__1532, obsv_ds_size__1532);
  uint32_t_secure_store_single((unsigned int) memop_var_1532, (unsigned int *) (&theta_a[2]), obsv_ds__1533, obsv_ds_bases_size__1533, obsv_ds_size__1533);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1534;
  memop_var_1534 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1534, obsv_ds_bases_size__1534, obsv_ds_size__1534);
  int32_t memop_var_1535;
  memop_var_1535 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1535, obsv_ds_bases_size__1535, obsv_ds_size__1535);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1534 >> 10) ^ (memop_var_1535 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1536, obsv_ds_bases_size__1536, obsv_ds_size__1536);
  int32_t memop_var_1537;
  memop_var_1537 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1537, obsv_ds_bases_size__1537, obsv_ds_size__1537);
  int32_t memop_var_1538;
  memop_var_1538 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1538, obsv_ds_bases_size__1538, obsv_ds_size__1538);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1537 << 1) ^ (memop_var_1538 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1539, obsv_ds_bases_size__1539, obsv_ds_size__1539);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1540;
  memop_var_1540 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1540, obsv_ds_bases_size__1540, obsv_ds_size__1540);
  int32_t memop_var_1541;
  memop_var_1541 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1541, obsv_ds_bases_size__1541, obsv_ds_size__1541);
  int32_t memop_var_1542;
  memop_var_1542 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1542, obsv_ds_bases_size__1542, obsv_ds_size__1542);
  uint32_t_secure_store_single((unsigned int) (memop_var_1540 ^ (memop_var_1541 | (~memop_var_1542))), (unsigned int *) gamma_b, obsv_ds__1543, obsv_ds_bases_size__1543, obsv_ds_size__1543);
  int32_t memop_var_1544;
  memop_var_1544 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1544, obsv_ds_bases_size__1544, obsv_ds_size__1544);
  int32_t memop_var_1545;
  memop_var_1545 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1545, obsv_ds_bases_size__1545, obsv_ds_size__1545);
  int32_t memop_var_1546;
  memop_var_1546 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1546, obsv_ds_bases_size__1546, obsv_ds_size__1546);
  uint32_t_secure_store_single((unsigned int) (memop_var_1544 ^ (memop_var_1545 | (~memop_var_1546))), (unsigned int *) (&gamma_b[1]), obsv_ds__1547, obsv_ds_bases_size__1547, obsv_ds_size__1547);
  int32_t memop_var_1548;
  memop_var_1548 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1548, obsv_ds_bases_size__1548, obsv_ds_size__1548);
  int32_t memop_var_1549;
  memop_var_1549 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1549, obsv_ds_bases_size__1549, obsv_ds_size__1549);
  int32_t memop_var_1550;
  memop_var_1550 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1550, obsv_ds_bases_size__1550, obsv_ds_size__1550);
  uint32_t_secure_store_single((unsigned int) (memop_var_1548 ^ (memop_var_1549 | (~memop_var_1550))), (unsigned int *) (&gamma_b[2]), obsv_ds__1551, obsv_ds_bases_size__1551, obsv_ds_size__1551);
  int32_t memop_var_1552;
  memop_var_1552 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1552, obsv_ds_bases_size__1552, obsv_ds_size__1552);
  uint32_t_secure_store_single((unsigned int) memop_var_1552, (unsigned int *) (&gamma_a[0]), obsv_ds__1553, obsv_ds_bases_size__1553, obsv_ds_size__1553);
  int32_t memop_var_1554;
  memop_var_1554 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1554, obsv_ds_bases_size__1554, obsv_ds_size__1554);
  uint32_t_secure_store_single((unsigned int) memop_var_1554, (unsigned int *) (&gamma_a[1]), obsv_ds__1555, obsv_ds_bases_size__1555, obsv_ds_size__1555);
  int32_t memop_var_1556;
  memop_var_1556 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1556, obsv_ds_bases_size__1556, obsv_ds_size__1556);
  uint32_t_secure_store_single((unsigned int) memop_var_1556, (unsigned int *) (&gamma_a[2]), obsv_ds__1557, obsv_ds_bases_size__1557, obsv_ds_size__1557);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1558;
  memop_var_1558 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1558, obsv_ds_bases_size__1558, obsv_ds_size__1558);
  int32_t memop_var_1559;
  memop_var_1559 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1559, obsv_ds_bases_size__1559, obsv_ds_size__1559);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1558 << 1) ^ (memop_var_1559 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1560, obsv_ds_bases_size__1560, obsv_ds_size__1560);
  int32_t memop_var_1561;
  memop_var_1561 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1561, obsv_ds_bases_size__1561, obsv_ds_size__1561);
  int32_t memop_var_1562;
  memop_var_1562 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1562, obsv_ds_bases_size__1562, obsv_ds_size__1562);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1561 >> 10) ^ (memop_var_1562 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1563, obsv_ds_bases_size__1563, obsv_ds_size__1563);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1564;
  memop_var_1564 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1564, obsv_ds_bases_size__1564, obsv_ds_size__1564);
  uint32_t memop_var_1565;
  memop_var_1565 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1565, obsv_ds_bases_size__1565, obsv_ds_size__1565);
  uint32_t memop_var_1566;
  memop_var_1566 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1566, obsv_ds_bases_size__1566, obsv_ds_size__1566);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1564) ^ memop_var_1565) ^ (memop_var_1566 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1567, obsv_ds_bases_size__1567, obsv_ds_size__1567);
  int32_t memop_var_1568;
  memop_var_1568 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1568, obsv_ds_bases_size__1568, obsv_ds_size__1568);
  uint32_t memop_var_1569;
  memop_var_1569 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1569, obsv_ds_bases_size__1569, obsv_ds_size__1569);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1568) ^ memop_var_1569)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1570, obsv_ds_bases_size__1570, obsv_ds_size__1570);
  int32_t memop_var_1571;
  memop_var_1571 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1571, obsv_ds_bases_size__1571, obsv_ds_size__1571);
  uint32_t memop_var_1572;
  memop_var_1572 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1572, obsv_ds_bases_size__1572, obsv_ds_size__1572);
  uint32_t memop_var_1573;
  memop_var_1573 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1573, obsv_ds_bases_size__1573, obsv_ds_size__1573);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1571) ^ memop_var_1572) ^ memop_var_1573)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1574, obsv_ds_bases_size__1574, obsv_ds_size__1574);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1575;
  memop_var_1575 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1575, obsv_ds_bases_size__1575, obsv_ds_size__1575);
  int32_t memop_var_1576;
  memop_var_1576 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1576, obsv_ds_bases_size__1576, obsv_ds_size__1576);
  int32_t memop_var_1577;
  memop_var_1577 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1577, obsv_ds_bases_size__1577, obsv_ds_size__1577);
  int32_t memop_var_1578;
  memop_var_1578 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1578, obsv_ds_bases_size__1578, obsv_ds_size__1578);
  int32_t memop_var_1579;
  memop_var_1579 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1579, obsv_ds_bases_size__1579, obsv_ds_size__1579);
  int32_t memop_var_1580;
  memop_var_1580 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1580, obsv_ds_bases_size__1580, obsv_ds_size__1580);
  int32_t memop_var_1581;
  memop_var_1581 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1581, obsv_ds_bases_size__1581, obsv_ds_size__1581);
  int32_t memop_var_1582;
  memop_var_1582 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1582, obsv_ds_bases_size__1582, obsv_ds_size__1582);
  int32_t memop_var_1583;
  memop_var_1583 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1583, obsv_ds_bases_size__1583, obsv_ds_size__1583);
  int32_t memop_var_1584;
  memop_var_1584 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1584, obsv_ds_bases_size__1584, obsv_ds_size__1584);
  int32_t memop_var_1585;
  memop_var_1585 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1585, obsv_ds_bases_size__1585, obsv_ds_size__1585);
  int32_t memop_var_1586;
  memop_var_1586 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1586, obsv_ds_bases_size__1586, obsv_ds_size__1586);
  int32_t memop_var_1587;
  memop_var_1587 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1587, obsv_ds_bases_size__1587, obsv_ds_size__1587);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1575 ^ (memop_var_1576 >> 16)) ^ (memop_var_1577 << 16)) ^ (memop_var_1578 >> 16)) ^ (memop_var_1579 << 16)) ^ (memop_var_1580 >> 24)) ^ (memop_var_1581 << 8)) ^ (memop_var_1582 >> 8)) ^ (memop_var_1583 << 24)) ^ (memop_var_1584 >> 16)) ^ (memop_var_1585 << 16)) ^ (memop_var_1586 >> 24)) ^ (memop_var_1587 << 8)), (unsigned int *) theta_b, obsv_ds__1588, obsv_ds_bases_size__1588, obsv_ds_size__1588);
  int32_t memop_var_1589;
  memop_var_1589 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1589, obsv_ds_bases_size__1589, obsv_ds_size__1589);
  int32_t memop_var_1590;
  memop_var_1590 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1590, obsv_ds_bases_size__1590, obsv_ds_size__1590);
  int32_t memop_var_1591;
  memop_var_1591 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1591, obsv_ds_bases_size__1591, obsv_ds_size__1591);
  int32_t memop_var_1592;
  memop_var_1592 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1592, obsv_ds_bases_size__1592, obsv_ds_size__1592);
  int32_t memop_var_1593;
  memop_var_1593 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1593, obsv_ds_bases_size__1593, obsv_ds_size__1593);
  int32_t memop_var_1594;
  memop_var_1594 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1594, obsv_ds_bases_size__1594, obsv_ds_size__1594);
  int32_t memop_var_1595;
  memop_var_1595 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1595, obsv_ds_bases_size__1595, obsv_ds_size__1595);
  int32_t memop_var_1596;
  memop_var_1596 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1596, obsv_ds_bases_size__1596, obsv_ds_size__1596);
  int32_t memop_var_1597;
  memop_var_1597 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1597, obsv_ds_bases_size__1597, obsv_ds_size__1597);
  int32_t memop_var_1598;
  memop_var_1598 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1598, obsv_ds_bases_size__1598, obsv_ds_size__1598);
  int32_t memop_var_1599;
  memop_var_1599 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1599, obsv_ds_bases_size__1599, obsv_ds_size__1599);
  int32_t memop_var_1600;
  memop_var_1600 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1600, obsv_ds_bases_size__1600, obsv_ds_size__1600);
  int32_t memop_var_1601;
  memop_var_1601 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1601, obsv_ds_bases_size__1601, obsv_ds_size__1601);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1589 ^ (memop_var_1590 >> 16)) ^ (memop_var_1591 << 16)) ^ (memop_var_1592 >> 16)) ^ (memop_var_1593 << 16)) ^ (memop_var_1594 >> 24)) ^ (memop_var_1595 << 8)) ^ (memop_var_1596 >> 8)) ^ (memop_var_1597 << 24)) ^ (memop_var_1598 >> 16)) ^ (memop_var_1599 << 16)) ^ (memop_var_1600 >> 24)) ^ (memop_var_1601 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1602, obsv_ds_bases_size__1602, obsv_ds_size__1602);
  int32_t memop_var_1603;
  memop_var_1603 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1603, obsv_ds_bases_size__1603, obsv_ds_size__1603);
  int32_t memop_var_1604;
  memop_var_1604 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1604, obsv_ds_bases_size__1604, obsv_ds_size__1604);
  int32_t memop_var_1605;
  memop_var_1605 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1605, obsv_ds_bases_size__1605, obsv_ds_size__1605);
  int32_t memop_var_1606;
  memop_var_1606 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1606, obsv_ds_bases_size__1606, obsv_ds_size__1606);
  int32_t memop_var_1607;
  memop_var_1607 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1607, obsv_ds_bases_size__1607, obsv_ds_size__1607);
  int32_t memop_var_1608;
  memop_var_1608 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1608, obsv_ds_bases_size__1608, obsv_ds_size__1608);
  int32_t memop_var_1609;
  memop_var_1609 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1609, obsv_ds_bases_size__1609, obsv_ds_size__1609);
  int32_t memop_var_1610;
  memop_var_1610 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1610, obsv_ds_bases_size__1610, obsv_ds_size__1610);
  int32_t memop_var_1611;
  memop_var_1611 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1611, obsv_ds_bases_size__1611, obsv_ds_size__1611);
  int32_t memop_var_1612;
  memop_var_1612 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1612, obsv_ds_bases_size__1612, obsv_ds_size__1612);
  int32_t memop_var_1613;
  memop_var_1613 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1613, obsv_ds_bases_size__1613, obsv_ds_size__1613);
  int32_t memop_var_1614;
  memop_var_1614 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1614, obsv_ds_bases_size__1614, obsv_ds_size__1614);
  int32_t memop_var_1615;
  memop_var_1615 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1615, obsv_ds_bases_size__1615, obsv_ds_size__1615);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1603 ^ (memop_var_1604 >> 16)) ^ (memop_var_1605 << 16)) ^ (memop_var_1606 >> 16)) ^ (memop_var_1607 << 16)) ^ (memop_var_1608 >> 24)) ^ (memop_var_1609 << 8)) ^ (memop_var_1610 >> 8)) ^ (memop_var_1611 << 24)) ^ (memop_var_1612 >> 16)) ^ (memop_var_1613 << 16)) ^ (memop_var_1614 >> 24)) ^ (memop_var_1615 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1616, obsv_ds_bases_size__1616, obsv_ds_size__1616);
  int32_t memop_var_1617;
  memop_var_1617 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1617, obsv_ds_bases_size__1617, obsv_ds_size__1617);
  uint32_t_secure_store_single((unsigned int) memop_var_1617, (unsigned int *) (&theta_a[0]), obsv_ds__1618, obsv_ds_bases_size__1618, obsv_ds_size__1618);
  int32_t memop_var_1619;
  memop_var_1619 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1619, obsv_ds_bases_size__1619, obsv_ds_size__1619);
  uint32_t_secure_store_single((unsigned int) memop_var_1619, (unsigned int *) (&theta_a[1]), obsv_ds__1620, obsv_ds_bases_size__1620, obsv_ds_size__1620);
  int32_t memop_var_1621;
  memop_var_1621 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1621, obsv_ds_bases_size__1621, obsv_ds_size__1621);
  uint32_t_secure_store_single((unsigned int) memop_var_1621, (unsigned int *) (&theta_a[2]), obsv_ds__1622, obsv_ds_bases_size__1622, obsv_ds_size__1622);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1623;
  memop_var_1623 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1623, obsv_ds_bases_size__1623, obsv_ds_size__1623);
  int32_t memop_var_1624;
  memop_var_1624 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1624, obsv_ds_bases_size__1624, obsv_ds_size__1624);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1623 >> 10) ^ (memop_var_1624 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1625, obsv_ds_bases_size__1625, obsv_ds_size__1625);
  int32_t memop_var_1626;
  memop_var_1626 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1626, obsv_ds_bases_size__1626, obsv_ds_size__1626);
  int32_t memop_var_1627;
  memop_var_1627 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1627, obsv_ds_bases_size__1627, obsv_ds_size__1627);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1626 << 1) ^ (memop_var_1627 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1628, obsv_ds_bases_size__1628, obsv_ds_size__1628);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1629;
  memop_var_1629 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1629, obsv_ds_bases_size__1629, obsv_ds_size__1629);
  int32_t memop_var_1630;
  memop_var_1630 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1630, obsv_ds_bases_size__1630, obsv_ds_size__1630);
  int32_t memop_var_1631;
  memop_var_1631 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1631, obsv_ds_bases_size__1631, obsv_ds_size__1631);
  uint32_t_secure_store_single((unsigned int) (memop_var_1629 ^ (memop_var_1630 | (~memop_var_1631))), (unsigned int *) gamma_b, obsv_ds__1632, obsv_ds_bases_size__1632, obsv_ds_size__1632);
  int32_t memop_var_1633;
  memop_var_1633 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1633, obsv_ds_bases_size__1633, obsv_ds_size__1633);
  int32_t memop_var_1634;
  memop_var_1634 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1634, obsv_ds_bases_size__1634, obsv_ds_size__1634);
  int32_t memop_var_1635;
  memop_var_1635 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1635, obsv_ds_bases_size__1635, obsv_ds_size__1635);
  uint32_t_secure_store_single((unsigned int) (memop_var_1633 ^ (memop_var_1634 | (~memop_var_1635))), (unsigned int *) (&gamma_b[1]), obsv_ds__1636, obsv_ds_bases_size__1636, obsv_ds_size__1636);
  int32_t memop_var_1637;
  memop_var_1637 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1637, obsv_ds_bases_size__1637, obsv_ds_size__1637);
  int32_t memop_var_1638;
  memop_var_1638 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1638, obsv_ds_bases_size__1638, obsv_ds_size__1638);
  int32_t memop_var_1639;
  memop_var_1639 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1639, obsv_ds_bases_size__1639, obsv_ds_size__1639);
  uint32_t_secure_store_single((unsigned int) (memop_var_1637 ^ (memop_var_1638 | (~memop_var_1639))), (unsigned int *) (&gamma_b[2]), obsv_ds__1640, obsv_ds_bases_size__1640, obsv_ds_size__1640);
  int32_t memop_var_1641;
  memop_var_1641 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1641, obsv_ds_bases_size__1641, obsv_ds_size__1641);
  uint32_t_secure_store_single((unsigned int) memop_var_1641, (unsigned int *) (&gamma_a[0]), obsv_ds__1642, obsv_ds_bases_size__1642, obsv_ds_size__1642);
  int32_t memop_var_1643;
  memop_var_1643 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1643, obsv_ds_bases_size__1643, obsv_ds_size__1643);
  uint32_t_secure_store_single((unsigned int) memop_var_1643, (unsigned int *) (&gamma_a[1]), obsv_ds__1644, obsv_ds_bases_size__1644, obsv_ds_size__1644);
  int32_t memop_var_1645;
  memop_var_1645 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1645, obsv_ds_bases_size__1645, obsv_ds_size__1645);
  uint32_t_secure_store_single((unsigned int) memop_var_1645, (unsigned int *) (&gamma_a[2]), obsv_ds__1646, obsv_ds_bases_size__1646, obsv_ds_size__1646);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1647;
  memop_var_1647 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1647, obsv_ds_bases_size__1647, obsv_ds_size__1647);
  int32_t memop_var_1648;
  memop_var_1648 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1648, obsv_ds_bases_size__1648, obsv_ds_size__1648);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1647 << 1) ^ (memop_var_1648 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1649, obsv_ds_bases_size__1649, obsv_ds_size__1649);
  int32_t memop_var_1650;
  memop_var_1650 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1650, obsv_ds_bases_size__1650, obsv_ds_size__1650);
  int32_t memop_var_1651;
  memop_var_1651 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1651, obsv_ds_bases_size__1651, obsv_ds_size__1651);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1650 >> 10) ^ (memop_var_1651 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1652, obsv_ds_bases_size__1652, obsv_ds_size__1652);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1653;
  memop_var_1653 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1653, obsv_ds_bases_size__1653, obsv_ds_size__1653);
  uint32_t memop_var_1654;
  memop_var_1654 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1654, obsv_ds_bases_size__1654, obsv_ds_size__1654);
  uint32_t memop_var_1655;
  memop_var_1655 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1655, obsv_ds_bases_size__1655, obsv_ds_size__1655);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1653) ^ memop_var_1654) ^ (memop_var_1655 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1656, obsv_ds_bases_size__1656, obsv_ds_size__1656);
  int32_t memop_var_1657;
  memop_var_1657 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1657, obsv_ds_bases_size__1657, obsv_ds_size__1657);
  uint32_t memop_var_1658;
  memop_var_1658 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1658, obsv_ds_bases_size__1658, obsv_ds_size__1658);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1657) ^ memop_var_1658)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1659, obsv_ds_bases_size__1659, obsv_ds_size__1659);
  int32_t memop_var_1660;
  memop_var_1660 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1660, obsv_ds_bases_size__1660, obsv_ds_size__1660);
  uint32_t memop_var_1661;
  memop_var_1661 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1661, obsv_ds_bases_size__1661, obsv_ds_size__1661);
  uint32_t memop_var_1662;
  memop_var_1662 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[(signed int) encrypt_i]), obsv_ds__1662, obsv_ds_bases_size__1662, obsv_ds_size__1662);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1660) ^ memop_var_1661) ^ memop_var_1662)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1663, obsv_ds_bases_size__1663, obsv_ds_size__1663);
  ;
  rho_a = encrypt_a;
  ;
  theta_a = rho_a;
  int32_t memop_var_1664;
  memop_var_1664 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1664, obsv_ds_bases_size__1664, obsv_ds_size__1664);
  int32_t memop_var_1665;
  memop_var_1665 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1665, obsv_ds_bases_size__1665, obsv_ds_size__1665);
  int32_t memop_var_1666;
  memop_var_1666 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1666, obsv_ds_bases_size__1666, obsv_ds_size__1666);
  int32_t memop_var_1667;
  memop_var_1667 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1667, obsv_ds_bases_size__1667, obsv_ds_size__1667);
  int32_t memop_var_1668;
  memop_var_1668 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1668, obsv_ds_bases_size__1668, obsv_ds_size__1668);
  int32_t memop_var_1669;
  memop_var_1669 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1669, obsv_ds_bases_size__1669, obsv_ds_size__1669);
  int32_t memop_var_1670;
  memop_var_1670 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1670, obsv_ds_bases_size__1670, obsv_ds_size__1670);
  int32_t memop_var_1671;
  memop_var_1671 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1671, obsv_ds_bases_size__1671, obsv_ds_size__1671);
  int32_t memop_var_1672;
  memop_var_1672 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1672, obsv_ds_bases_size__1672, obsv_ds_size__1672);
  int32_t memop_var_1673;
  memop_var_1673 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1673, obsv_ds_bases_size__1673, obsv_ds_size__1673);
  int32_t memop_var_1674;
  memop_var_1674 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1674, obsv_ds_bases_size__1674, obsv_ds_size__1674);
  int32_t memop_var_1675;
  memop_var_1675 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1675, obsv_ds_bases_size__1675, obsv_ds_size__1675);
  int32_t memop_var_1676;
  memop_var_1676 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1676, obsv_ds_bases_size__1676, obsv_ds_size__1676);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1664 ^ (memop_var_1665 >> 16)) ^ (memop_var_1666 << 16)) ^ (memop_var_1667 >> 16)) ^ (memop_var_1668 << 16)) ^ (memop_var_1669 >> 24)) ^ (memop_var_1670 << 8)) ^ (memop_var_1671 >> 8)) ^ (memop_var_1672 << 24)) ^ (memop_var_1673 >> 16)) ^ (memop_var_1674 << 16)) ^ (memop_var_1675 >> 24)) ^ (memop_var_1676 << 8)), (unsigned int *) theta_b, obsv_ds__1677, obsv_ds_bases_size__1677, obsv_ds_size__1677);
  int32_t memop_var_1678;
  memop_var_1678 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1678, obsv_ds_bases_size__1678, obsv_ds_size__1678);
  int32_t memop_var_1679;
  memop_var_1679 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1679, obsv_ds_bases_size__1679, obsv_ds_size__1679);
  int32_t memop_var_1680;
  memop_var_1680 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1680, obsv_ds_bases_size__1680, obsv_ds_size__1680);
  int32_t memop_var_1681;
  memop_var_1681 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1681, obsv_ds_bases_size__1681, obsv_ds_size__1681);
  int32_t memop_var_1682;
  memop_var_1682 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1682, obsv_ds_bases_size__1682, obsv_ds_size__1682);
  int32_t memop_var_1683;
  memop_var_1683 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1683, obsv_ds_bases_size__1683, obsv_ds_size__1683);
  int32_t memop_var_1684;
  memop_var_1684 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1684, obsv_ds_bases_size__1684, obsv_ds_size__1684);
  int32_t memop_var_1685;
  memop_var_1685 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1685, obsv_ds_bases_size__1685, obsv_ds_size__1685);
  int32_t memop_var_1686;
  memop_var_1686 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1686, obsv_ds_bases_size__1686, obsv_ds_size__1686);
  int32_t memop_var_1687;
  memop_var_1687 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1687, obsv_ds_bases_size__1687, obsv_ds_size__1687);
  int32_t memop_var_1688;
  memop_var_1688 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1688, obsv_ds_bases_size__1688, obsv_ds_size__1688);
  int32_t memop_var_1689;
  memop_var_1689 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1689, obsv_ds_bases_size__1689, obsv_ds_size__1689);
  int32_t memop_var_1690;
  memop_var_1690 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1690, obsv_ds_bases_size__1690, obsv_ds_size__1690);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1678 ^ (memop_var_1679 >> 16)) ^ (memop_var_1680 << 16)) ^ (memop_var_1681 >> 16)) ^ (memop_var_1682 << 16)) ^ (memop_var_1683 >> 24)) ^ (memop_var_1684 << 8)) ^ (memop_var_1685 >> 8)) ^ (memop_var_1686 << 24)) ^ (memop_var_1687 >> 16)) ^ (memop_var_1688 << 16)) ^ (memop_var_1689 >> 24)) ^ (memop_var_1690 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1691, obsv_ds_bases_size__1691, obsv_ds_size__1691);
  int32_t memop_var_1692;
  memop_var_1692 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1692, obsv_ds_bases_size__1692, obsv_ds_size__1692);
  int32_t memop_var_1693;
  memop_var_1693 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1693, obsv_ds_bases_size__1693, obsv_ds_size__1693);
  int32_t memop_var_1694;
  memop_var_1694 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1694, obsv_ds_bases_size__1694, obsv_ds_size__1694);
  int32_t memop_var_1695;
  memop_var_1695 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1695, obsv_ds_bases_size__1695, obsv_ds_size__1695);
  int32_t memop_var_1696;
  memop_var_1696 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1696, obsv_ds_bases_size__1696, obsv_ds_size__1696);
  int32_t memop_var_1697;
  memop_var_1697 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1697, obsv_ds_bases_size__1697, obsv_ds_size__1697);
  int32_t memop_var_1698;
  memop_var_1698 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1698, obsv_ds_bases_size__1698, obsv_ds_size__1698);
  int32_t memop_var_1699;
  memop_var_1699 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1699, obsv_ds_bases_size__1699, obsv_ds_size__1699);
  int32_t memop_var_1700;
  memop_var_1700 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1700, obsv_ds_bases_size__1700, obsv_ds_size__1700);
  int32_t memop_var_1701;
  memop_var_1701 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1701, obsv_ds_bases_size__1701, obsv_ds_size__1701);
  int32_t memop_var_1702;
  memop_var_1702 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1702, obsv_ds_bases_size__1702, obsv_ds_size__1702);
  int32_t memop_var_1703;
  memop_var_1703 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1703, obsv_ds_bases_size__1703, obsv_ds_size__1703);
  int32_t memop_var_1704;
  memop_var_1704 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1704, obsv_ds_bases_size__1704, obsv_ds_size__1704);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1692 ^ (memop_var_1693 >> 16)) ^ (memop_var_1694 << 16)) ^ (memop_var_1695 >> 16)) ^ (memop_var_1696 << 16)) ^ (memop_var_1697 >> 24)) ^ (memop_var_1698 << 8)) ^ (memop_var_1699 >> 8)) ^ (memop_var_1700 << 24)) ^ (memop_var_1701 >> 16)) ^ (memop_var_1702 << 16)) ^ (memop_var_1703 >> 24)) ^ (memop_var_1704 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1705, obsv_ds_bases_size__1705, obsv_ds_size__1705);
  int32_t memop_var_1706;
  memop_var_1706 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1706, obsv_ds_bases_size__1706, obsv_ds_size__1706);
  uint32_t_secure_store_single((unsigned int) memop_var_1706, (unsigned int *) (&theta_a[0]), obsv_ds__1707, obsv_ds_bases_size__1707, obsv_ds_size__1707);
  int32_t memop_var_1708;
  memop_var_1708 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1708, obsv_ds_bases_size__1708, obsv_ds_size__1708);
  uint32_t_secure_store_single((unsigned int) memop_var_1708, (unsigned int *) (&theta_a[1]), obsv_ds__1709, obsv_ds_bases_size__1709, obsv_ds_size__1709);
  int32_t memop_var_1710;
  memop_var_1710 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1710, obsv_ds_bases_size__1710, obsv_ds_size__1710);
  uint32_t_secure_store_single((unsigned int) memop_var_1710, (unsigned int *) (&theta_a[2]), obsv_ds__1711, obsv_ds_bases_size__1711, obsv_ds_size__1711);
  ;
  ;
  pi_1_a = rho_a;
  int32_t memop_var_1712;
  memop_var_1712 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1712, obsv_ds_bases_size__1712, obsv_ds_size__1712);
  int32_t memop_var_1713;
  memop_var_1713 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[0]), obsv_ds__1713, obsv_ds_bases_size__1713, obsv_ds_size__1713);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1712 >> 10) ^ (memop_var_1713 << 22)), (unsigned int *) (&pi_1_a[0]), obsv_ds__1714, obsv_ds_bases_size__1714, obsv_ds_size__1714);
  int32_t memop_var_1715;
  memop_var_1715 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1715, obsv_ds_bases_size__1715, obsv_ds_size__1715);
  int32_t memop_var_1716;
  memop_var_1716 = uint32_t_secure_load_single((unsigned int *) (&pi_1_a[2]), obsv_ds__1716, obsv_ds_bases_size__1716, obsv_ds_size__1716);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1715 << 1) ^ (memop_var_1716 >> 31)), (unsigned int *) (&pi_1_a[2]), obsv_ds__1717, obsv_ds_bases_size__1717, obsv_ds_size__1717);
  ;
  ;
  gamma_a = rho_a;
  int32_t memop_var_1718;
  memop_var_1718 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1718, obsv_ds_bases_size__1718, obsv_ds_size__1718);
  int32_t memop_var_1719;
  memop_var_1719 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1719, obsv_ds_bases_size__1719, obsv_ds_size__1719);
  int32_t memop_var_1720;
  memop_var_1720 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1720, obsv_ds_bases_size__1720, obsv_ds_size__1720);
  uint32_t_secure_store_single((unsigned int) (memop_var_1718 ^ (memop_var_1719 | (~memop_var_1720))), (unsigned int *) gamma_b, obsv_ds__1721, obsv_ds_bases_size__1721, obsv_ds_size__1721);
  int32_t memop_var_1722;
  memop_var_1722 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1722, obsv_ds_bases_size__1722, obsv_ds_size__1722);
  int32_t memop_var_1723;
  memop_var_1723 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1723, obsv_ds_bases_size__1723, obsv_ds_size__1723);
  int32_t memop_var_1724;
  memop_var_1724 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1724, obsv_ds_bases_size__1724, obsv_ds_size__1724);
  uint32_t_secure_store_single((unsigned int) (memop_var_1722 ^ (memop_var_1723 | (~memop_var_1724))), (unsigned int *) (&gamma_b[1]), obsv_ds__1725, obsv_ds_bases_size__1725, obsv_ds_size__1725);
  int32_t memop_var_1726;
  memop_var_1726 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[2]), obsv_ds__1726, obsv_ds_bases_size__1726, obsv_ds_size__1726);
  int32_t memop_var_1727;
  memop_var_1727 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[0]), obsv_ds__1727, obsv_ds_bases_size__1727, obsv_ds_size__1727);
  int32_t memop_var_1728;
  memop_var_1728 = uint32_t_secure_load_single((unsigned int *) (&gamma_a[1]), obsv_ds__1728, obsv_ds_bases_size__1728, obsv_ds_size__1728);
  uint32_t_secure_store_single((unsigned int) (memop_var_1726 ^ (memop_var_1727 | (~memop_var_1728))), (unsigned int *) (&gamma_b[2]), obsv_ds__1729, obsv_ds_bases_size__1729, obsv_ds_size__1729);
  int32_t memop_var_1730;
  memop_var_1730 = uint32_t_secure_load_single((unsigned int *) gamma_b, obsv_ds__1730, obsv_ds_bases_size__1730, obsv_ds_size__1730);
  uint32_t_secure_store_single((unsigned int) memop_var_1730, (unsigned int *) (&gamma_a[0]), obsv_ds__1731, obsv_ds_bases_size__1731, obsv_ds_size__1731);
  int32_t memop_var_1732;
  memop_var_1732 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[1]), obsv_ds__1732, obsv_ds_bases_size__1732, obsv_ds_size__1732);
  uint32_t_secure_store_single((unsigned int) memop_var_1732, (unsigned int *) (&gamma_a[1]), obsv_ds__1733, obsv_ds_bases_size__1733, obsv_ds_size__1733);
  int32_t memop_var_1734;
  memop_var_1734 = uint32_t_secure_load_single((unsigned int *) (&gamma_b[2]), obsv_ds__1734, obsv_ds_bases_size__1734, obsv_ds_size__1734);
  uint32_t_secure_store_single((unsigned int) memop_var_1734, (unsigned int *) (&gamma_a[2]), obsv_ds__1735, obsv_ds_bases_size__1735, obsv_ds_size__1735);
  ;
  ;
  pi_2_a = rho_a;
  int32_t memop_var_1736;
  memop_var_1736 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1736, obsv_ds_bases_size__1736, obsv_ds_size__1736);
  int32_t memop_var_1737;
  memop_var_1737 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[0]), obsv_ds__1737, obsv_ds_bases_size__1737, obsv_ds_size__1737);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1736 << 1) ^ (memop_var_1737 >> 31)), (unsigned int *) (&pi_2_a[0]), obsv_ds__1738, obsv_ds_bases_size__1738, obsv_ds_size__1738);
  int32_t memop_var_1739;
  memop_var_1739 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1739, obsv_ds_bases_size__1739, obsv_ds_size__1739);
  int32_t memop_var_1740;
  memop_var_1740 = uint32_t_secure_load_single((unsigned int *) (&pi_2_a[2]), obsv_ds__1740, obsv_ds_bases_size__1740, obsv_ds_size__1740);
  uint32_t_secure_store_single((unsigned int) ((memop_var_1739 >> 10) ^ (memop_var_1740 << 22)), (unsigned int *) (&pi_2_a[2]), obsv_ds__1741, obsv_ds_bases_size__1741, obsv_ds_size__1741);
  ;
  ;
  encrypt_i = encrypt_i + 1;
  int32_t memop_var_1742;
  memop_var_1742 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[0]), obsv_ds__1742, obsv_ds_bases_size__1742, obsv_ds_size__1742);
  uint32_t memop_var_1743;
  memop_var_1743 = uint32_t_secure_load_single((unsigned int *) encrypt_c->k, obsv_ds__1743, obsv_ds_bases_size__1743, obsv_ds_size__1743);
  uint32_t memop_var_1744;
  memop_var_1744 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[11]), obsv_ds__1744, obsv_ds_bases_size__1744, obsv_ds_size__1744);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1742) ^ memop_var_1743) ^ (memop_var_1744 << 16))), (unsigned int *) (&encrypt_a[0]), obsv_ds__1745, obsv_ds_bases_size__1745, obsv_ds_size__1745);
  int32_t memop_var_1746;
  memop_var_1746 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[1]), obsv_ds__1746, obsv_ds_bases_size__1746, obsv_ds_size__1746);
  uint32_t memop_var_1747;
  memop_var_1747 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[1]), obsv_ds__1747, obsv_ds_bases_size__1747, obsv_ds_size__1747);
  uint32_t_secure_store_single((unsigned int) ((int32_t) (((unsigned int) memop_var_1746) ^ memop_var_1747)), (unsigned int *) (&encrypt_a[1]), obsv_ds__1748, obsv_ds_bases_size__1748, obsv_ds_size__1748);
  int32_t memop_var_1749;
  memop_var_1749 = uint32_t_secure_load_single((unsigned int *) (&encrypt_a[2]), obsv_ds__1749, obsv_ds_bases_size__1749, obsv_ds_size__1749);
  uint32_t memop_var_1750;
  memop_var_1750 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->k[2]), obsv_ds__1750, obsv_ds_bases_size__1750, obsv_ds_size__1750);
  uint32_t memop_var_1751;
  memop_var_1751 = uint32_t_secure_load_single((unsigned int *) (&encrypt_c->ercon[11]), obsv_ds__1751, obsv_ds_bases_size__1751, obsv_ds_size__1751);
  uint32_t_secure_store_single((unsigned int) ((int32_t) ((((unsigned int) memop_var_1749) ^ memop_var_1750) ^ memop_var_1751)), (unsigned int *) (&encrypt_a[2]), obsv_ds__1752, obsv_ds_bases_size__1752, obsv_ds_size__1752);
  ;
  theta_a = encrypt_a;
  int32_t memop_var_1753;
  memop_var_1753 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1753, obsv_ds_bases_size__1753, obsv_ds_size__1753);
  int32_t memop_var_1754;
  memop_var_1754 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1754, obsv_ds_bases_size__1754, obsv_ds_size__1754);
  int32_t memop_var_1755;
  memop_var_1755 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1755, obsv_ds_bases_size__1755, obsv_ds_size__1755);
  int32_t memop_var_1756;
  memop_var_1756 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1756, obsv_ds_bases_size__1756, obsv_ds_size__1756);
  int32_t memop_var_1757;
  memop_var_1757 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1757, obsv_ds_bases_size__1757, obsv_ds_size__1757);
  int32_t memop_var_1758;
  memop_var_1758 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1758, obsv_ds_bases_size__1758, obsv_ds_size__1758);
  int32_t memop_var_1759;
  memop_var_1759 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1759, obsv_ds_bases_size__1759, obsv_ds_size__1759);
  int32_t memop_var_1760;
  memop_var_1760 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1760, obsv_ds_bases_size__1760, obsv_ds_size__1760);
  int32_t memop_var_1761;
  memop_var_1761 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1761, obsv_ds_bases_size__1761, obsv_ds_size__1761);
  int32_t memop_var_1762;
  memop_var_1762 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1762, obsv_ds_bases_size__1762, obsv_ds_size__1762);
  int32_t memop_var_1763;
  memop_var_1763 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1763, obsv_ds_bases_size__1763, obsv_ds_size__1763);
  int32_t memop_var_1764;
  memop_var_1764 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1764, obsv_ds_bases_size__1764, obsv_ds_size__1764);
  int32_t memop_var_1765;
  memop_var_1765 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1765, obsv_ds_bases_size__1765, obsv_ds_size__1765);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1753 ^ (memop_var_1754 >> 16)) ^ (memop_var_1755 << 16)) ^ (memop_var_1756 >> 16)) ^ (memop_var_1757 << 16)) ^ (memop_var_1758 >> 24)) ^ (memop_var_1759 << 8)) ^ (memop_var_1760 >> 8)) ^ (memop_var_1761 << 24)) ^ (memop_var_1762 >> 16)) ^ (memop_var_1763 << 16)) ^ (memop_var_1764 >> 24)) ^ (memop_var_1765 << 8)), (unsigned int *) theta_b, obsv_ds__1766, obsv_ds_bases_size__1766, obsv_ds_size__1766);
  int32_t memop_var_1767;
  memop_var_1767 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1767, obsv_ds_bases_size__1767, obsv_ds_size__1767);
  int32_t memop_var_1768;
  memop_var_1768 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1768, obsv_ds_bases_size__1768, obsv_ds_size__1768);
  int32_t memop_var_1769;
  memop_var_1769 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1769, obsv_ds_bases_size__1769, obsv_ds_size__1769);
  int32_t memop_var_1770;
  memop_var_1770 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1770, obsv_ds_bases_size__1770, obsv_ds_size__1770);
  int32_t memop_var_1771;
  memop_var_1771 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1771, obsv_ds_bases_size__1771, obsv_ds_size__1771);
  int32_t memop_var_1772;
  memop_var_1772 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1772, obsv_ds_bases_size__1772, obsv_ds_size__1772);
  int32_t memop_var_1773;
  memop_var_1773 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1773, obsv_ds_bases_size__1773, obsv_ds_size__1773);
  int32_t memop_var_1774;
  memop_var_1774 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1774, obsv_ds_bases_size__1774, obsv_ds_size__1774);
  int32_t memop_var_1775;
  memop_var_1775 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1775, obsv_ds_bases_size__1775, obsv_ds_size__1775);
  int32_t memop_var_1776;
  memop_var_1776 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1776, obsv_ds_bases_size__1776, obsv_ds_size__1776);
  int32_t memop_var_1777;
  memop_var_1777 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1777, obsv_ds_bases_size__1777, obsv_ds_size__1777);
  int32_t memop_var_1778;
  memop_var_1778 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1778, obsv_ds_bases_size__1778, obsv_ds_size__1778);
  int32_t memop_var_1779;
  memop_var_1779 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1779, obsv_ds_bases_size__1779, obsv_ds_size__1779);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1767 ^ (memop_var_1768 >> 16)) ^ (memop_var_1769 << 16)) ^ (memop_var_1770 >> 16)) ^ (memop_var_1771 << 16)) ^ (memop_var_1772 >> 24)) ^ (memop_var_1773 << 8)) ^ (memop_var_1774 >> 8)) ^ (memop_var_1775 << 24)) ^ (memop_var_1776 >> 16)) ^ (memop_var_1777 << 16)) ^ (memop_var_1778 >> 24)) ^ (memop_var_1779 << 8)), (unsigned int *) (&theta_b[1]), obsv_ds__1780, obsv_ds_bases_size__1780, obsv_ds_size__1780);
  int32_t memop_var_1781;
  memop_var_1781 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1781, obsv_ds_bases_size__1781, obsv_ds_size__1781);
  int32_t memop_var_1782;
  memop_var_1782 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1782, obsv_ds_bases_size__1782, obsv_ds_size__1782);
  int32_t memop_var_1783;
  memop_var_1783 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1783, obsv_ds_bases_size__1783, obsv_ds_size__1783);
  int32_t memop_var_1784;
  memop_var_1784 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1784, obsv_ds_bases_size__1784, obsv_ds_size__1784);
  int32_t memop_var_1785;
  memop_var_1785 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1785, obsv_ds_bases_size__1785, obsv_ds_size__1785);
  int32_t memop_var_1786;
  memop_var_1786 = uint32_t_secure_load_single((unsigned int *) (&theta_a[0]), obsv_ds__1786, obsv_ds_bases_size__1786, obsv_ds_size__1786);
  int32_t memop_var_1787;
  memop_var_1787 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1787, obsv_ds_bases_size__1787, obsv_ds_size__1787);
  int32_t memop_var_1788;
  memop_var_1788 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1788, obsv_ds_bases_size__1788, obsv_ds_size__1788);
  int32_t memop_var_1789;
  memop_var_1789 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1789, obsv_ds_bases_size__1789, obsv_ds_size__1789);
  int32_t memop_var_1790;
  memop_var_1790 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1790, obsv_ds_bases_size__1790, obsv_ds_size__1790);
  int32_t memop_var_1791;
  memop_var_1791 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1791, obsv_ds_bases_size__1791, obsv_ds_size__1791);
  int32_t memop_var_1792;
  memop_var_1792 = uint32_t_secure_load_single((unsigned int *) (&theta_a[1]), obsv_ds__1792, obsv_ds_bases_size__1792, obsv_ds_size__1792);
  int32_t memop_var_1793;
  memop_var_1793 = uint32_t_secure_load_single((unsigned int *) (&theta_a[2]), obsv_ds__1793, obsv_ds_bases_size__1793, obsv_ds_size__1793);
  uint32_t_secure_store_single((unsigned int) ((((((((((((memop_var_1781 ^ (memop_var_1782 >> 16)) ^ (memop_var_1783 << 16)) ^ (memop_var_1784 >> 16)) ^ (memop_var_1785 << 16)) ^ (memop_var_1786 >> 24)) ^ (memop_var_1787 << 8)) ^ (memop_var_1788 >> 8)) ^ (memop_var_1789 << 24)) ^ (memop_var_1790 >> 16)) ^ (memop_var_1791 << 16)) ^ (memop_var_1792 >> 24)) ^ (memop_var_1793 << 8)), (unsigned int *) (&theta_b[2]), obsv_ds__1794, obsv_ds_bases_size__1794, obsv_ds_size__1794);
  int32_t memop_var_1795;
  memop_var_1795 = uint32_t_secure_load_single((unsigned int *) theta_b, obsv_ds__1795, obsv_ds_bases_size__1795, obsv_ds_size__1795);
  uint32_t_secure_store_single((unsigned int) memop_var_1795, (unsigned int *) (&theta_a[0]), obsv_ds__1796, obsv_ds_bases_size__1796, obsv_ds_size__1796);
  int32_t memop_var_1797;
  memop_var_1797 = uint32_t_secure_load_single((unsigned int *) (&theta_b[1]), obsv_ds__1797, obsv_ds_bases_size__1797, obsv_ds_size__1797);
  uint32_t_secure_store_single((unsigned int) memop_var_1797, (unsigned int *) (&theta_a[1]), obsv_ds__1798, obsv_ds_bases_size__1798, obsv_ds_size__1798);
  int32_t memop_var_1799;
  memop_var_1799 = uint32_t_secure_load_single((unsigned int *) (&theta_b[2]), obsv_ds__1799, obsv_ds_bases_size__1799, obsv_ds_size__1799);
  uint32_t_secure_store_single((unsigned int) memop_var_1799, (unsigned int *) (&theta_a[2]), obsv_ds__1800, obsv_ds_bases_size__1800, obsv_ds_size__1800);
  ;
  ;
  write(1, (const void *) in_pub, 12u);
}

