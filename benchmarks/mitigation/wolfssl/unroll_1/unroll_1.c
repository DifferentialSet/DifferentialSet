#include <wolfssl/options.h>
#include <wolfssl/wolfcrypt/settings.h>
#include <wolfssl/wolfcrypt/ecc.h>
#include <wolfssl/wolfcrypt/rsa.h>
#include <wolfssl/wolfcrypt/asn_public.h>
#include <wolfssl/wolfcrypt/integer.h>
#include <wolfssl/error-ssl.h>
#include <wolfssl/ssl.h>
#include <assert.h>

#define KEY32 32

#define check(ret) assert(!(ret))

static wcchar fp_s_rmap = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                     "abcdefghijklmnopqrstuvwxyz+/";

mp_int my_key;
int     ret = 0;
ecc_point G, R;
mp_int a, mod;
ecc_key    key2, key3;
int main()
{

    wc_ecc_init(&key2);
    wc_ecc_init(&key3);

    #define INPUT_SIZE 32
    read(0, ((unsigned char*)my_key.dp), INPUT_SIZE);
    my_key.sign = 0;
    my_key.used = INPUT_SIZE/sizeof(unsigned long);

    wc_ecc_mulmod(&my_key, &key2.pubkey, &key3.pubkey, &key2.k, &key3.k, 0);

    write(1, ((unsigned char*)key3.pubkey.x[0].dp), INPUT_SIZE);
    write(1, ((unsigned char*)key3.pubkey.y[0].dp), INPUT_SIZE);
    write(1, ((unsigned char*)key3.pubkey.z[0].dp), INPUT_SIZE);

    wc_ecc_free(&key2);
    wc_ecc_free(&key3);
    return ret;
}
