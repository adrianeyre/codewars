public static class Kata
{
  public static int Solution(int value)
  {
    int result = 0;
    for (int x=1; x<value;x++) { if (x % 3 == 0 || x % 5 == 0) {result += x;}}
    return result;
  }
}