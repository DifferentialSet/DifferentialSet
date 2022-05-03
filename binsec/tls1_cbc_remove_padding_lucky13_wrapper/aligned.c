#include <unistd.h>
struct __CPROVER_pipet;
struct evp_cipher_ctx_st;
struct evp_cipher_st;
struct ssl3_record_st;
struct ssl3_state_st;
struct ssl_st;
typedef struct evp_cipher_st EVP_CIPHER;
typedef struct evp_cipher_ctx_st EVP_CIPHER_CTX;
typedef struct ssl_st SSL;
typedef struct ssl3_record_st SSL3_RECORD;
typedef struct ssl3_state_st SSL3_STATE;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef unsigned int size_t;
typedef signed int ssize_t;
signed int CRYPTO_memcmp(const unsigned char *in_a, const char *in_b, size_t len);
inline static __uint16_t __bswap_16(__uint16_t __bsx);
inline static __uint32_t __bswap_32(__uint32_t __bsx);
inline static __uint64_t __bswap_64(__uint64_t __bsx);
inline static __uint16_t __uint16_identity(__uint16_t __x);
inline static __uint32_t __uint32_identity(__uint32_t __x);
inline static __uint64_t __uint64_identity(__uint64_t __x);
void branch_id(char *str);
signed int tls1_cbc_remove_padding(const SSL *s, SSL3_RECORD *rec, unsigned int bs, unsigned int mac_size);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
unsigned long long int uint64_t_secure_load(unsigned long long int *, void **, unsigned int, unsigned int);
void uint64_t_secure_store(unsigned long long int, unsigned long long int *, void **, unsigned int, unsigned int);
unsigned char uint8_t_secure_load(unsigned char *, void **, unsigned int, unsigned int);
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
struct evp_cipher_ctx_st
{
  const EVP_CIPHER *cipher;
};
struct evp_cipher_st
{
  unsigned long int flags;
};
struct ssl3_record_st
{
  unsigned int length;
  unsigned char *data;
  signed int type;
  unsigned char *input;
};
struct ssl3_state_st
{
  signed long int flags;
  unsigned char read_sequence[8];
};
struct ssl_st
{
  char *expand;
  unsigned long int options;
  struct ssl3_state_st *s3;
  EVP_CIPHER_CTX *enc_read_ctx;
  signed int slicing_cheat;
};
unsigned int block_size_pub;
unsigned char data[63];
unsigned long int flags_pub;
unsigned int length_pub = 63u;
unsigned int mac_size_pub;
unsigned long int options_pub;
signed long int s3_flags_pub;
signed int slicing_cheat_pub;
void branch_id(char *str)
{
  ;
}

