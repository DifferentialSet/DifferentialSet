#define WIDTH 32

int main() {
    // secret
    int b_sec;
    // public
    int a_pub, p_pub;

    int m = 1;
    int n = WIDTH;
    int i;
    // for (int i = 0; i < n; i++) {
        int p1;
        if (m & 1) {
            p1 = m;
        } else {
            p1 = 0;
        }
        int n1 = WIDTH;
        for (int j = 1; j < n1; j++) {
            if (m & (1 << j)) {
                p_pub = p_pub + m;
            }
        }

        int t = m * a_pub % p_pub;

        if (b_sec & (1 << i)) {
            m = t;
        }
    // }
    return a_pub;
}