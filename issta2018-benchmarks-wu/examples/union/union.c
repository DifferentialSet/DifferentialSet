typedef union {
  int i;
  int c[4];
} U;

typedef struct {
    U u;
} V;

int main() {
    V my_union;
    
    my_union.u.i = 0xFFFFFFFF;
    my_union.u.c[1] = 0x11;
    assert(0);
}