public class Kata
{
  public static bool Include(int[] arr, int item)
  {
    for (int x=0; x<arr.Length; x++)
    {
      if (arr[x] == item) {return true;}
    }
    return false;
  }
}