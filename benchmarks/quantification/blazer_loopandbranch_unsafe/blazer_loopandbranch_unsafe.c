int main() {
    // secret
    unsigned taint_sec;
    // public
    unsigned a_pub;

    unsigned i = a_pub;

    if (taint_sec < 1) {
        while (i > 0){
            i--;
        }
    } else {
        taint_sec = taint_sec - 10;

        if (taint_sec >= 10) {
            unsigned j = a_pub;
            while (j > 0) {
                j--;
            }
        } else {
            if (a_pub < 0) {
                unsigned k = a_pub;
                while (k > 0) {
                    k--;
                }
            }
        }
    }
}