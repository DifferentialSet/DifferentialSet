#include <stdint.h>
#include <immintrin.h>
#include <stdbool.h>
#include <assert.h>

void branch_id(char *str) {}
#include <unistd.h>

#define __CPROVER_bool int



// __read_chk
// file /usr/include/x86_64-linux-gnu/bits/unistd.h line 23
extern ssize_t __read_chk(signed int, void *, size_t, size_t);
// histogram
// file histogram.c line 7
void histogram(signed int *a, signed int *c);

// __read_chk__return_value
// 
static ssize_t __read_chk__return_value;
// main__return_value
// 
static signed int main__return_value;
// out
// file histogram.c line 22
signed int out[1000];
// read__return_value
// 
static ssize_t read__return_value;
// write__return_value
// 
static ssize_t write__return_value;

// main
// file histogram.c line 24
signed int main(int argc, char** argv)
{
  signed int histogram_v;
  signed int histogram_t;
  signed int histogram_i;
  signed int *histogram_c;
  signed int *histogram_a;
  signed int main_in[1000];
  read(0, (void *)main_in, (size_t)sizeof(signed int [1000]) /*4000ul*/ );
  /* begin function histogram */
  ;
  histogram_a = main_in;
  histogram_c = out;
  histogram_i = 0;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_c[histogram_i] = 0;
  histogram_i = histogram_i + 1;
  histogram_i = 0;
  histogram_i = 0;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  histogram_v = histogram_a[histogram_i];
  if(histogram_v >= 1)
    histogram_t = histogram_v % 1000;

  else
    histogram_t = (0 - histogram_v) % 1000;
  histogram_c[histogram_t] = histogram_c[histogram_t] + 1;
  histogram_i = histogram_i + 1;
  /* end function histogram */
  ;
  write(1, (const void *)out, (size_t)(1000 * 4));
  main__return_value = 0;
}

