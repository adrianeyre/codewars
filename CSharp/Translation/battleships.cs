using System.Collections.Generic;

namespace CodeWars
{
    class Kata
    {
        public static Dictionary<string, double> damagedOrSunk(int[,] board, int[,] attacks)
        {
            Dictionary<string, double> result = new Dictionary<string, double> { { "sunk", 0 }, { "damaged", 0 }, { "notTouched", 0 }, { "points", 0 } };
            Dictionary<int, int> ships = new Dictionary<int, int> { { 1, 0 }, { 2, 0 }, { 3, 0 } };
            Dictionary<int, int> hits = new Dictionary<int, int> { { 1, 0 }, { 2, 0 }, { 3, 0 } };
            for (int x = 0; x < board.GetLength(0); x++)
            {
                for (int y = 0; y < board.GetLength(1); y++)
                {
                    if (board[x, y] != 0) { ships[board[x, y]]++; }
                }
            }
            for (int x = 0; x < attacks.GetLength(0); x++)
            {
                int ship = board[board.GetLength(0) - attacks[x, 1], attacks[x, 0] - 1];
                if (ship > 0) { hits[ship]++; }
            }
            for (int x = 1; x <= 3; x++)
            {
                if (ships[x] != 0)
                {
                    ships[x] = ships[x] - hits[x];
                    if (ships[x] == 0)
                    {
                        result["points"]++; result["sunk"]++;
                    }
                    else
                    {
                        if (hits[x] == 0) { result["notTouched"]++; result["points"]--; } else { result["damaged"]++; result["points"] = result["points"] + .5; }
                    }
                }
            }
            return result;
        }
    }
}