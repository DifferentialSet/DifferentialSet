#define WIDTH 16

#include <stdbool.h>

// public
int guess_pub[WIDTH] = {1870022027, 531219, 789182250, 1711594050, 1965867712, 1979777067, 864989564, 2082111302, 1333285031, 460592661, 848012832, 957241614, 1843091968, 614836524, 1552734344, 1046221669};
int main() {
    // secret
    int real_password_sec[WIDTH];

    bool unused, matches = true;

    if (real_password_sec == 0) {
        return false;
    }

    unsigned i;
    for (i = 0; i < WIDTH; i++) {
        if (i < WIDTH) {
            if (guess_pub[i] != real_password_sec[i]) {
                matches = false;
            } else {
                unused = true;
            }
        } else {
            unused = false;
            unused = true;
            matches = false;
        }
    }
}