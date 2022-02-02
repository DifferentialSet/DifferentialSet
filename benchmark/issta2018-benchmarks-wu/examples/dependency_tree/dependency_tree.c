int main() {

    int a, b, c, d, e;
    int *p = &e;
    if (a) {
        p = &a;
        if (b) {
            p = &b;
            if (c) {
                p = &c;
            }
        }
    }
    *p += 1;
}