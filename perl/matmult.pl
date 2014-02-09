# Matrix multiplication in perl

$SIZE = 512;

my @a;
my @b;

sub matmult {

	for $i (0..$SIZE-1) {
		for $j (0..$SIZE-1) {
			$a[i][j] = 1;
			$c[i][j] = 0;
		}
  }

	for $i (0..$SIZE-1) {
		for $k (0..$SIZE-1) {
			for $j (0..$SIZE-1) {
				$c[i][j] += $a[i][k] * $a[k][j];
			}
		}
	}

	$res = 0;
	for $i (0..$SIZE-1) {
		for $j (0..$SIZE-1) {
			$res += $c[i][j];
		}
	}

	print "$res";
}

matmult();