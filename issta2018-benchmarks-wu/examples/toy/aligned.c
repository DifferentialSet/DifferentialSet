#include <unistd.h>
struct __CPROVER_pipet;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef unsigned int size_t;
typedef signed int ssize_t;
typedef unsigned int uint32_t;
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
uint32_t arr[8] = {3u, 2u, 1u, 0u, 7u, 6u, 5u, 4u};
void branch_id(char *str)
{
  ;
}

signed int main()
{
  uint32_t main_i;
  uint32_t main_ret;
  uint32_t main_y_pub;
  uint32_t main_x;
  read(0, (void *) (&main_x), 4u);
  read(0, (void *) (&main_y_pub), 4u);
  uint32_t memop_var_0;
  if (main_x == 0u)
  {
    branch_id("$1");
    {
      uint32_t_secure_load_sensitive(0, decoy_ds_$1__0, decoy_ds_bases_size_$1__0, decoy_ds_size_$1__0);
      uint32_t_secure_store_sensitive(0, 0, decoy_ds_$1__1, decoy_ds_bases_size_$1__1, decoy_ds_size_$1__1);
    }
  }
  else
  {
    branch_id("$0");
    memop_var_0 = uint32_t_secure_load_sensitive((unsigned int *) (&arr[(signed int) (main_y_pub % 8u)]), obsv_ds_$0_0, obsv_ds_bases_size_$0_0, obsv_ds_size_$0_0);
    main_i = memop_var_0;
    uint32_t_secure_store_sensitive(42u, (unsigned int *) (&arr[(signed int) main_i]), obsv_ds_$0_1, obsv_ds_bases_size_$0_1, obsv_ds_size_$0_1);
  }

}

