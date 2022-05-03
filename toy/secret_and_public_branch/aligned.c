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
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
signed int arr[32];
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_res;
  unsigned int main_s_sec;
  unsigned int main_p_pub;
  read(0, &arr, sizeof(signed int [32]));
  read(0, &main_p_pub, sizeof(unsigned int));
  main_p_pub = main_p_pub % 16u;
  read(0, &main_s_sec, sizeof(unsigned int));
  main_s_sec = main_s_sec % 16u;
  signed int memop_var_0;
  if (((main_p_pub + main_s_sec) % 2u) == 0u)
  {
$0:
*(int*)&&$1;
    memop_var_0 = ((((((((false || (main_p_pub == 0)) || (main_p_pub == 2)) || (main_p_pub == 4)) || (main_p_pub == 6)) || (main_p_pub == 8)) || (main_p_pub == 10)) || (main_p_pub == 12)) || (main_p_pub == 14)) ? (uint32_t_secure_load_onebase((unsigned int *) (&arr[(signed int) (main_s_sec % 16u)]), (char *) arr, (const unsigned long long [16]){0, 8, 16, 24, 32, 40, 48, 56, 68, 76, 84, 92, 100, 108, 116, 124}, 16, 1, 0, 124, 0, 0)) : (uint32_t_secure_load_onebase((unsigned int *) (&arr[(signed int) (main_s_sec % 16u)]), (char *) arr, (const unsigned long long [16]){4, 12, 20, 28, 36, 44, 52, 60, 64, 72, 80, 88, 96, 104, 112, 120}, 16, 1, 4, 120, 0, 0));
    main_res = memop_var_0;
    goto __CPROVER_DUMP_L3;
  }

$1:
*(int*)&&$0;
  signed int memop_var_1;
  memop_var_1 = ((((((((false || (main_p_pub == 0)) || (main_p_pub == 2)) || (main_p_pub == 4)) || (main_p_pub == 6)) || (main_p_pub == 8)) || (main_p_pub == 10)) || (main_p_pub == 12)) || (main_p_pub == 14)) ? (uint32_t_secure_load_onebase((unsigned int *) (&arr[(signed int) ((main_s_sec % 16u) + 16u)]), (char *) arr, (const unsigned long long [16]){0, 8, 16, 24, 32, 40, 48, 56, 68, 76, 84, 92, 100, 108, 116, 124}, 16, 1, 0, 124, 0, 0)) : (uint32_t_secure_load_onebase((unsigned int *) (&arr[(signed int) ((main_s_sec % 16u) + 16u)]), (char *) arr, (const unsigned long long [16]){4, 12, 20, 28, 36, 44, 52, 60, 64, 72, 80, 88, 96, 104, 112, 120}, 16, 1, 4, 120, 0, 0));
  main_res = memop_var_1;
  __CPROVER_DUMP_L3:
  ;

  write(1, &main_res, sizeof(signed int));
}

