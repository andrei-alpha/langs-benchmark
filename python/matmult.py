# Matrix multiplication in python
import array

SIZE = 512

a = list(xrange(SIZE))
c = list(xrange(SIZE))

def matmult():
  for i in xrange(SIZE):
    a[i] = list(range(SIZE))
    c[i] = list(range(SIZE))

  for i in range(SIZE):
    for j in range(SIZE):
      a[i][j] = 1

  for i in xrange(SIZE):
    for k in xrange(SIZE):
      for j in xrange(SIZE):
        c[i][j] += a[i][k] * a[k][j]

  res = 0
  for i in xrange(SIZE):
    for j in xrange(SIZE):
      res += c[i][j]

  return res

if __name__ == "__main__":
  print(matmult())
