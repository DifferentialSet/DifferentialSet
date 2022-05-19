int main() {
    // secret
    unsigned taint;
    // public
    unsigned a;

    unsigned i = a;

    if (taint < 1) {
        while (i > 0){
            i--;
        }
    } else {
        taint = taint + 10;

        if (taint >= 11) {
            unsigned j = a;
            while (j > 0) {
                j--;
            }
        } else {
            if (a < 0) {
                unsigned k = a;
                while (k > 0) {
                    k--;
                }
            }
        }
    }
}