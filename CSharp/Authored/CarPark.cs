using System;
using System.Collections.Generic;

namespace CodeWars
{
    public class Kata
    {
        public string[] escape(int[,] carpark)
        {
            List<string> result = new List<string> { };
            int level = 0;
            int space = 0;
            int levels = carpark.GetUpperBound(0);
            int spaces = carpark.GetUpperBound(1);
            for (int i=0; i<=levels; i++)
            {
                for (int a=0; a<=spaces; a++)
                {
                    if (carpark[i, a] == 2)
                    {
                        level = i;
                        space = a;
                    }
                }
            }

            while(true)
            {
                if (level == levels)
                {
                    if(space != spaces)
                    {
                        result.Add("R" + (spaces - space).ToString());
                    }
                    space = spaces;
                }
                else
                {
                    if (carpark[level, space] == 1)
                    {
                        int count = 0;
                        while(carpark[level,space] == 1 && level != levels)
                        {
                            level++;
                            count++;
                        }
                        result.Add("D" + count.ToString());
                    }
                    else
                    {
                        int pos = -1;
                        for(int a = 0; a <= spaces; a++)
                        {
                            if (carpark[level, a] == 1) { pos = a; }
                        }
                        string d = pos < space ? "L" : "R";
                        result.Add(d + Math.Abs(pos - space).ToString());
                        space = pos;
                    }
                }
                if(space == spaces && level == levels) { break; }
            }
            string[] final = new string[result.Count];
            for(int a=0; a < result.Count; a++)
            {
              final[a] = result[a];
            }
            return final;
        }
    }
}