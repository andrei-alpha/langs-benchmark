// Matrix multiplication in javascript

SIZE = 512

a = new Array(SIZE)
c = new Array(SIZE)

function matmult() {
  for (var i = 0; i < SIZE; ++i) {
    a[i] = new Array(SIZE)
    c[i] = new Array(SIZE)
  }

  for (var i = 0; i < SIZE; ++i)
  for (var j = 0; j < SIZE; ++j) {
    a[i][j] = 1
    c[i][j] = 0
  }

  for (var i = 0; i < SIZE; ++i)
    for (var k = 0; k < SIZE; ++k)
      for (var j = 0; j < SIZE; ++j)
        c[i][j] += a[i][j] * a[i][k]

  res = 0
  for (var i = 0; i < SIZE; ++i)
    for (var j = 0; j < SIZE; ++j)
      res += c[i][j];

  console.log (res)
}

matmult()
