#define WIDTH 32

int main() {
    // secret
    int exponent;
    // public
    int base_pub, modulus_pub, width=WIDTH;

    int r0 = 1, r1 = base_pub;

    for (int i = 0; i < width; i++) {
        if (exponent & (1 << (width - i - 1))) {
            r1 = r0 * r1 % modulus_pub;
            r0 = r0 * r0 % modulus_pub;
        } else {
            r0 = r0 * r1 % modulus_pub;
            r1 = r1 * r1 % modulus_pub;
        }
    }
}