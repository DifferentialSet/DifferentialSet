int main() {
    int p_sec;
    unsigned s_sec;
    int arr[128];
    int res;

    if (s_sec % 2 == 0) {
        int index = s_sec % 64 + 64;
        res = arr[index];
    } else {
        int index = s_sec % 64;
        res = arr[index];
    }
}