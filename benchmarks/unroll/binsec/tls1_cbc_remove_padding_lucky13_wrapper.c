#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int
#ifndef NULL
#define NULL ((void*)0)
#endif

// tag-evp_cipher_ctx_st
// file tls1_cbc_remove_padding_lucky13.c line 22
struct evp_cipher_ctx_st;

// tag-evp_cipher_st
// file tls1_cbc_remove_padding_lucky13.c line 18
struct evp_cipher_st;

// tag-ssl3_record_st
// file tls1_cbc_remove_padding_lucky13.c line 6
struct ssl3_record_st;

// tag-ssl3_state_st
// file tls1_cbc_remove_padding_lucky13.c line 13
struct ssl3_state_st;

// tag-ssl_st
// file tls1_cbc_remove_padding_lucky13.c line 26
struct ssl_st;


typedef struct evp_cipher_st EVP_CIPHER;
typedef struct evp_cipher_ctx_st EVP_CIPHER_CTX;
typedef struct ssl_st SSL;
typedef struct ssl3_record_st SSL3_RECORD;
typedef struct ssl3_state_st SSL3_STATE;



// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// tls1_cbc_remove_padding
// file tls1_cbc_remove_padding_lucky13.c line 68
signed int tls1_cbc_remove_padding(const SSL *s, SSL3_RECORD *rec, unsigned int bs, unsigned int mac_size);

struct evp_cipher_ctx_st
{
  // cipher
  const EVP_CIPHER *cipher;
};

struct evp_cipher_st
{
  // flags
  unsigned long int flags;
};

struct ssl3_record_st
{
  // length
  unsigned int length;
  // data
  unsigned char *data;
  // type
  signed int type;
  // input
  unsigned char *input;
};

struct ssl3_state_st
{
  // flags
  signed long int flags;
  // read_sequence
  unsigned char read_sequence[8];
};

struct ssl_st
{
  // expand
  char *expand;
  // options
  unsigned long int options;
  // s3
  struct ssl3_state_st *s3;
  // enc_read_ctx
  EVP_CIPHER_CTX *enc_read_ctx;
  // slicing_cheat
  signed int slicing_cheat;
};


// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// block_size_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 19
unsigned int block_size_pub;
// flags_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 15
unsigned long int flags_pub;
// length_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 18
unsigned int length_pub=63u;
// mac_size_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 20
unsigned int mac_size_pub;
// main__return_value
// 
static signed int main__return_value;
// options_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 13
unsigned long int options_pub;
// read__return_value
// 
static ssize_t read__return_value;
// s3_flags_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 14
signed long int s3_flags_pub;
// slicing_cheat_pub
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 16
signed int slicing_cheat_pub;
// tls1_cbc_remove_padding__return_value
// 
static signed int tls1_cbc_remove_padding__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file tls1_cbc_remove_padding_lucky13_wrapper.c line 21
signed int main(int argc, char** argv)
{
  signed int tls1_cbc_remove_padding_l;
  signed int tls1_cbc_remove_padding_j;
  signed int tls1_cbc_remove_padding_i;
  signed int tls1_cbc_remove_padding_ii;
  unsigned int tls1_cbc_remove_padding_mac_size;
  unsigned int tls1_cbc_remove_padding_bs;
  SSL3_RECORD *tls1_cbc_remove_padding_rec;
  const SSL *tls1_cbc_remove_padding_s;
  signed int main_return_value_tls1_cbc_remove_padding;
  signed int main_ret;
  SSL3_RECORD *main_rec;
  SSL3_RECORD main_rec_obj;
  const SSL *main_s;
  SSL main_s_obj;
  char main_dummy_expand;
  EVP_CIPHER_CTX main_cipher_ctx;
  EVP_CIPHER main_cipher;
  SSL3_STATE main_s3_obj;
  unsigned char main_data[63];
  read(0, (void *)main_data, 63ul);
  read(0, (void *)&options_pub, 4ul);
  read(0, (void *)&s3_flags_pub, 4ul);
  read(0, (void *)&flags_pub, 4ul);
  read(0, (void *)&slicing_cheat_pub, 4ul);
  block_size_pub = 16u;
  read(0, (void *)&mac_size_pub, 4ul);
  main_s3_obj = (SSL3_STATE){ .flags=s3_flags_pub, .read_sequence={ 0, 0, 0, 0, 0, 0, 0, 0 } };
  main_cipher = (EVP_CIPHER){ .flags=flags_pub };
  main_cipher_ctx = (EVP_CIPHER_CTX){ .cipher=&main_cipher };
  main_s_obj = (SSL){ .expand=&main_dummy_expand, .options=options_pub, .s3=&main_s3_obj,
    .enc_read_ctx=&main_cipher_ctx, .slicing_cheat=slicing_cheat_pub };
  main_s = &main_s_obj;
  main_rec_obj = (SSL3_RECORD){ .length=length_pub, .data=main_data, .type=0, .input=((unsigned char *)NULL) };
  main_rec = &main_rec_obj;
  /* begin function tls1_cbc_remove_padding */
  ;
  tls1_cbc_remove_padding_s = main_s;
  tls1_cbc_remove_padding_rec = main_rec;
  tls1_cbc_remove_padding_bs = block_size_pub;
  tls1_cbc_remove_padding_mac_size = mac_size_pub;
  tls1_cbc_remove_padding_l = (signed int)tls1_cbc_remove_padding_rec->length;
  tls1_cbc_remove_padding_i = (signed int)tls1_cbc_remove_padding_rec->data[tls1_cbc_remove_padding_l - 1];
  tls1_cbc_remove_padding_ii = tls1_cbc_remove_padding_i;
  tls1_cbc_remove_padding_i = tls1_cbc_remove_padding_i + 1;
  if(!((tls1_cbc_remove_padding_s->options & 512ul) == 0ul))
  {
    if(*((unsigned long int *)tls1_cbc_remove_padding_s->s3->read_sequence) == 0ul)
    {
      if((tls1_cbc_remove_padding_ii & 1) == 0)
        tls1_cbc_remove_padding_s->s3->flags = tls1_cbc_remove_padding_s->s3->flags | 8l;

    }

    if(!((tls1_cbc_remove_padding_s->s3->flags & 8l) == 0l))
      tls1_cbc_remove_padding_i = tls1_cbc_remove_padding_i - 1;

  }

  if(!((unsigned int)(signed int)tls1_cbc_remove_padding_rec->length >= (unsigned int)tls1_cbc_remove_padding_i + tls1_cbc_remove_padding_bs))
    main_return_value_tls1_cbc_remove_padding = -1;

  else
  {
    tls1_cbc_remove_padding_j = (signed int)(tls1_cbc_remove_padding_l - tls1_cbc_remove_padding_i);
    tls1_cbc_remove_padding_rec->length = tls1_cbc_remove_padding_rec->length - (unsigned int)tls1_cbc_remove_padding_i;
    tls1_cbc_remove_padding_rec->data = tls1_cbc_remove_padding_rec->data + (signed int)tls1_cbc_remove_padding_bs;
    tls1_cbc_remove_padding_rec->input = tls1_cbc_remove_padding_rec->input + (signed int)tls1_cbc_remove_padding_bs;
    tls1_cbc_remove_padding_rec->length = tls1_cbc_remove_padding_rec->length - tls1_cbc_remove_padding_bs;
    main_return_value_tls1_cbc_remove_padding = 1;
  }
  /* end function tls1_cbc_remove_padding */
  ;
  main_ret = main_return_value_tls1_cbc_remove_padding;
  write(1, (const void *)main_data, 63ul);
  main__return_value = 0;
}

