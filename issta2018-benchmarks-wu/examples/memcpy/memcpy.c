#include <string.h>
#include <unistd.h>


int func() {
	int src[5];
	int dest0[5];
	int dest1[5];
	memset(dest0, 0, sizeof(int[5]));
	memcpy(dest0, src, sizeof(src));
	memcpy(dest1, dest0, sizeof(dest0));
}

int main() {
	int src[5];
	int dest0[5];
	int dest1[5];

	read(0, src, sizeof(int[5]));
	memset(dest0, 0, sizeof(int[5]));
	memcpy(dest0, src, sizeof(src));
	memcpy(dest1, dest0, sizeof(dest0));
	func();

	write(1, dest1, sizeof(dest1));
}
