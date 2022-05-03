#include <unistd.h>

#define SIZE 4
int main() {
    int in[SIZE] = {0}, out[SIZE] = {0}, threshold, i, j0, j1;
    read(0, in, sizeof(in));
    read(0, &threshold, sizeof(threshold));
    j0 = 0;
    j1 = SIZE-1;
    for (i = 0; i < SIZE; i++) {
        if (in[i] < threshold) {
            out[j0++] = in[i];
        } else {
            out[j1--] = in[i];
        }
    }
    write(1, out, sizeof(out));
}