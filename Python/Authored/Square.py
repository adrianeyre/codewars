class Game():

    def __init__(self, board):
        self.board = board

    def play(self, lines):
        def checkmysquare(squares, arr):
            num2 = 0; xt = 0
            for x in arr:
                if x in squares:
                    num2 += 1
                else:
                    xt = x
            if num2 == len(arr)-1: squares.append(xt)
            return squares

        for n in lines:
            topbot = True
            num = 0
            for x in range(1,n+1):
                num += 1
                if topbot and num ==  self.board:
                    num = 0
                    topbot = False
                elif not topbot and num == self.board + 1:
                    num = 0
                    topbot = True
            if num == 0: topbot = not topbot
            if topbot:
                lines = checkmysquare(lines, [n-self.board-1, n-self.board, n-(self.board*2)-1])
                lines = checkmysquare(lines, [n+self.board+1, n+self.board, n+(self.board*2)+1])
            else:
                if num != 0:
                    lines = checkmysquare(lines, [n+1, n-self.board, n+self.board+1])
                if num != 1:
                    lines = checkmysquare(lines, [n-1, n+self.board, n-self.board-1])
        return sorted(lines)

import random
def makesquare(n):
    sq = []
    maxn = 2*n*n+(n*2)-1
    for x in range(1, random.randint(1,maxn*2)):
        num = random.randint(1,maxn)
        if not num in sq: sq.append(num)
    return sorted(sq)

original = [20,21,24,26,33,34,35,38,39]
game = Game(4)
print(game.play(original))
