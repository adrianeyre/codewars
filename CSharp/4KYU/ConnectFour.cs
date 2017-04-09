using System.Collections.Generic;

public class ConnectFour
    {
        public static string WhoIsWinner(List<string> piecesPositionList)
        {
            int[,] board = new int[,] { { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                        { 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
            int player = 1;

            for (int num=0; num<piecesPositionList.Count; num++)
            {
                int col = (int)piecesPositionList[num].Substring(0, 1).ToCharArray()[0] - 64;
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
                    if (amount > 3) { return piecesPositionList[num].Substring(2, piecesPositionList[num].Length -2); }
                }
                if (board[row, col - 1] == player || board[row, col + 1] == player)
                {
                    int amount = 0;
                    for (int x = col; x <= 7; x++) { if (board[row, x] == player) { amount++; } else { break; } }
                    for (int x = col - 1; x >= 1; x--) { if (board[row, x] == player) { amount++; } else { break; } }
                    if (amount > 3) { return piecesPositionList[num].Substring(2, piecesPositionList[num].Length - 2); }
                }
                if (board[row - 1, col - 1] == player || board[row + 1, col + 1] == player)
                {
                    int amount = 0;
                    int n = col;
                    for (int x = row; x <= 6; x++) { if (board[x, n] == player) { amount++; n++; } else { break; } }
                    n = col - 1;
                    for (int x = row - 1; x >= 0; x--) { if (board[x, n] == player) { amount++; n--; } else { break; } }
                    if (amount > 3) { return piecesPositionList[num].Substring(2, piecesPositionList[num].Length - 2); ; }
                }
                if (board[row - 1, col + 1] == player || board[row + 1, col - 1] == player)
                {
                    int amount = 0;
                    int n = col;
                    for (int x = row; x <= 6; x++) { if (board[x, n] == player) { amount++; n--; } else { break; } }
                    n = col + 1;
                    for (int x = row - 1; x >= 0; x--) { if (board[x, n] == player) { amount++; n++; } else { break; } }
                    if (amount > 3) { return piecesPositionList[num].Substring(2, piecesPositionList[num].Length - 2); }
                }
                if (player == 1) { player = 2; } else { player = 1; }
            }
            return "Draw";
        }
    }