signed int main()
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
  read(0, (void *) data, 63u);
  read(0, (void *) (&options_pub), 4u);
  read(0, (void *) (&s3_flags_pub), 4u);
  read(0, (void *) (&flags_pub), 4u);
  read(0, (void *) (&slicing_cheat_pub), 4u);
  block_size_pub = 16u;
  read(0, (void *) (&mac_size_pub), 4u);
  main_s3_obj = (SSL3_STATE){.flags = s3_flags_pub, .read_sequence = {0, 0, 0, 0, 0, 0, 0, 0}};
  main_cipher = (EVP_CIPHER){.flags = flags_pub};
  main_cipher_ctx = (EVP_CIPHER_CTX){.cipher = &main_cipher};
  main_s_obj = (SSL){.expand = &main_dummy_expand, .options = options_pub, .s3 = &main_s3_obj, .enc_read_ctx = &main_cipher_ctx, .slicing_cheat = slicing_cheat_pub};
  main_s = &main_s_obj;
  main_rec_obj = (SSL3_RECORD){.length = length_pub, .data = data, .type = 0, .input = (unsigned char *) ((void *) 0)};
  main_rec = &main_rec_obj;
  ;
  tls1_cbc_remove_padding_s = main_s;
  tls1_cbc_remove_padding_rec = main_rec;
  tls1_cbc_remove_padding_bs = block_size_pub;
  tls1_cbc_remove_padding_mac_size = mac_size_pub;
  unsigned int memop_var_0;
  memop_var_0 = uint32_t_secure_load_single((unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  tls1_cbc_remove_padding_l = (signed int) memop_var_0;
  unsigned char *memop_var_1;
  memop_var_1 = uint64_t_secure_load_single((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
  unsigned char memop_var_2;
  memop_var_2 = uint8_t_secure_load_single((unsigned char *) (&memop_var_1[tls1_cbc_remove_padding_l - 1]), obsv_ds__2, obsv_ds_bases_size__2, obsv_ds_size__2);
  tls1_cbc_remove_padding_i = (signed int) memop_var_2;
  tls1_cbc_remove_padding_ii = tls1_cbc_remove_padding_i;
  tls1_cbc_remove_padding_i = tls1_cbc_remove_padding_i + 1;
  unsigned long int memop_var_3;
  memop_var_3 = uint64_t_secure_load_single((unsigned long long int *) (&tls1_cbc_remove_padding_s->options), obsv_ds__3, obsv_ds_bases_size__3, obsv_ds_size__3);
  unsigned long int memop_var_4;
  struct ssl3_state_st *memop_var_5;
  signed long int memop_var_6;
  struct ssl3_state_st *memop_var_7;
  struct ssl3_state_st *memop_var_9;
  signed long int memop_var_10;
  if ((memop_var_3 & 512ul) == 0ul)
  {
    branch_id("$1");
  }
  else
  {
    branch_id("$0");
    memop_var_4 = uint64_t_secure_load_single((unsigned long long int *) (&(*((unsigned long int *) tls1_cbc_remove_padding_s->s3->read_sequence))), obsv_ds_$0_4, obsv_ds_bases_size_$0_4, obsv_ds_size_$0_4);
    if (!(memop_var_4 == 0ul))
    {
      branch_id("$0$1");
    }
    else
    {
      branch_id("$0$0");
      if (!((tls1_cbc_remove_padding_ii & 1) == 0))
      {
        branch_id("$0$0$1");
        {
          uint64_t_secure_load_single_sensitive(0, obsv_ds_$0$0$0_5, obsv_ds_bases_size_$0$0$0_5, obsv_ds_size_$0$0$0_5);
          uint64_t_secure_load_single_sensitive(0, obsv_ds_$0$0$0_6, obsv_ds_bases_size_$0$0$0_6, obsv_ds_size_$0$0$0_6);
          uint64_t_secure_load_single_sensitive(0, obsv_ds_$0$0$0_7, obsv_ds_bases_size_$0$0$0_7, obsv_ds_size_$0$0$0_7);
          uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$0$0$0_8, obsv_ds_bases_size_$0$0$0_8, obsv_ds_size_$0$0$0_8);
        }
      }
      else
      {
        branch_id("$0$0$0");
        memop_var_5 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_s->s3), obsv_ds_$0$0$0_5, obsv_ds_bases_size_$0$0$0_5, obsv_ds_size_$0$0$0_5);
        memop_var_6 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&memop_var_5->flags), obsv_ds_$0$0$0_6, obsv_ds_bases_size_$0$0$0_6, obsv_ds_size_$0$0$0_6);
        memop_var_7 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_s->s3), obsv_ds_$0$0$0_7, obsv_ds_bases_size_$0$0$0_7, obsv_ds_size_$0$0$0_7);
        uint64_t_secure_store_single_sensitive((unsigned long long int) (memop_var_6 | 8l), (unsigned long long int *) (&memop_var_7->flags), obsv_ds_$0$0$0_8, obsv_ds_bases_size_$0$0$0_8, obsv_ds_size_$0$0$0_8);
      }

    }

    memop_var_9 = uint64_t_secure_load_single((unsigned long long int *) (&tls1_cbc_remove_padding_s->s3), obsv_ds_$0_9, obsv_ds_bases_size_$0_9, obsv_ds_size_$0_9);
    memop_var_10 = uint64_t_secure_load_single((unsigned long long int *) (&memop_var_9->flags), obsv_ds_$0_10, obsv_ds_bases_size_$0_10, obsv_ds_size_$0_10);
    if ((memop_var_10 & 8l) == 0l)
    {
      branch_id("$0$3");
    }
    else
    {
      branch_id("$0$2");
      tls1_cbc_remove_padding_i = tls1_cbc_remove_padding_i - 1;
    }

  }

  unsigned int memop_var_11;
  memop_var_11 = uint32_t_secure_load_single((unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds__11, obsv_ds_bases_size__11, obsv_ds_size__11);
  if (!(((unsigned int) ((signed int) memop_var_11)) >= (((unsigned int) tls1_cbc_remove_padding_i) + tls1_cbc_remove_padding_bs)))
  {
    branch_id("$2");
    {
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3_12, obsv_ds_bases_size_$3_12, obsv_ds_size_$3_12);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 47, 0, 16, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1_14, obsv_ds_bases_size_$3$1_14, obsv_ds_size_$3$1_14);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 46, 0, 17, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1_16, obsv_ds_bases_size_$3$1$1_16, obsv_ds_size_$3$1$1_16);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 45, 0, 18, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1_18, obsv_ds_bases_size_$3$1$1$1_18, obsv_ds_size_$3$1$1$1_18);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 44, 0, 19, 62, 0, 0);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
    }
    main_return_value_tls1_cbc_remove_padding = -1;
    goto __CPROVER_DUMP_L17;
  }

  branch_id("$3");
  tls1_cbc_remove_padding_j = (signed int) (tls1_cbc_remove_padding_l - tls1_cbc_remove_padding_i);
  unsigned char *memop_var_12;
  memop_var_12 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3_12, obsv_ds_bases_size_$3_12, obsv_ds_size_$3_12);
  unsigned char memop_var_13;
  memop_var_13 = uint8_t_secure_load_sensitive_onebase((unsigned char *) (&memop_var_12[tls1_cbc_remove_padding_j]), (char *) data, 0, 47, 0, 16, 62, 0, 0);
  if (!(((signed int) memop_var_13) == tls1_cbc_remove_padding_ii))
  {
    branch_id("$3$0");
    {
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1_14, obsv_ds_bases_size_$3$1_14, obsv_ds_size_$3$1_14);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 46, 0, 17, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1_16, obsv_ds_bases_size_$3$1$1_16, obsv_ds_size_$3$1$1_16);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 45, 0, 18, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1_18, obsv_ds_bases_size_$3$1$1$1_18, obsv_ds_size_$3$1$1$1_18);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 44, 0, 19, 62, 0, 0);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
    }
    main_return_value_tls1_cbc_remove_padding = -1;
    goto __CPROVER_DUMP_L17;
  }

  branch_id("$3$1");
  tls1_cbc_remove_padding_j = tls1_cbc_remove_padding_j + 1;
  unsigned char *memop_var_14;
  memop_var_14 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3$1_14, obsv_ds_bases_size_$3$1_14, obsv_ds_size_$3$1_14);
  unsigned char memop_var_15;
  memop_var_15 = uint8_t_secure_load_sensitive_onebase((unsigned char *) (&memop_var_14[tls1_cbc_remove_padding_j]), (char *) data, 0, 46, 0, 17, 62, 0, 0);
  if (!(((signed int) memop_var_15) == tls1_cbc_remove_padding_ii))
  {
    branch_id("$3$1$0");
    {
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1_16, obsv_ds_bases_size_$3$1$1_16, obsv_ds_size_$3$1$1_16);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 45, 0, 18, 62, 0, 0);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1_18, obsv_ds_bases_size_$3$1$1$1_18, obsv_ds_size_$3$1$1$1_18);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 44, 0, 19, 62, 0, 0);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
    }
    main_return_value_tls1_cbc_remove_padding = -1;
    goto __CPROVER_DUMP_L17;
  }

  branch_id("$3$1$1");
  tls1_cbc_remove_padding_j = tls1_cbc_remove_padding_j + 1;
  unsigned char *memop_var_16;
  memop_var_16 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3$1$1_16, obsv_ds_bases_size_$3$1$1_16, obsv_ds_size_$3$1$1_16);
  unsigned char memop_var_17;
  memop_var_17 = uint8_t_secure_load_sensitive_onebase((unsigned char *) (&memop_var_16[tls1_cbc_remove_padding_j]), (char *) data, 0, 45, 0, 18, 62, 0, 0);
  if (!(((signed int) memop_var_17) == tls1_cbc_remove_padding_ii))
  {
    branch_id("$3$1$1$0");
    {
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1_18, obsv_ds_bases_size_$3$1$1$1_18, obsv_ds_size_$3$1$1$1_18);
      uint8_t_secure_load_sensitive_onebase(0, (char *) data, 0, 44, 0, 19, 62, 0, 0);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
    }
    main_return_value_tls1_cbc_remove_padding = -1;
    goto __CPROVER_DUMP_L17;
  }

  branch_id("$3$1$1$1");
  tls1_cbc_remove_padding_j = tls1_cbc_remove_padding_j + 1;
  unsigned char *memop_var_18;
  memop_var_18 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3$1$1$1_18, obsv_ds_bases_size_$3$1$1$1_18, obsv_ds_size_$3$1$1$1_18);
  unsigned char memop_var_19;
  memop_var_19 = uint8_t_secure_load_sensitive_onebase((unsigned char *) (&memop_var_18[tls1_cbc_remove_padding_j]), (char *) data, 0, 44, 0, 19, 62, 0, 0);
  if (!(((signed int) memop_var_19) == tls1_cbc_remove_padding_ii))
  {
    branch_id("$3$1$1$1$0");
    {
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
      uint64_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
      uint64_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
      uint32_t_secure_load_single_sensitive(0, obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
      uint32_t_secure_store_single_sensitive(0, 0, obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
    }
    main_return_value_tls1_cbc_remove_padding = -1;
    goto __CPROVER_DUMP_L17;
  }

  branch_id("$3$1$1$1$1");
  tls1_cbc_remove_padding_j = tls1_cbc_remove_padding_j + 1;
  unsigned int memop_var_20;
  memop_var_20 = uint32_t_secure_load_single_sensitive((unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds_$3$1$1$1$1_20, obsv_ds_bases_size_$3$1$1$1$1_20, obsv_ds_size_$3$1$1$1$1_20);
  uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_20 - ((unsigned int) tls1_cbc_remove_padding_i)), (unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds_$3$1$1$1$1_21, obsv_ds_bases_size_$3$1$1$1$1_21, obsv_ds_size_$3$1$1$1$1_21);
  unsigned char *memop_var_22;
  memop_var_22 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3$1$1$1$1_22, obsv_ds_bases_size_$3$1$1$1$1_22, obsv_ds_size_$3$1$1$1$1_22);
  uint64_t_secure_store_single_sensitive((unsigned long long int) (memop_var_22 + ((signed int) tls1_cbc_remove_padding_bs)), (unsigned long long int *) (&tls1_cbc_remove_padding_rec->data), obsv_ds_$3$1$1$1$1_23, obsv_ds_bases_size_$3$1$1$1$1_23, obsv_ds_size_$3$1$1$1$1_23);
  unsigned char *memop_var_24;
  memop_var_24 = uint64_t_secure_load_single_sensitive((unsigned long long int *) (&tls1_cbc_remove_padding_rec->input), obsv_ds_$3$1$1$1$1_24, obsv_ds_bases_size_$3$1$1$1$1_24, obsv_ds_size_$3$1$1$1$1_24);
  uint64_t_secure_store_single_sensitive((unsigned long long int) (memop_var_24 + ((signed int) tls1_cbc_remove_padding_bs)), (unsigned long long int *) (&tls1_cbc_remove_padding_rec->input), obsv_ds_$3$1$1$1$1_25, obsv_ds_bases_size_$3$1$1$1$1_25, obsv_ds_size_$3$1$1$1$1_25);
  unsigned int memop_var_26;
  memop_var_26 = uint32_t_secure_load_single_sensitive((unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds_$3$1$1$1$1_26, obsv_ds_bases_size_$3$1$1$1$1_26, obsv_ds_size_$3$1$1$1$1_26);
  uint32_t_secure_store_single_sensitive((unsigned int) (memop_var_26 - tls1_cbc_remove_padding_bs), (unsigned int *) (&tls1_cbc_remove_padding_rec->length), obsv_ds_$3$1$1$1$1_27, obsv_ds_bases_size_$3$1$1$1$1_27, obsv_ds_size_$3$1$1$1$1_27);
  main_return_value_tls1_cbc_remove_padding = 1;
  ;
  __CPROVER_DUMP_L17:
  ;

  main_ret = main_return_value_tls1_cbc_remove_padding;
  write(1, (const void *) data, 63u);
  return 0;
}

