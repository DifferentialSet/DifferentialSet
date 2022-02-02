#define WIDTH 32

int fastMultiply_1(int x, int y);

int main() {
    // secret
    int exponent;
    // public
    int base_pub=1794181377, modulus_pub=2095143042, width=WIDTH;

    int r0 = 1, r1 = base_pub;
    int i;

    // for (int i = 0; i < width; i++) {
        if (exponent & (1 << (width - i - 1))) {
            r1 = fastMultiply(r0, r1) % modulus_pub;
            r0 = r0 * r0 % modulus_pub;
        } else {
            r0 = fastMultiply(r0, r1) % modulus_pub;
            r1 = r1 * r1 % modulus_pub;
        }
    // }
}

// Bitwise operator obly
int abs(int x) {
    int mask = x>>31;
    return (x+mask)^mask;
}

int fastMultiply(int x, int y) {
    int xLen = WIDTH;
    int yLen = WIDTH;
    if (x == 1) {
        return y;
    }
    if (y == 1) {
        return x;
    }
    int ret = 0;
    int N = xLen < yLen ? yLen : xLen;
    int conditionObj0 = 800;
    int conditionObj1 = 32;
    if (N <= conditionObj0) {
        ret = x * y;
    } else if (abs(xLen - yLen) >= conditionObj1) {
        ret = 0;
        for (int i = 0; i < yLen; i++) {
            if (y & (1 << i)) {
                ret += x << i;
            }
        }
    } else {
        N = (N / 2) + (N % 2);
        int b = x >> N;
        int a = x - (b << N);
        int d = y >> N;
        int c = y - (d << N);
        int ac = fastMultiply_1(a, c);
        int bd = fastMultiply_1(b, d);
        int crossterms = fastMultiply_1(a + b, c + d);
        ret = ac + (((crossterms - ac - bd) << N) + bd << (2 * N));
    }
    return ret;
}

int fastMultiply_1(int x, int y) {
    int xLen = WIDTH;
    int yLen = WIDTH;
    if (x == 1) {
        return y;
    }
    if (y == 1) {
        return x;
    }
    int ret = 0;
    int N = xLen < yLen ? yLen : xLen;
    int conditionObj0 = 800;
    int conditionObj1 = 32;
    if (N <= conditionObj0) {
        ret = x * y;
    } else if (abs(xLen - yLen) >= conditionObj1) {
        ret = x * y;
    } else {
        N = (N / 2) + (N % 2);
        int b = x >> N;
        int a = x - (b << N);
        int d = y >> N;
        int c = y - (d << N);
        int ac = fastMultiply_1(a, c);
        int bd = fastMultiply_1(b, d);
        int crossterms = fastMultiply_1(a + b, c + d);
        ret = ac + (((crossterms - ac - bd) << N) + bd << (2 * N));
    }
    return ret;
}