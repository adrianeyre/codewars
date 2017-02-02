class SnakesLadders():

    def __init__(self):
        self.player_square = []
        self.player_square.append(0)
        self.player_square.append(0)
        self.player = 0
        self.won = False
        self.trap = [[2,38],[7,14],[8,31],[15,26],[21,42],[28,84],[36,44],[51,67],[71,91],[78,98],[87,94],
                    [16,6],[46,25],[49,11],[62,19],[64,60],[74,53],[89,68],[92,88],[95,75],[99,80]]

    def play(self, die1, die2):
        if self.won: return "Game over!"
        roll = die1 + die2
        if roll + self.player_square[self.player] <= 100:
            self.player_square[self.player] = self.player_square[self.player] + roll
            if self.player_square[self.player] == 100:
                self.won = True
                return "Player {wonplayer} Wins!".format(wonplayer=self.player+1)
        else:
            self.player_square[self.player] = 100 - ((self.player_square[self.player] + roll) - 100)
        for t in range(len(self.trap)):
            if self.player_square[self.player] == self.trap[t][0]:
                self.player_square[self.player] = self.trap[t][1]
            message = "Player "+str(self.player+1)+" is on square "+str(self.player_square[self.player])
            if die1 != die2:
                if self.player == 0:
                    self.player = 1
                else:
                    self.player = 0
        return message

# # Codewars Random Tests
# for rtest in range(1):
#     tgame = SnakesLadders2()
#     game = SnakesLadders()
#     for games in range(50):
#         x = random.randint(1,6)
#         y = random.randint(1,6)
#         solution = tgame.play(x, y)
#         test.it("Should return: "+solution)
#         test.assert_equals(game.play(x, y), solution)
