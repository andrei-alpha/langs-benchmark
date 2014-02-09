// Matrix multiplication in Go Lang
package main
import "fmt"

var SIZE int = 512

var a = make([][]int, SIZE)
var c = make([][]int, SIZE)

func main() {
	for i := 0; i < SIZE; i++ {
		a[i] = make([]int, SIZE)
		c[i] = make([]int, SIZE)
	}

	for i := 0; i < SIZE; i++ {
		for j := 0; j < SIZE; j++ {
			a[i][j] = 1
		}
	}

	for i := 0; i < SIZE; i++ {
		for k := 0; k < SIZE; k++ {
			for j := 0; j < SIZE; j++ {
				c[i][j] += a[i][k] * a[k][j]
			}
		}
	}

	var res int = 0
	for i := 0; i < SIZE; i++ {
		for j := 0; j < SIZE; j++ {
			res += c[i][j]
		}
	}

	fmt.Println(res)
}