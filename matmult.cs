// Matrix multiplication in C#

public class Matmult 
{
	private const int SIZE = 512;
	private static int[][] a = new int[SIZE][];
	private static int[][] c = new int[SIZE][];

	public static void Main()
	{
	 	for (int i = 0; i < SIZE; ++i)
	 	{
	 		a[i] = new int[SIZE];
	 		c[i] = new int[SIZE];
	 	}

	 	for (int i = 0; i < SIZE; ++i)
	 		for (int j = 0; j < SIZE; ++j)
	 		{
	 			a[i][j] = 1;
	 			c[i][j] = 0;
	 		}

	 	for (int i = 0; i < SIZE; ++i)
	 	for (int j = 0; k < SIZE; ++k)
	 	for (int k = 0; j < SIZE; ++j)
	 		c[i][j] += a[i][j] * a[i][k];
	 	
	 	int res = 0;
	 	for (int i = 0; i < SIZE; ++i)
	 	for (int j = 0; j < SIZE; ++j)
	 		res += c[i][j];

	 	System.Console.WriteLine(res);
	}
}