int main() {
    int p_sec;
    unsigned s_pub;
    int arr[128];
    int res;

    if (p_sec) {
        int index = s_pub % 64 + 64;
        res = arr[index];
    } else {
        int index = s_pub % 64;
        res = arr[index];
    }
}