using System.Linq;
namespace myjinxin
{
    using System;
    
    public class Kata
    {
        public bool LearnCharitableGame(int[] arr){
          if (arr.Sum() == 0) {return false;}
          if (arr.Sum() == (arr.Sum() / arr.Length) * arr.Length) { return true; } else { return false; }
        }
    }
}