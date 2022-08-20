// #include "../__libsym__/sym.h"
#include <unistd.h>
#include "tls1_cbc_remove_padding_lucky13.c"

#define LEN 63

#define CAT(x,y) x##y

#define HIGH_INPUT(size, buf) read(STDIN_FILENO, buf, size)
#define LOW_INPUT(size, buf) read(STDIN_FILENO, buf, size)


unsigned long options_pub;              // public
long s3_flags_pub;                      // public
unsigned long flags_pub;                // public
int slicing_cheat_pub;                  // public                  
unsigned char data[LEN];            // private (public address)
unsigned int length_pub = LEN;          // public
unsigned int block_size_pub;            // public
unsigned int mac_size_pub;              // public
int main(){

   // Data is private
  HIGH_INPUT(LEN, data);

  // these lengths are all public
  LOW_INPUT(4, &options_pub);
  LOW_INPUT(4, &s3_flags_pub);
  LOW_INPUT(4, &flags_pub);
  LOW_INPUT(4, &slicing_cheat_pub); // stay away from struct hell
  // LOW_INPUT(4, &block_size_pub);
  block_size_pub = 16;
  LOW_INPUT(4, &mac_size_pub);

  SSL3_STATE s3_obj = { s3_flags_pub };
  //for (int i = 0; i<8;i++) s3_obj.read_sequence[i]=s3_read_sequence[i];
  EVP_CIPHER cipher = { flags_pub };
  EVP_CIPHER_CTX cipher_ctx = { &cipher };
  char dummy_expand;
  // setting the expand field to non-zero deactivates non-constant-time if
  SSL s_obj = { &dummy_expand, options_pub, &s3_obj, &cipher_ctx, slicing_cheat_pub};
  /* SSL s_obj = { NULL, options, &s3_obj, &cipher_ctx, slicing_cheat_pub}; */
  const SSL *s = &s_obj;

  // only the length_pub and data fields are used in the function
  SSL3_RECORD rec_obj = { length_pub, data, 0, NULL };
  SSL3_RECORD *rec = &rec_obj;

  int ret = tls1_cbc_remove_padding(s,rec,block_size_pub,mac_size_pub);
  write(1, data, LEN);
  return 0;
}

// TO VERIFY LOOP ADD IN LINE 1196  assert ($i88 == $i88.shadow);

