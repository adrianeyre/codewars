using System.Collections.Generic;
namespace myjinxin
{
    using System;
    
    public class Kata
    {
        public string MissingAlphabets(string s)
        {
            Dictionary<char, int> letter = new Dictionary<char, int>()
            {
                { 'a' , 0 }, { 'b' , 0 }, { 'c' , 0 }, { 'd' , 0 }, { 'e' , 0 }, { 'f' , 0 }, { 'g' , 0 }, { 'h' , 0 },
                { 'i' , 0 }, { 'j' , 0 }, { 'k' , 0 }, { 'l' , 0 }, { 'm' , 0 }, { 'n' , 0 }, { 'o' , 0 }, { 'p' , 0 },
                { 'q' , 0 }, { 'r' , 0 }, { 's' , 0 }, { 't' , 0 }, { 'u' , 0 }, { 'v' , 0 }, { 'w' , 0 }, { 'x' , 0 },
                { 'y' , 0 }, { 'z' , 0 }
            };
            char[] chars = new char[] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
            char[] letters = s.ToCharArray();
            string returnValue = "";
            int max = 0;
            for (int x=0; x < s.Length; x++)
            {
                letter[letters[x]]++;
                if (letter[letters[x]] > max) { max = letter[letters[x]]; }
            }
            for (int x = 0; x < chars.Length; x++)
            {
                if (max - letter[chars[x]] != 0)
                {
                    for (int y = 0; y < max - letter[chars[x]]; y++)
                    {
                        returnValue += chars[x];
                    }
                }
            }
            return returnValue;
        }
    }
}