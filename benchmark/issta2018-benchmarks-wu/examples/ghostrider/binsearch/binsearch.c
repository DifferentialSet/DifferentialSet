#include <stdio.h> 
#include <assert.h> 
#include <unistd.h>

#define INPUT_SIZE 10000

// A iterative binary search function. It returns 
// location of x in given array arr[l..r] if present, 
// otherwise -1 
__attribute_noinline__ int binarySearch(int arr[], int l, int r, int x) 
{ 
    int res = -1;
    while (l <= r) { 
        int m = l + (r - l) / 2; 

        // Check if x is present at mid 
        if (arr[m] == x)  {
            res = m; 
            break;
        }
  
        // If x greater, ignore left half 
        if (arr[m] < x) 
            l = m + 1; 
  
        // If x is smaller, ignore right half 
        else
            r = m - 1; 
    } 
  
    // if we reach here, then element was 
    // not present 
    return res; 
} 
  
int in_pub[INPUT_SIZE] = {0}; 
int secret = 0;
// Driver program to test above function
int main() 
{ 
    read(0, &secret, 2);
    read(0, in_pub, sizeof(in_pub));
    secret = secret % INPUT_SIZE;
    int res = binarySearch(in_pub, 0, INPUT_SIZE-1, secret); 
    write(1, &res, sizeof res);
    return 0; 
}