# Matrix multiplication in python3

SIZE = 512

a = list(range(SIZE))
c = list(range(SIZE))

def matmult():
  for i in range(SIZE):
    a[i] = list(range(SIZE))
    c[i] = list(range(SIZE))

  for i in range(SIZE):
    for j in range(SIZE):
      a[i][j] = 1

  for i in range(SIZE):
    for k in range(SIZE):
      for j in range(SIZE):
        c[i][j] += a[i][j] * a[i][k]

  res = 0
  for i in range(SIZE):
    for j in range(SIZE):
      res += c[i][j]

  return res

if __name__ == "__main__":
  print(matmult())
