#define WIDTH 32

int main() {
    // secret
    int b;
    // public
    int a_pub, p_pub;

    int m = 1;
    int n = WIDTH;
    for (int i = 0; i < n; i++) {
        m = m * m % p_pub;
        if (b & (1 << i)) {
            m = m * a_pub % p_pub;
        }
    }
    return a_pub;
}