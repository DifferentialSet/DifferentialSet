#define WIDTH 32

int main() {
    // secret
    int x;

    // public
    int y_pub = 1814300877, n_pub = 1222865039, w=WIDTH;
    int s = 1;
    int r = 0;
    int k;
    // for (int k = 0; k < w; k++) {
        if (x & (1 << k)) {
            r = s;
            r = standardMultiply(s, y_pub) % n_pub;
        } else {
            r = standardMultiply(s, y_pub) % n_pub;
            r = s;
        }
        s = r * r % n_pub;
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