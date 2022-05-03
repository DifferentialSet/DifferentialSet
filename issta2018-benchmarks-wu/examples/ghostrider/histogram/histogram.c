#include <stdio.h> 
#include <assert.h> 
#include <unistd.h>

#define INPUT_SIZE 1000

void histogram(int a[], int c[]) {
    int i;
    int t, v;
    for(i=0;i<INPUT_SIZE;i++)
        c[i]=0;
    i=0;
    for(i=0;i<INPUT_SIZE;i++) {
        v=a[i];
        if(v>0) t=v%INPUT_SIZE;
        else t=(0-v)%INPUT_SIZE;
        c[t]=c[t]+1; 
    } 
}
  
int in[INPUT_SIZE];
int out[INPUT_SIZE];
// Driver program to test above function
int main() 
{
    read(0, in, sizeof(in));
    histogram(in, out); 
    write(1, out, INPUT_SIZE*4);
    return 0; 
}
