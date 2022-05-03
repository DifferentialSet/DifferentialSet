int main() {
    int p_pub, s_sec;
    int arr[16][16];
    int res0, res1;

    res0 = arr[s_sec % 16][p_pub % 16];

    res1 = arr[p_pub % 16][s_sec % 16];
}