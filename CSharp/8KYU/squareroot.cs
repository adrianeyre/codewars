using System;
public class Kata
{
  public static int[] SquareOrSquareRoot(int[] array)
  {
    for (int x=0; x< array.Length; x++)
    {
        if (Math.Sqrt(array[x]) % 1 == 0) { array[x] = Convert.ToInt32(Math.Sqrt(array[x])); } else { array[x] = array[x] * array[x]; }
    }
    return array;
  }
}



using System;
using System.Linq;

public class Kata
{
  public static int[] SquareOrSquareRoot(int[] array)
  {
    return array.Select(x => (int)(Math.Sqrt(x) % 1 == 0 ? Math.Sqrt(x) : x * x)).ToArray();
  }
}