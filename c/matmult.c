// Matrix multiplication in c

#include <stdio.h>
#define SIZE 512

int a[SIZE][SIZE], c[SIZE][SIZE];

int main() {

  int i,j,k;    
  for (i = 0; i < SIZE; ++i)
  for (j = 0; j < SIZE; ++j)
    a[i][j] = 1;

  for (i = 0; i < SIZE; ++i)
  for (k = 0; k < SIZE; ++k)
  for (j = 0; j < SIZE; ++j)
    c[i][j] += a[i][k] * a[k][j];

  int res = 0;
  for (i = 0; i < SIZE; ++i)
  for (j = 0; j < SIZE; ++j)
    res += c[i][j];

  printf ("%d\n", res);

  return 0;
}
