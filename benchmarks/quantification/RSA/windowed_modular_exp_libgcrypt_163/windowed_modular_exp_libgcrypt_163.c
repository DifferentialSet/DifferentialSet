#include <stdint.h>

int main() {
    uint32_t v, r[7], p[7][7];
    uint32_t k_sec, s, i, j;
    for (i = 0; i < 7; i++) {
        for (j = 0; j < 7; j++) {
            v = p[i][j];
            s = (i == k_sec);
            r[j] = r[j] ^ ((0-s) & (r[j] ^ v));
        }
    }
}