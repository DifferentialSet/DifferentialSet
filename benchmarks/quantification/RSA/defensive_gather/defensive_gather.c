#include <stdint.h>

#define PRECOMPUTE_SIZE 384
#define SPACING 8

int main() {
    char r[PRECOMPUTE_SIZE];
    char buf[7*PRECOMPUTE_SIZE];
    uint32_t k_sec, i, j;
    if (k_sec <= 7) {
        for (i = 0; i < PRECOMPUTE_SIZE; i++){
            char tmp = 0;
            for (j = 0; j < SPACING; j++) {
                uint32_t s = (k_sec == j);
                tmp |= (buf[i*SPACING+j] & (0-s));
            }
            r[i] = tmp;
        }
    }
}