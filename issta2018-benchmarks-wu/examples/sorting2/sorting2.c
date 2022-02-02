#define ARRAY_SIZE 8

int a[ARRAY_SIZE];
int main() {
  read(0, a, sizeof(a));

  unsigned int a[ARRAY_SIZE];

  unsigned int i;
  for (i = 0; i < ARRAY_SIZE - 1; ++i) {
    unsigned int j, min, temp;
    min = i;
    for (j = i + 1; j < ARRAY_SIZE; ++j) {
      if (a[j] < a[min])
        min = j;
    }

    temp = a[i];
    a[i] = a[min];
    a[min] = temp;
  }

  write(1, a, sizeof(a));
}