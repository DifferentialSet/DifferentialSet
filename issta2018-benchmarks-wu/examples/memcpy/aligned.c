#include <string.h>
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
signed int func();
extern void *memcpy(void *dst, const void *src, size_t n);
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
  signed int func_dest1[5];
  signed int func_dest0[5];
  signed int func_src[5];
  signed int main_dest1[5];
  signed int main_dest0[5];
  signed int main_src[5];
  read(0, (void *) main_src, sizeof(signed int [5]));
  memset((void *) main_dest0, 0, sizeof(signed int [5]));
  memcpy((void *) main_dest0, (const void *) main_src, sizeof(signed int [5]));
  memcpy((void *) main_dest1, (const void *) main_dest0, sizeof(signed int [5]));
  ;
  memset((void *) func_dest0, 0, sizeof(signed int [5]));
  memcpy((void *) func_dest0, (const void *) func_src, sizeof(signed int [5]));
  memcpy((void *) func_dest1, (const void *) func_dest0, sizeof(signed int [5]));
  nondet_signed_int();
  ;
  write(1, (const void *) main_dest1, sizeof(signed int [5]));
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

