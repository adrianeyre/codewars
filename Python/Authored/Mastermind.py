import random
def mastermind(game):
    colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"]
    amount = {"Red": 0, "Blue": 0, "Green": 0, "Orange": 0, "Purple": 0, "Yellow": 0, "": 0}
    guess = []
    for colour in colours:
        answer = game.check([colour, colour, colour, colour])
        colour_amount = answer.count("Black")
        amount[colour] = colour_amount
        for a in range(0,colour_amount):
            guess.append(colour)
    answer = False
    while answer != "WON!":
        answer = game.check(random.sample(guess, len(guess)))

import random
class MasterMind():
    def __init__(self):
        self.colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"]
        self.goes = 0
        self.result = []
        for a in range(1,5):
            self.result.append(self.colours[random.randint(0,len(self.colours)-1)])
        self.amount = {"Red": 0, "Blue": 0, "Green": 0, "Orange": 0, "Purple": 0, "Yellow": 0, "": 0}
        for colour in self.result:
            self.amount[colour] += 1

    def check(self, attempt):
        self.goes += 1
        if len(attempt) != 4: return ["Error"]
        if attempt == self.result:
            return "WON!"
        amount = self.amount
        result = []
        new_attempt = []
        for colour in attempt:
            new_attempt.append(colour)
        index = -1
        for colour in attempt:
            index += 1
            if colour not in self.colours:
                return "Error"
            if colour == self.result[index]:
                result.append("Black")
                amount[colour] -= 1
                new_attempt[index] = ""
        for colour in new_attempt:
            if amount[colour] > 0:
                result.append("White")
                amount[colour] -= 1
        return random.sample(result, len(result))

game = MasterMind()
mastermind(game)
