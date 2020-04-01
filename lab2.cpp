#include <iostream>
using namespace std;

int main() {
	const unsigned char N = 12;
	unsigned char X[N] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
	int T = 0;
	for (int i = 0; i < N; i++) 
	{
		if ( ((X[i] & (1 << 1)) == 0) && ((X[i] & (1 << 5)) == 0))
		{
			T++;
		}
	}
	cout << T << endl;
	return 0;
}