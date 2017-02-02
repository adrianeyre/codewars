class Connect4():

    def __init__(self):
        self.board = [[0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0]]
        self.player = 1
        self.win = False

    def play(self, col):
        if self.win: return "Game has finished!"
        if self.board[0][col] != 0: return "Column full!"
        row = 0
        for z in range(0,6):
            if z == 5 or self.board[z+1][col] != 0:
                self.board[z][col] = self.player
                row = z
                break
        if self.board[row - 1][col] == self.player or self.board[row + 1][col] == self.player:
            amount = 0
            for x in range(row,6):
                if self.board[x][col] == self.player:
                    amount = amount + 1
                else:
                    break
            for x in range(row-1,-1,-1):
                if self.board[x][col] == self.player:
                    amount = amount + 1
                else:
                    break
            if amount > 3:
                self.win = True
                return "Player {winner} wins!".format(winner=self.player)
        if self.board[row][col-1] == self.player or self.board[row][col+1] == self.player:
            amount = 0
            for x in range(col,7):
                if self.board[row][x] == self.player:
                    amount = amount + 1
                else:
                    break
            for x in range(col-1,-1,-1):
                if self.board[row][x] == self.player:
                    amount = amount + 1
                else:
                    break
            if amount > 3:
                self.win = True
                return "Player {winner} wins!".format(winner=self.player)
        if self.board[row-1][col-1] == self.player or self.board[row+1][col+1] == self.player:
            amount = 0
            n = col
            for x in range(row,6):
                if self.board[x][n] == self.player:
                    amount = amount + 1
                    n = n + 1
                else:
                    break
            n = col - 1
            for x in range(row-1,-1,-1):
                if self.board[x][n] == self.player:
                    amount = amount + 1
                    n = n - 1
                else:
                    break
            if amount > 3:
                self.win = True
                return "Player {winner} wins!".format(winner=self.player)
        if self.board[row-1][col+1] == self.player or self.board[row+1][col-1] == self.player:
            amount = 0
            n = col
            for x in range(row,6):
                if self.board[x][n] == self.player:
                    amount = amount + 1
                    n = n - 1
                else:
                    break
            n = col + 1
            for x in range(row-1,-1,-1):
                if self.board[x][n] == self.player:
                    amount = amount + 1
                    n = n + 1
                else:
                    break
            if amount > 3:
                self.win = True
                return "Player {winner} wins!".format(winner=self.player)
        result = "Player {turn} has a turn".format(turn=self.player)
        if self.player == 1:
            self.player = 2
        else:
            self.player = 1
        return result

# # CodeWars Random Tests
# import random
#
# for rtest in range(0,20):
#     game1 = Connect4()
#     game2 = Connect4()
#     for t in range(1,random.randint(2,45)):
#         b = random.randint(0,6)
#         solution = game1.play(b)
#         test.it("Expect to be {sol}".format(sol=solution))
#         test.assert_equals(game2.play(b), solution)
