using System;
using System.Collections.Generic;

namespace CodeWars
{
    public class Kata
    {
        public int fruit(List<string[]> reels, int[] spins)
        {
            string[] reel = new string[] { "Wild", "Star", "Bell", "Shell", "Seven", "Cherry", "Bar", "King", "Queen", "Jack"};
            string[] items = new string[] { reels[0][spins[0]], reels[1][spins[1]], reels[2][spins[2]] };
            if (items[0] == items[1] && items[0] == items[2]){return (10 - Array.IndexOf(reel, items[0])) * 10;}
            string item = "";
            string extra = "";
            if (items[0] == items[1]) { item = items[0]; extra = items[2]; }
            if (items[0] == items[2]) { item = items[0]; extra = items[1]; }
            if (items[1] == items[2]) { item = items[1]; extra = items[0]; }
            if (item != "")
            {
                int num = 10 - Array.IndexOf(reel, item);
                if (extra == "Wild") { num = num * 2; }
                return num;
            }
            return 0;
        }
    }
}