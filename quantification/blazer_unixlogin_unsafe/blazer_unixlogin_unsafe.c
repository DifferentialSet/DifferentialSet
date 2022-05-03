#include <stdbool.h>

#define MAX_LENGTH 16

void intToString(int a, char s[MAX_LENGTH]) {
    for (int i = MAX_LENGTH - 1; i >= 0; i--) {
        s[i] = '0' + a % 10;
        a /= 10;
    }
}

bool strcmp(char a[MAX_LENGTH], char b[MAX_LENGTH]) {
    bool res = false;
    for (int i = 0; i < MAX_LENGTH; i++) {
        res |= a[i] != b[i];
    }
    return res;
}

int md5(char s[MAX_LENGTH], char out[MAX_LENGTH]) {

    // int lim = 100000000 * MAX_LENGTH;
    int lim = 100 * MAX_LENGTH;

    int k = 0;

    for (int i = 0; i < lim; i++) {
        if (k % 3 == 0) {
            k--;
        } else {
            k++;
        }
    }

    intToString(k, out);
}

int main() {
    // secret
    char secret_username[MAX_LENGTH];
    char secret_password[MAX_LENGTH];

    // public
    char public_username_pub[MAX_LENGTH];
    char public_password_pub[MAX_LENGTH];

    bool outcome;

    if (!strcmp(secret_username, public_username_pub)) {
        char md5_str[MAX_LENGTH];
        md5(public_password_pub, md5_str);
        if (!strcmp(secret_password, md5_str)) {
            outcome = true;
        }
    }
}