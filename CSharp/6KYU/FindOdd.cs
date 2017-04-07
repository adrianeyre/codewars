using System.Collections.Generic;
namespace Solution
{
  class Kata
    {
    public static int find_it(int[] seq) 
      {
        Dictionary<int, int> nums = new Dictionary<int, int>();
        for (int x=0; x<seq.Length; x++)
        {
            if (nums.ContainsKey(seq[x])==true) { nums[seq[x]] += 1; } else { nums[seq[x]] = 1; }
        }
        foreach (KeyValuePair<int, int> entry in nums)
        {
            if (entry.Value % 2 != 0) { return entry.Key; }
        }
        return -1;
      }
       
    }
}