using System;

namespace CodeWars
{
    public class Game
    {
        public int fish(string shoal)
        {
            int level = 1;
            int total = 0;
            char[] t = shoal.ToCharArray();
            int[] fishes = new int[t.Length];
            for(int i= 0; i < t.Length; i++)
            {
                fishes[i] = (int)Char.GetNumericValue(t[i]);
            }
            Array.Sort(fishes);
            for(int i=0; i<fishes.Length; i++)
            {
                int f = fishes[i];
                if (f <= level)
                {
                    total = total + (1 * f);
                    if (total >= (level * 4))
                    {
                        total = total - (level * 4);
                        level++;
                    }
                }
            }
            return level;
        }
    }
}