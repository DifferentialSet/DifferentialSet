#include <stdio.h> 
#include <stdlib.h> 
#include <assert.h> 
#include <unistd.h>
#include <stdbool.h>

#define INPUT_SIZE 32 // num edges -> 32*32 = 1024

int secret = 0;
__attribute_noinline__ int dijkstra(int n, int s, int t, int e[][INPUT_SIZE]) {
    int vis[INPUT_SIZE] = {0};
    int dis[INPUT_SIZE] = {0};
    int __attribute__((annotate("secret"))) bestj = -1;
    vis[s] = 1;
    for(int i=0; i<n; ++i)
        dis[i] = e[s][i];
    for(int i=0; i<n; ++i) {
        for(int j=0; j<n; ++j) {
            bool b = ((bool)!vis[j]) & ((bestj < 0) | (dis[j] < dis[bestj]));
            bestj = ((-(int)b) & (j + secret)) + ((~(-(int)b)) & bestj);
            vis[bestj] = ((-(int)b) & (1)) + ((~(-(int)b)) & vis[bestj]);
        }

        // this write is to prevent an LLVM bug
        write(1, &bestj, sizeof(bestj));
        for(int j=0; j<n; ++j) {
            bool b = ((bool)!vis[j]) & (dis[bestj] + e[bestj][j] < dis[j]);
            dis[j] = ((-(int)b) & (dis[bestj] + e[bestj][j])) + ((~(-(int)b)) & dis[j]);
        }
    }
    return dis[t];
}

int in[INPUT_SIZE][INPUT_SIZE] = {0}; 
// Driver program to test above function
int main() 
{ 
    read(0, &secret, 1);
    secret -= (unsigned char)secret;
    read(0, in, sizeof(in));
    int res = dijkstra(INPUT_SIZE, 0, INPUT_SIZE-1, in); 
    write(1, &res, sizeof(res));
    return 0; 
}