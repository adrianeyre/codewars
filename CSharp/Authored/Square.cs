using System;
using System.Collections.Generic;

namespace CodeWars
{
    public class Game
    {
        private int board = 0;
        public List<int> lines = new List<int> ();

        public Game(int board2)
        {
            board = board2;
        }

        public List<int> play(List<int> lines2)
        {
            for(int t=0; t<lines2.Count; t++)
            {
                lines.Add(lines2[t]);
            }
            for(int z=0; z<lines.Count; z++) {
                int n = lines[z];
                bool topbot = true;
                int num = 0;
                for (int x=1; x<=n; x++)
                {
                    num++;
                    if (topbot && num == board)
                    {
                        num = 0;
                        topbot = false;
                    }
                    else if (!topbot && num == board + 1)
                    {
                        num = 0;
                        topbot = true;
                    }
                }
                if (num == 0) { topbot = !topbot; }
                if (topbot)
                {
                    checkmysquare(new int[] { n - board - 1, n - board, n - (board * 2) - 1 });
                    checkmysquare(new int[] { n + board + 1, n + board, n + (board * 2) + 1 });
                }
                else
                {
                    if (num != 0) { checkmysquare(new int[] { n + 1, n - board, n + board + 1 }); }
                    if (num != 1) { checkmysquare(new int[] { n - 1, n + board, n - board - 1 }); }
                }

            }
            List<int> result = new List<int>();
            lines.Sort((a, b) => (a.CompareTo(b)));
            foreach (var x in lines)
            {
                result.Add(x);
            }
            return result;
        }

        public void checkmysquare(int[] arr)
        {
            int num2 = 0;
            int xt = 0;
            for (int v=0; v<arr.Length; v++)
            {
                int x = arr[v];
                bool there = false;
                for(int t=0; t<lines.Count; t++)
                {
                    if (lines[t] == x) { there = true; num2++; }
                }
                if (!there) { xt = x; }
            }
            if (num2 == arr.Length-1) { lines.Add(xt); }
        }
    }
}