using System;
using System.Collections.Generic;

public class Kata
    {
        public static int Number(List<int[]> peopleListInOut)
        {
          int result = 0;
          foreach (int[] a in peopleListInOut) { result += a[0]; result -= a[1];}
          return result;
        }
    }