#include <unistd.h>
struct __CPROVER_pipet;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef unsigned int size_t;
typedef signed int ssize_t;
inline static __uint16_t __bswap_16(__uint16_t __bsx);
inline static __uint32_t __bswap_32(__uint32_t __bsx);
inline static __uint64_t __bswap_64(__uint64_t __bsx);
inline static __uint16_t __uint16_identity(__uint16_t __x);
inline static __uint32_t __uint32_identity(__uint32_t __x);
inline static __uint64_t __uint64_identity(__uint64_t __x);
void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_tmp_post$0;
  signed int main_tmp_post;
  signed int main_j1;
  signed int main_j0;
  signed int main_i;
  signed int main_threshold;
  signed int main_out[4];
  signed int main_in[4] = {0, 0, 0, 0};
  main_out[0] = 0;
  main_out[1] = 0;
  main_out[2] = 0;
  main_out[3] = 0;
  read(0, (void *) main_in, sizeof(signed int [4]));
  read(0, (void *) (&main_threshold), sizeof(signed int));
  main_j0 = 0;
  main_j1 = 4 - 1;
  main_i = 0;
  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load_single((unsigned int *) (&main_in[main_i]), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  signed int memop_var_1;
  if (!(memop_var_0 >= main_threshold))
  {
$0:
*(int*)&&$1;
    main_tmp_post = main_j0;
    main_j0 = main_j0 + 1;
    memop_var_1 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$0_1, obsv_ds_bases_size_$0_1, obsv_ds_size_$0_1);
    uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_1, (unsigned int *) (&main_out[main_tmp_post]), (char *) main_out, 0, 2, 0, 0, 12, obsv_ds_bases_size_$0_2, obsv_ds_size_$0_2);
    goto __CPROVER_DUMP_L3;
  }

$1:
*(int*)&&$0;
  main_tmp_post$0 = main_j1;
  main_j1 = main_j1 - 1;
  signed int memop_var_3;
  memop_var_3 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$1_1, obsv_ds_bases_size_$1_1, obsv_ds_size_$1_1);
  uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_3, (unsigned int *) (&main_out[main_tmp_post$0]), (char *) main_out, 0, 2, 0, 0, 12, obsv_ds_bases_size_$1_2, obsv_ds_size_$1_2);
  __CPROVER_DUMP_L3:
  ;

  main_i = main_i + 1;
  signed int memop_var_5;
  memop_var_5 = uint32_t_secure_load_single((unsigned int *) (&main_in[main_i]), obsv_ds__5, obsv_ds_bases_size__5, obsv_ds_size__5);
  signed int memop_var_6;
  if (!(memop_var_5 >= main_threshold))
  {
$2:
*(int*)&&$3;
    main_tmp_post = main_j0;
    main_j0 = main_j0 + 1;
    memop_var_6 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$2_6, obsv_ds_bases_size_$2_6, obsv_ds_size_$2_6);
    uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_6, (unsigned int *) (&main_out[main_tmp_post]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$2_7, obsv_ds_size_$2_7);
    goto __CPROVER_DUMP_L6;
  }

$3:
*(int*)&&$2;
  main_tmp_post$0 = main_j1;
  main_j1 = main_j1 - 1;
  signed int memop_var_8;
  memop_var_8 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$3_6, obsv_ds_bases_size_$3_6, obsv_ds_size_$3_6);
  uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_8, (unsigned int *) (&main_out[main_tmp_post$0]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$3_7, obsv_ds_size_$3_7);
  __CPROVER_DUMP_L6:
  ;

  main_i = main_i + 1;
  signed int memop_var_10;
  memop_var_10 = uint32_t_secure_load_single((unsigned int *) (&main_in[main_i]), obsv_ds__10, obsv_ds_bases_size__10, obsv_ds_size__10);
  signed int memop_var_11;
  if (!(memop_var_10 >= main_threshold))
  {
$4:
*(int*)&&$5;
    main_tmp_post = main_j0;
    main_j0 = main_j0 + 1;
    memop_var_11 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$4_11, obsv_ds_bases_size_$4_11, obsv_ds_size_$4_11);
    uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_11, (unsigned int *) (&main_out[main_tmp_post]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$4_12, obsv_ds_size_$4_12);
    goto __CPROVER_DUMP_L9;
  }

$5:
*(int*)&&$4;
  main_tmp_post$0 = main_j1;
  main_j1 = main_j1 - 1;
  signed int memop_var_13;
  memop_var_13 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$5_11, obsv_ds_bases_size_$5_11, obsv_ds_size_$5_11);
  uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_13, (unsigned int *) (&main_out[main_tmp_post$0]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$5_12, obsv_ds_size_$5_12);
  __CPROVER_DUMP_L9:
  ;

  main_i = main_i + 1;
  signed int memop_var_15;
  memop_var_15 = uint32_t_secure_load_single((unsigned int *) (&main_in[main_i]), obsv_ds__15, obsv_ds_bases_size__15, obsv_ds_size__15);
  signed int memop_var_16;
  if (!(memop_var_15 >= main_threshold))
  {
$6:
*(int*)&&$7;
    main_tmp_post = main_j0;
    main_j0 = main_j0 + 1;
    memop_var_16 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$6_16, obsv_ds_bases_size_$6_16, obsv_ds_size_$6_16);
    uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_16, (unsigned int *) (&main_out[main_tmp_post]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$6_17, obsv_ds_size_$6_17);
    goto __CPROVER_DUMP_L12;
  }

$7:
*(int*)&&$6;
  main_tmp_post$0 = main_j1;
  main_j1 = main_j1 - 1;
  signed int memop_var_18;
  memop_var_18 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_in[main_i]), obsv_ds_$7_16, obsv_ds_bases_size_$7_16, obsv_ds_size_$7_16);
  uint32_t_secure_store_sensitive_onebase((unsigned int) memop_var_18, (unsigned int *) (&main_out[main_tmp_post$0]), (char *) main_out, 0, 4, 0, 0, 12, obsv_ds_bases_size_$7_17, obsv_ds_size_$7_17);
  __CPROVER_DUMP_L12:
  ;

  main_i = main_i + 1;
  write(1, (const void *) main_out, sizeof(signed int [4]));
}

