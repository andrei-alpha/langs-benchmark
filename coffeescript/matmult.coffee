# Matrix multplication in coffee script

SIZE = 512

a = new Array(SIZE)
c = new Array(SIZE)

matmult = ->
	for i in [0..SIZE-1]
		a[i] = new Array(SIZE)
		c[i] = new Array(SIZE)

	for i in [0..SIZE-1]
		for j in [0..SIZE-1]
			a[i][j] = 1
			c[i][j] = 0
		
	for i in [0..SIZE-1]
		for k in [0..SIZE-1]
			for j in [0..SIZE-1]
				c[i][j] += a[i][k] * a[k][j]

	res = 0
	for i in [0..SIZE-1]
		for j in [0..SIZE-1]
			res += c[i][j]

	console.log res

matmult()
