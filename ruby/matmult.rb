# Matrix multiplication in ruby

SIZE = 512

$a = Array.new(SIZE) { Array.new(SIZE, 0) }
$c = Array.new(SIZE) { Array.new(SIZE, 0) }

def matmult
	for i in 0..SIZE-1
		for j in 0..SIZE-1
			$a[i][j] = 1
		end
	end

	for i in 0..SIZE-1
		for k in 0..SIZE-1
			for j in 0..SIZE-1
				$c[i][j] += $a[i][j] * $a[i][k]
			end
		end
	end

	res = 0
	for i in 0..SIZE-1
		for j in 0..SIZE-1
			res += $c[i][j]
		end
	end

	puts res	
end

matmult()