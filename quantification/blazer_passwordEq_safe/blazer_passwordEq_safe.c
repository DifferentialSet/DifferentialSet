#include <stdbool.h>

#define WIDTH 16

int main() {
    // secret
    int a[WIDTH]; // CacheAudit doesn't support char comparison, so we use int
    // public
    // int b[WIDTH] = {516110120, 458738422, 480950566, 1976971347, 1144165536, 1873016972, 936388514, 178847483, 1419322561, 509310118, 686890236, 278274521, 1474630618, 868631604, 2098829775, 670669400};
    int b[WIDTH];
    unsigned aLen=WIDTH, bLen=WIDTH;

    bool equal = true, shmequal = true;

    // if (aLen != bLen) {
    //     equal = false;
    // }
    unsigned i;
    for (i = 0; i < WIDTH; i++) {
        if (a[i] != b[i]) {
            equal = false;
        } else {
            shmequal = true;
        }
    }
    return equal;
}