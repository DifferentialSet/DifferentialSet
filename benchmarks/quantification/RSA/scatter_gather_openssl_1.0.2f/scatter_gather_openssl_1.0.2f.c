#include <stdint.h>

#define PRECOMPUTE_SIZE 384
#define SPACING 8

int main() {
    char p[PRECOMPUTE_SIZE];
    char buf[8*PRECOMPUTE_SIZE];
    uint32_t k_sec, i;
    // __CPROVER_assume(0 <= k_sec && k_sec <= 7);
    if (k_sec <= 7) {
        for (i = 0; i < PRECOMPUTE_SIZE; i++){
            p[i] = buf[k_sec+i*SPACING];
        }
    }

}