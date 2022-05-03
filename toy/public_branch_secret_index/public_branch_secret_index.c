int main() {
    int p_pub;
    unsigned s_sec;
    int arr[128];
    int res;

    if (p_pub) {
        int index = s_sec % 64 + 64;
        res = arr[index];
    } else {
        int index = s_sec % 64;
        res = arr[index];
    }
}