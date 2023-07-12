int main() {
	//secret
	unsigned b_sec; 
	//public
    unsigned a_pub;
    unsigned x = a_pub, y = b_sec;

	// The code is rewritten to reveal the boolean short-circuiting to the source code
    // if (a_pub > 0 && b_sec > 0) {
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	// } else {
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	//     x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	// }
    if (a_pub > 0) {
		if (b_sec > 0) {
			x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
			x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
			x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
		} else goto L;
	} else {
		L:
	    x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	    x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	    x=1+y; y=2+x; x=3+y; y=4+x; x=5+y; y=6+x; x=7+y; y=8+x; x=9+y; y=10+x;
	}
}