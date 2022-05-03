#define WIDTH 32

int main() {
    // secret
    int exponent;
    // public
    int base_pub, modulus_pub, width=WIDTH;

    int s = 1;

    for (int i = 0; i < width; i++) {
        s = s * s % modulus_pub;
        if (exponent & (1 << width - i - 1)) {
            s = standardMultiply(s, base_pub) % modulus_pub;
        }
    }
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