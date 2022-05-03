#include <unistd.h>

#define bound 200

int main() {
    int a[bound];
    int k, o;

    read(0, &k, sizeof(k));
    read(0, &o, sizeof(o));

    for (int i = 0; i < bound; i++) {

        if ((i+k) % 2 == 0) {
            a[((unsigned)k+i) % bound] |= 1;
        }
    }

    write(1, &a[o], sizeof(a[o]));
}