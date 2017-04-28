class Game():

    def __init__(self, board):
        self.amount = 0
        self.board = board
        self.done = []
        for x in range(0,len(self.board)):
            temp = []
            for y in range(0,len(self.board)):
                temp.append(False)
            self.done.append(temp)

    def play(self):
        def checkmysquare(x,y):
            self.amount += 1
            temp = [[x,y]]
            num = 0
            while (num < len(temp)):
                x = temp[num][0]
                y = temp[num][1]
                self.done[x][y] = True
                if x != 0:
                    if self.board[x-1][y] == 1 and not self.done[x-1][y]:
                        temp.append([x-1,y])
                        self.done[x-1][y] = True
                if x != len(self.board) - 1:
                    if self.board[x+1][y] == 1 and not self.done[x+1][y]:
                        temp.append([x+1,y])
                        self.done[x+1][y] = True
                if y != 0:
                    if self.board[x][y-1] == 1 and not self.done[x][y-1]:
                        temp.append([x,y-1])
                        self.done[x][y-1] = True
                if y != len(self.board) - 1:
                    if self.board[x][y+1] == 1 and not self.done[x][y+1]:
                        temp.append([x,y+1])
                        self.done[x][y+1] = True
                num += 1

        for x in range(0,len(self.board)):
            for y in range(0,len(self.board)):
                if self.board[x][y] == 1 and not self.done[x][y]: checkmysquare(x,y)
        return self.amount

import random
def randomBoard():
    board = []
    boardSize = random.randint(5,50)
    blocks = random.randint(1,boardSize*boardSize)
    for x in range(0,boardSize):
        temp = []
        for y in range(0,boardSize):
            temp.append(0)
        board.append(temp)
    for x in range(0,blocks):
        x = random.randint(0,boardSize-1)
        y = random.randint(0,boardSize-1)
        board[x][y] = 1
    return board
