namespace myjinxin
{
    using System;
    
    public class Kata
    {
        public int Lamps(int[] a){
          int amount1 = 0; int amount2 = 0;
          for (int x=0; x<a.Length; x++)
          {
              if (x % 2 == 0) { if (a[x] == 1) { amount1++; } else { amount2++; } }
              if (x % 2 != 0) { if (a[x] == 0) { amount1++; } else { amount2++; } }
          }
          if (amount1 < amount2) { return amount1; }else { return amount2; }
        }
    }
}