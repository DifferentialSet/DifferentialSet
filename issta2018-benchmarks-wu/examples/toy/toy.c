#include <stdint.h>
#include <stdio.h>
#include <unistd.h>


uint32_t arr[8] = {3,2,1,0,7,6,5,4};

int main() {
    uint32_t x, y_pub, ret;
    read(0, &x, 4);
    read(0, &y_pub, 4);
    if (x) {
        uint32_t i = arr[y_pub%8];
        arr[i] = 42;
    }
}