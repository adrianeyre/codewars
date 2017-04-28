using System.Collections.Generic;

namespace CodeWars
{
    public class Game
    {
        private int[,] board = new int[,] { };
        private bool[,] done = new bool[,] { };
        private int amount = 0;

        public Game(int[,] board2)
        {
            board = board2;
            int boardSize = board.GetUpperBound(0) + 1;
            done = new bool[boardSize, boardSize];
            for (int x=0; x < boardSize; x++)
            {
                for(int y=0; y< boardSize; y++)
                {
                    done[x, y] = false;
                }
            }
        }

        public int play()
        {
            int boardSize = board.GetUpperBound(0)+1;
            for (int x = 0; x < boardSize; x++)
            {
                for (int y = 0; y < boardSize; y++)
                {
                    if (board[x,y] == 1 && !done[x, y]) { checkmysquare(x, y); }
                }
            }
            return amount;
        }

        public void checkmysquare(int a, int b)
        {
            amount++;
            int boardSize = board.GetUpperBound(0);
            List<int> xx = new List<int> { a };
            List<int> yy = new List<int> { b };
            int num = 0;
            while (num < xx.Count)
            {
                int x = xx[num];
                int y = yy[num];
                done[x, y] = true;
                if (x != 0) {
                    if (board[x - 1, y] == 1 && !done[x - 1, y]) {
                        xx.Add(x - 1);
                        yy.Add(y);
                        done[x - 1, y] = true;
                    }
                }
                if (x != boardSize) {
                    if (board[x + 1, y] == 1 && !done[x + 1, y]) {
                        xx.Add(x + 1);
                        yy.Add(y);
                        done[x + 1, y] = true;
                    }
                }
                if (y != 0) {
                    if (board[x, y - 1] == 1 && !done[x, y - 1]) {
                        xx.Add(x);
                        yy.Add(y - 1);
                        done[x, y - 1] = true;
                    }
                }
                if (y != boardSize)
                {
                    if (board[x, y + 1] == 1 && !done[x, y + 1])
                    {
                        xx.Add(x);
                        yy.Add(y + 1);
                        done[x, y + 1] = true;
                    }
                }
                num++;
            }

        }

    }
}