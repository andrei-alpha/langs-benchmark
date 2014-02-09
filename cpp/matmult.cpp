// Matrix multiplication in c++

#include <cstdio>
#define SIZE 512

int a[SIZE][SIZE], c[SIZE][SIZE];

int main() {
    
  for (int i = 0; i < SIZE; ++i)
  for (int j = 0; j < SIZE; ++j)
    a[i][j] = 1;

  for (int i = 0; i < SIZE; ++i)
  for (int k = 0; k < SIZE; ++k)
  for (int j = 0; j < SIZE; ++j)
    c[i][j] += a[i][j] * a[i][k];

  int res = 0;

  for (int i = 0; i < SIZE; ++i)
  for (int j = 0; j < SIZE; ++j)
    res += c[i][j];

  printf ("%d\n", res);

  return 0;
}
