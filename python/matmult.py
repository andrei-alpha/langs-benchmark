# Matrix multiplication in python

SIZE = 512

a = list(xrange(SIZE))
c = list(xrange(SIZE))

def matmult():
  for i in xrange(SIZE):
    a[i] = list(xrange(SIZE))
    c[i] = list(xrange(SIZE))

  for i in xrange(SIZE):
    for j in xrange(SIZE):
      a[i][j] = 1

  for i in xrange(SIZE):
    for k in xrange(SIZE):
      for j in xrange(SIZE):
        c[i][j] += a[i][j] * a[i][k]

  res = 0
  for i in xrange(SIZE):
    for j in xrange(SIZE):
      res += c[i][j]

  return res

if __name__ == "__main__":
  print(matmult())
