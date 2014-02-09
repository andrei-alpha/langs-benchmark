// Matrix multiplication in Java
import java.lang.System;

public class matmult
{
	private static final int SIZE = 512;
	private static int[][] a = new int[SIZE][SIZE];
	private static int[][] c = new int[SIZE][SIZE];

	public static void main(String[] args)
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
	 	for (int k = 0; k < SIZE; ++k)
	 	for (int j = 0; j < SIZE; ++j)
	 		c[i][j] += a[i][j] * a[i][k];
	 	
	 	int res = 0;
	 	for (int i = 0; i < SIZE; ++i)
	 	for (int j = 0; j < SIZE; ++j)
	 		res += c[i][j];

	 	System.out.println(res);
	}
}