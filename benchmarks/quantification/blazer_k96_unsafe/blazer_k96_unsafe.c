#define WIDTH 32

int main() {
    // secret
    int x_sec;

    // public
    int y_pub, n_pub, w=WIDTH;
    n_pub |= 1; // n_pub can't be zero, since it's used as a modulus

    int s;
    // int r = 0;
    int r;
    int k;
    // for (int k = 0; k < w; k++) {
        if (x_sec & (1 << k)) {
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
