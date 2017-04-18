using System;
using System.Collections.Generic;
namespace CodeWars
{
    public class Kata
    {
        public List<string> wave(string str)
        {
            List<string> result = new List<string> { };
            char[] str2 = str.ToCharArray();
            for (int b=0; b < str2.Length; b++)
            {
                if (str2[b]!=' ')
                {
                    List<char> temp = new List<char> { };
                    for (int i=0; i < str2.Length; i++)
                    {
                        if (i == b) { temp.Add(Char.ToUpper(str2[i]));} else { temp.Add(str2[i]);}
                    }
                    result.Add(string.Join("",temp));
                }
            }
            return result;
        }
    }
}