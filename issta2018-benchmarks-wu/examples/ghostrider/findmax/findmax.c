#include <stdio.h> 
#include <assert.h> 
#include <unistd.h>

#define INPUT_SIZE 1000

int max( int n, int h[]) {
    int i = 0;
    int m = 0;
    while (i < n) {
        if (h[i] > m) m = h[i];
        i++; 
    }
    return m;
}
  
int in[INPUT_SIZE] = {0}; 
int out[INPUT_SIZE] = {0}; 
// Driver program to test above function
int main() 
{ 
    read(0, in, sizeof(in));
    int res = max(INPUT_SIZE, in); 
    write(1, &res, sizeof(res));
    return 0; 
}