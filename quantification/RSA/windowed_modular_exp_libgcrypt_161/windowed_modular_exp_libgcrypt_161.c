#include <stdint.h>

int main() {
    uint32_t e0, base_u, base_u_size, bp, bsize;
    uint32_t b_2i3[7], b_2i3size[7];

    if (e0 <= 7) {
        if (e0 == 0) {
            base_u = bp;
            base_u_size = bsize;
        } else {
            base_u = b_2i3[e0 - 1];
            base_u_size = b_2i3size[e0 - 1];
        }
    }
}