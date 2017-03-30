using System;
using System.Collections.Generic;

namespace CodeWars
{
    class Connect4
    {
        private int[,] board = new int[,] { { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 },
                                            { 0, 0, 0, 0, 0, 0, 0, 0 } };
        private int player = 1;
        private bool win = false;

        public string play(int col)
        {
            col++;
            if (win) { return "Game has finished!"; }
            if (board[1, col] != 0) { return "Column full!"; }
            int row = 0;
            for (int z = 0; z <= 6; z++)
            {
                if (z == 6 || board[z + 1, col] != 0) { board[z, col] = player; row = z; break; }
            }
            if (board[row - 1, col] == player || board[row + 1, col] == player)
            {
                int amount = 0;
                for (int x = row; x <= 6; x++) { if (board[x, col] == player) { amount++; } else { break; } }
                for (int x = row - 1; x >= 0; x--) { if (board[x, col] == player) { amount++; } else { break; } }
                if (amount > 3) { win = true; return "Player " + player + " wins!"; }
            }
            if (board[row, col - 1] == player || board[row, col + 1] == player)
            {
                int amount = 0;
                for (int x = col; x <= 6; x++) { if (board[row, x] == player) { amount++; } else { break; } }
                for (int x = col - 1; x >= 0; x--) { if (board[row, x] == player) { amount++; } else { break; } }
                if (amount > 3) { win = true; return "Player " + player + " wins!"; }
            }
            if (board[row - 1, col - 1] == player || board[row + 1, col + 1] == player)
            {
                int amount = 0;
                int n = col;
                for (int x = row; x <= 6; x++) { if (board[x, n] == player) { amount++; n++; } else { break; } }
                n = col - 1;
                for (int x = row - 1; x >= 0; x--) { if (board[x, n] == player) { amount++; n--; } else { break; } }
                if (amount > 3) { win = true; return "Player " + player + " wins!"; }
            }
            if (board[row - 1, col + 1] == player || board[row + 1, col - 1] == player)
            {
                int amount = 0;
                int n = col;
                for (int x = row; x <= 6; x++) { if (board[x, n] == player) { amount++; n--; } else { break; } }
                n = col + 1;
                for (int x = row - 1; x >= 0; x--) { if (board[x, n] == player) { amount++; n++; } else { break; } }
                if (amount > 3) { win = true; return "Player " + player + " wins!"; }
            }
            string result = "Player " + player.ToString() + " has a turn";
            if (player == 1) { player = 2; } else { player = 1; }
            return result;
        }

    }
}
