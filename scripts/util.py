def clean_up_code(path):
    with open(path, "r") as f:
        code = f.read()
    with open(path, "w") as f:
        branch_id_impl = "\nvoid branch_id(char *str) {}\n"
        if branch_id_impl not in code:
            code = branch_id_impl + code

        included_header = "#include <stdint.h>\n#include <immintrin.h>\n#include <stdbool.h>\n#include <assert.h>\n"
        code = included_header + code
        import re
        # remove typedef from CBMC since they conflicts with #include
        unwanted_strings = [
"void * __builtin___memcpy_chk(void *, const void *, __CPROVER_size_t, __CPROVER_size_t);",
"void *__builtin___memcpy_chk(void *, const void *, __CPROVER_size_t, __CPROVER_size_t);",
"static void *__builtin___memcpy_chk__return_value;",
"typedef unsigned long long int __dev_t;",
"typedef unsigned int __nlink_t;",
"typedef signed long long int __off64_t;",
"""
typedef struct __pthread_internal_slist
{
  // __next
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;""",
"typedef union anonymous$2 pthread_mutexattr_t;",
"""
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;""",
"""
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;""",
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
"unsigned long long int uint64_t_secure_load(unsigned long long int *, void **, unsigned int, unsigned int);",
"void uint64_t_secure_store(unsigned long long int, unsigned long long int *, void **, unsigned int, unsigned int);",
"unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);",
"void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);",
"unsigned short int uint16_t_secure_load(unsigned short int *, void **, unsigned int, unsigned int);",
"void uint16_t_secure_store(unsigned shortint , unsigned short int *, void **, unsigned int, unsigned int);",
"unsigned char uint8_t_secure_load(unsigned char *, void **, unsigned int, unsigned int);",
"void uint8_t_secure_store(unsigned char, unsigned char *, void **, unsigned int, unsigned int);",
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
""",
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
}""",
"""
static inline void * memcpy(void * restrict __dest, const void * restrict __src, size_t __len)
{
  void *return_value___builtin___memcpy_chk;
  __builtin___memcpy_chk(__dest, __src, (__CPROVER_size_t)__len, 4294967295u);
  return_value___builtin___memcpy_chk = nondet_0();
  memcpy__return_value = return_value___builtin___memcpy_chk;
}""",
"""
inline static void *memcpy(void * restrict __dest, const void * restrict __src, size_t __len)
{
  void *return_value___builtin___memcpy_chk;
  __builtin___memcpy_chk(__dest, __src, (__CPROVER_size_t) __len, 4294967295u);
  return_value___builtin___memcpy_chk = nondet_0();
  memcpy__return_value = return_value___builtin___memcpy_chk;
}""",
"assert(0);",
"assert(0 != 0);",
"main__return_value = nondet_signed_int();"
        ]

        code = code.replace("nondet_signed_int()", "0")

        unwanted_regexs = [
          ".*?\= \n",
          "typedef union anonymous\$?\d* pthread_mutexattr_t;",
        ]
        for unwanted_string in unwanted_strings:
            code = code.replace(unwanted_string, "")

        for unwanted_regex in unwanted_regexs:
            code, _ = re.subn(unwanted_regex, "", code)

        # remove assumptions
        code = re.sub(r"__CPROVER_assume\(.*?;\n", "", code)


        # transform malloc call
        lines = code.split("\n")
        for i in range(len(lines)):
          if "malloc(" in lines[i]:
            assert("return_value_malloc" in lines[i+1])
            lhs = lines[i+1].split("=")[0].strip()
            lines[i] = lhs + " = " + lines[i]
            lines[i+1] = ""
          if "strlen(" in lines[i]:
            assert("return_value_strlen" in lines[i+1])
            lhs = lines[i+1].split("=")[0].strip()
            lines[i] = lhs + " = " + lines[i]
            lines[i+1] = ""
          m = re.search("&dynamic_object(\d+)", lines[i])
          if m:
            lines[i] = lines[i].replace(m.group(0), "pointer_list[" + m.group(1) + "]")
          m = re.search(" dynamic_object(\d+)#\d*.", lines[i])
          if m:
            lines[i] = lines[i].replace(m.group(0), "((ecc_point*)pointer_list[{}])->".format(m.group(1)))
        code = "\n".join(lines)


        f.write(code)
