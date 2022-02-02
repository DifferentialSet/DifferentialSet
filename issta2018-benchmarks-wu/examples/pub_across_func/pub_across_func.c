#include <stdio.h>

#define LOAD32H(x, y)                            \
     { x = ((unsigned long)((y)[0] & 255)<<24) | \
           ((unsigned long)((y)[1] & 255)<<16) | \
           ((unsigned long)((y)[2] & 255)<<8)  | \
           ((unsigned long)((y)[3] & 255)); }

int main() {
    int v_pub[2], im[2], x;

    // im[0] = ((unsigned long)((v_pub+0)[0] & 255)<<24) | ((unsigned long)((v_pub+0)[1] & 255)<<16) | ((unsigned long)((v_pub+0)[2] & 255)<<8) | ((unsigned long)((v_pub+0)[3] & 255));
    // im[1] = ((unsigned long)((v_pub+4)[0] & 255)<<24) | ((unsigned long)((v_pub+4)[1] & 255)<<16) | ((unsigned long)((v_pub+4)[2] & 255)<<8) | ((unsigned long)((v_pub+4)[3] & 255));
    LOAD32H(im[0], v_pub+0);
    LOAD32H(im[1], v_pub+4);
    int r = func(im, x);
    write(1, &r, sizeof(r));
}

int func(int *a, int b) {
    int arr[10];

    int ret = arr[a[0]] + arr[b];
    return ret;
}