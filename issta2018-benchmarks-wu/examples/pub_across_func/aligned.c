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
signed int func(signed int *a, signed int b);
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
  signed int func_ret;
  signed int func_arr[10];
  signed int func_b;
  signed int *func_a;
  signed int main_return_value_func;
  signed int main_r;
  signed int main_x;
  signed int main_im[2];
  signed int main_v_pub[2];
  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 0)[0]), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 0)[1]), obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
  signed int memop_var_2;
  memop_var_2 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 0)[2]), obsv_ds__2, obsv_ds_bases_size__2, obsv_ds_size__2);
  signed int memop_var_3;
  memop_var_3 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 0)[3]), obsv_ds__3, obsv_ds_bases_size__3, obsv_ds_size__3);
  uint32_t_secure_store_single((unsigned int) ((signed int) ((((((unsigned long int) (memop_var_0 & 255)) << 24) | (((unsigned long int) (memop_var_1 & 255)) << 16)) | (((unsigned long int) (memop_var_2 & 255)) << 8)) | ((unsigned long int) (memop_var_3 & 255)))), (unsigned int *) main_im, obsv_ds__4, obsv_ds_bases_size__4, obsv_ds_size__4);
  signed int memop_var_5;
  memop_var_5 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 4)[0]), obsv_ds__5, obsv_ds_bases_size__5, obsv_ds_size__5);
  signed int memop_var_6;
  memop_var_6 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 4)[1]), obsv_ds__6, obsv_ds_bases_size__6, obsv_ds_size__6);
  signed int memop_var_7;
  memop_var_7 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 4)[2]), obsv_ds__7, obsv_ds_bases_size__7, obsv_ds_size__7);
  signed int memop_var_8;
  memop_var_8 = uint32_t_secure_load_single((unsigned int *) (&(main_v_pub + 4)[3]), obsv_ds__8, obsv_ds_bases_size__8, obsv_ds_size__8);
  uint32_t_secure_store_single((unsigned int) ((signed int) ((((((unsigned long int) (memop_var_5 & 255)) << 24) | (((unsigned long int) (memop_var_6 & 255)) << 16)) | (((unsigned long int) (memop_var_7 & 255)) << 8)) | ((unsigned long int) (memop_var_8 & 255)))), (unsigned int *) (&main_im[1]), obsv_ds__9, obsv_ds_bases_size__9, obsv_ds_size__9);
  ;
  func_a = (signed int *) ((const void *) main_im);
  func_b = main_x;
  signed int memop_var_10;
  memop_var_10 = uint32_t_secure_load_single((unsigned int *) (&func_a[0]), obsv_ds__10, obsv_ds_bases_size__10, obsv_ds_size__10);
  signed int memop_var_11;
  memop_var_11 = uint32_t_secure_load_onebase((unsigned int *) (&func_arr[memop_var_10]), (char *) func_arr, 0, 10, 0, 0, 36, obsv_ds_bases_size__11, obsv_ds_size__11);
  signed int memop_var_12;
  memop_var_12 = uint32_t_secure_load_onebase((unsigned int *) (&func_arr[func_b]), (char *) func_arr, 0, 10, 0, 0, 36, obsv_ds_bases_size__12, obsv_ds_size__12);
  func_ret = memop_var_11 + memop_var_12;
  main_return_value_func = func_ret;
  ;
  main_r = main_return_value_func;
  write(1, &main_r, sizeof(signed int));
}

