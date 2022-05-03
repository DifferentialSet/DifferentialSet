#include "stdio.h"

int arr[32];
int main() {
    unsigned p_pub, s_sec;
    int res;

    read(0, &arr, sizeof(arr));
    read(0, &p_pub, sizeof(p_pub)); p_pub = p_pub % 16;
    read(0, &s_sec, sizeof(s_sec)); s_sec = s_sec % 16;
    
    // if (s_sec < 0 || s_sec >= 16 || p_pub < 0 || p_pub >= 16) {
    //     return 0;
    // }

    __CPROVER_assume(s_sec >= 0 && s_sec < 16);
    __CPROVER_assume(p_pub >= 0 && p_pub < 16);
    if ((p_pub + s_sec) % 2 == 0) {
        res = arr[s_sec % 16];
    } else {
        res = arr[s_sec % 16 + 16];
    }

    write(1, &res, sizeof(res));
}