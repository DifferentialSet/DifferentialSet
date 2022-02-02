#include <stdint.h>

int main() {
    uint32_t num, e, m, s = 1;
    uint32_t y = num, res = 0, count = 0;

    m = 1717;

    __CPROVER_assume(0<= num && num <= 1717);
    __CPROVER_assume(0 <= e && e <= 1717);
    while (e > 0) {
        if (e % 2 == 1) {
            uint32_t tmp = s * y;
            count++;
            if (tmp > m) {
                tmp = tmp - m;
                count++;
            }
            res = tmp % m;
            count++;
        } else {
            res = s;
            count++;
        }
        s = (res * res) % m;
        e /= 2;
        count ++;
    }

    uint32_t final_count = count;
}