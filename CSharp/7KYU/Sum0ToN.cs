using System;
using System.Collections.Generic;

public class SequenceSum
{
  public static string ShowSequence(int n)
  { 
    if (n < 0) { return n.ToString() + "<0"; }
    if (n == 0) { return "0=0"; }
    string[] result = new string[n + 1];
    int sum = 0;
    for (int x = 0; x <= n; x++)
    {
        result[x] = x.ToString();
        sum += x;
    }
    return string.Join("+", result) + " = " + sum.ToString();
  }
}