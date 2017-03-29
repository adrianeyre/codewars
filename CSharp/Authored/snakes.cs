using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeWars
{
    class SnakesLadders
    {
        private int[] playerSquare = new int[2] { 0, 0 };
        private int player = 0;
        private bool won = false;
        private int[,] trap = new int[21, 2]{{2,38},{7,14},{8,31},{15,26},{21,42},{28,84},{36,44},{51,67},{71,91},{78,98},{87,94},
                    {16,6},{46,25},{49,11},{62,19},{64,60},{74,53},{89,68},{92,88},{95,75},{99,80}};

        public string play (int die1, int die2)
        {
            if (won) { return "Game over!"; }
            int roll = die1 + die2;
            if (roll + playerSquare[player] <= 100)
            {
                playerSquare[player] += roll;
                if (playerSquare[player] == 100) { won = true; return "Player " + (player + 1).ToString() + " Wins!"; }
            }
            else
            {
                playerSquare[player] = 100 - ((playerSquare[player] + roll) - 100);
            }
            for (int t = 0; t < trap.Length / 2; t++)
            {
                if (playerSquare[player] == trap[t,0]) { playerSquare[player] = trap[t, 1]; }
            }
            string message = "Player " + (player + 1).ToString() + " is on square " + (playerSquare[player]).ToString();
            if (die1 != die2) { if (player == 0) { player = 1; } else { player = 0; }; }
            return message;
        }
    }
}