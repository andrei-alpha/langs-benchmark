// Matrix multiplication in Scala

object Matmult {
	val SIZE = 512

	val a = Array.fill(SIZE, SIZE)(1)
	val c = Array.fill(SIZE, SIZE)(0)

	def main() = {
		// redundant
		for(i <- 0 until SIZE;
			j <- 0 until SIZE) {
			a(i)(j) = 1
		}

		for(i <- 0 until SIZE;
			k <- 0 until SIZE;
			j <- 0 until SIZE) {
			c(i)(j) += a(i)(j) * a(i)(k)
		}

		var ret = 0
		for(i <- 0 until SIZE;
			j <- 0 until SIZE) {
			ret += c(i)(j)
		}

		println(ret)
	}
}