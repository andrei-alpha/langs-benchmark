// Matrix multiplication in D

import std.stdio;

const SIZE = 512;
int a[SIZE][SIZE];
int c[SIZE][SIZE];

void main()
{
	for (int i = 0; i < SIZE; ++i)
		for (int j = 0; j < SIZE; ++j) {
			a[i][j] = 1;
			c[i][j] = 0;
		}

	for (int i = 0; i < SIZE; ++i)
		for (int k = 0; k < SIZE; ++k)
			for (int j = 0; j < SIZE; ++j)
				c[i][j] += a[i][k] * a[k][j];

	int ret = 0;
	for (int i = 0; i < SIZE; ++i)
		for (int j = 0; j < SIZE; ++j) 
			ret += c[i][j];
    
    writeln(ret);
}