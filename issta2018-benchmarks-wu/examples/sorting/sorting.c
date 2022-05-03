#define ARRAY_SIZE 32

int a[ARRAY_SIZE];
int main() {
  read(0, a, sizeof(a));

  // sort array
  unsigned int a[ARRAY_SIZE];
  unsigned int i, j, temp;

  for (i = 0; i < (ARRAY_SIZE - 1); ++i) {
    for (j = 0; j < ARRAY_SIZE - 1 - i; ++j) {
      if (a[j] > a[j + 1]) {
        temp = a[j + 1];
        a[j + 1] = a[j];
        a[j] = temp;
      }
    }
  }

  write(1, a, sizeof(a));
}