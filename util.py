def clean_up_code(path):
    with open(path, "r") as f:
        code = f.read()
    with open(path, "w") as f:
        included_header = "#include <stdint.h>\n#include <immintrin.h>\n#include <stdbool.h>\n#include <assert.h>\n"
        code = included_header + code
        import re
        # remove typedef from CBMC since they conflicts with #include
        unwanted_strings = [
"typedef unsigned short int __uint16_t;",
"typedef unsigned int __uint32_t;",
"typedef unsigned long long int __uint64_t;",
"typedef unsigned int size_t;",
"typedef signed int ssize_t;",
"typedef unsigned long long int uint64_t;",
"typedef unsigned int uint32_t;",
"typedef unsigned short uint16_t;",
"typedef unsigned char uint8_t;",
"inline static __uint16_t __bswap_16(__uint16_t __bsx);",
"inline static __uint32_t __bswap_32(__uint32_t __bsx);",
"inline static __uint64_t __bswap_64(__uint64_t __bsx);",
"inline static __uint16_t __uint16_identity(__uint16_t __x);",
"inline static __uint32_t __uint32_identity(__uint32_t __x);",
"inline static __uint64_t __uint64_identity(__uint64_t __x);",
"void branch_id(char *str);",
"unsigned long long int uint64_t_secure_load(unsigned long long int *, void **, unsigned int, unsigned int);",
"void uint64_t_secure_store(unsigned long long int, unsigned long long int *, void **, unsigned int, unsigned int);",
"unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);",
"void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);",
"unsigned short int uint16_t_secure_load(unsigned short int *, void **, unsigned int, unsigned int);",
"void uint16_t_secure_store(unsigned shortint , unsigned short int *, void **, unsigned int, unsigned int);",
"unsigned char uint8_t_secure_load(unsigned char *, void **, unsigned int, unsigned int);",
"void uint8_t_secure_store(unsigned char, unsigned char *, void **, unsigned int, unsigned int);",
"nondet_signed_int();",
"""
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
"""
        ]
        for unwanted_string in unwanted_strings:
            code = code.replace(unwanted_string, "")

        # remove assumptions
        code = re.sub(r"__CPROVER_assume\(.*?;\n", "", code)
        f.write(code)