#include <stdio.h> 
#include <assert.h> 
#include <unistd.h>

// #define INPUT_SIZE 128
#define INPUT_SIZE 16

void matmul(int n, int a[][INPUT_SIZE], int b[][INPUT_SIZE], int c[][INPUT_SIZE]) {
    for(int i=0; i<n; ++i)
        for(int j=0; j<n; ++j) {
            c[i][j] = 0;
            for(int k=0; k<n; ++k)
                c[i][j] += a[i][k] * b[k][j];
        }
}
  
int in1[INPUT_SIZE][INPUT_SIZE];
int in2[INPUT_SIZE][INPUT_SIZE];
int out[INPUT_SIZE][INPUT_SIZE];
// Driver program to test above function
int main() 
{ 
    read(0, in1, sizeof(in1));
    read(0, in2, sizeof(in2));
    matmul(INPUT_SIZE, in1, in2, out); 
    write(1, out, sizeof(out));
    return 0; 
}
