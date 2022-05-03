#define WIDTH 32

int main() {
    // secret
    int x;

    // public
    int y_pub, n_pub, w=WIDTH;
    int s = 1;
    int r = 0;
    int k;
    // for (int k = 0; k < w; k++) {
        if (x & (1 << k)) {
            r = standardMultiply(s, y_pub) % n_pub;
        } else {
            r = s;
        }
        s = standardMultiply(r, r) % n_pub;
    // }
}

int standardMultiply(int x, int y) {
    int ret = 0;
    for (int i = 0; i < WIDTH; i++) {
        if (y & (1 << i)) {
            ret += x << i;
        }
    }
    return ret;
}
