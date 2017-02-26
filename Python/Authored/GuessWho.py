class GuessWho():

    def __init__(self, character):
        self.character = character
        self.goes = 0
        self.characteristic = [["Jean-Claude",["Male","Glasses","Brown eyes","Bald","White hair","Small mouth","Small nose"]],
                               ["Pierre",["Male","Mustache","Brown eyes","Brown hair","Big mouth","Small nose"]],
                               ["Jean",["Male","White hair","Big nose","Big mouth","Blue eyes"]],
                               ["Amelie",["Female","Hat","Brown hair","Small mouth","Long hair","Brown eyes","Small nose"]],
                               ["Mirabelle",["Female","Black hair","Earrings","Small mouth","Brown eyes","Big nose"]],
                               ["Isabelle",["Female","Blonde hair","Glasses","Hat","Small mouth","Small nose","Brown eyes"]],
                               ["Antonin",["Male","Brown eyes","Black hair","Small nose","Big mouth"]],
                               ["Bernard",["Male","Brown eyes","Brown hair","Small nose","Hat"]],
                               ["Owen",["Male","Blue eyes","Blonde hair","Small nose","Small mouth"]],
                               ["Dylan",["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Bald","Beard"]],
                               ["Herbert",["Male","Brown eyes","Blonde hair","Big nose","Small mouth","Bald"]],
                               ["Christine",["Female","Blue eyes","Blonde hair","Small nose","Small mouth","Long hair"]],
                               ["Luc",["Male","Brown eyes","White hair","Small nose","Small mouth","Glasses"]],
                               ["Cecilian",["Male","Brown eyes","Ginger hair","Small nose","Small mouth"]],
                               ["Lionel",["Male","Brown eyes","Brown hair","Big nose","Big mouth","Mustache"]],
                               ["Benoit",["Male","Brown eyes","Brown hair","Small mouth","Small nose","Mustache","Beard"]],
                               ["Robert",["Male","Blue eyes","Brown hair","Big nose","Big mouth"]],
                               ["Charline",["Female","Brown hair","White hair","Small nose","Big mouth"]],
                               ["Renaud",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Mustache"]],
                               ["Michel",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Beard"]],
                               ["Pierre-Louis",["Male","Blue eyes","Brown hair","Small nose","Small mouth","Bald","Glasses"]],
                               ["Etienne",["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Glasses"]],
                               ["Henri",["Male","Brown eyes","White hair","Small nose","Big mouth","Hat"]],
                               ["Damien",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Hat"]]]

    def guess(self, guess):

        def character_index(character):
            for z in range(0,len(self.characteristic)):
                if self.characteristic[z][0] == character: return z
            return None

        def return_array():
            return_array = []
            for z in range(0,len(self.characteristic)):
                return_array.append(self.characteristic[z][0])
            return return_array

        self.goes += 1
        character_index = character_index(self.character)
        character_guess = -1
        for i in range(0,len(self.characteristic)):
            if guess == self.characteristic[i][0]: character_guess = i

        if character_guess != -1:
            if guess == self.character: return ["Correct! in "+str(self.goes)+" turns"]
            self.characteristic.pop(character_guess)
            return return_array()
        if guess in self.characteristic[character_index][1]:
            has_it=False
        else:
            has_it=True
        for i in range(len(self.characteristic)-1,-1,-1):
            if has_it:
                if guess in self.characteristic[i][1]: self.characteristic.pop(i)
            else:
                if guess not in self.characteristic[i][1]: self.characteristic.pop(i)
        return return_array()

import random
class GuessWhoGuesser():

    def __init__(self):
        self.char_options = ["Male","Female","Glasses","Brown eyes","Bald","White hair","Small mouth",
                             "Mustache","Brown hair","Big mouth","Small nose","Blue eyes","Hat","Long hair",
                             "Black hair","Earrings","Blonde hair","Ginger hair","Beard","Big nose"]
        self.characteristic = ["Jean-Claude","Pierre","Jean","Amelie",
                               "Mirabelle","Isabelle","Antonin","Bernard",
                               "Owen","Dylan","Herbert","Christine",
                               "Luc","Cecilian","Lionel","Benoit",
                               "Robert","Charline","Renaud","Michel",
                               "Pierre-Louis","Etienne","Henri","Damien"]
        self.guess_character = self.characteristic[random.randint(0,len(self.characteristic)-1)]
        self.game = GuessWho(self.guess_character)

    def play(self):
        guess = []
        game_result = []
        for i in range(0,21):
            if len(game_result) != 1:
                guess_it = self.char_options[random.randint(0,len(self.char_options)-1)]
                self.char_options.pop(self.char_options.index(guess_it))
            else:
                guess_it = game_result[0]
            game_result = self.game.guess(guess_it)
            print game_result
            if guess_it == self.guess_character: break


# game = GuessWho("Amelie")
# print game.guess("Male")
# print game.guess("Hat") # ["Amelie", "Isabelle"]
# print game.guess("Isabelle") # ["Amelie"]
# print game.guess("Amelie") # ["Correct! in 4 turns"]
#
# game = GuessWho("Herbert")
# print game.guess("Female") # ["Jean-Claude", "Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Luc", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Pierre-Louis", "Etienne", "Henri", "Damien"]
# print game.guess("Glasses") # ["Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Henri", "Damien"]
# print game.guess("Blonde hair") # ["Owen", "Dylan", "Herbert", "Renaud", "Michel", "Damien"]
# print game.guess("Bald") # ["Dylan", "Herbert"]
# print game.guess("Herbert") # ["Correct! in 5 turns"]
# #
# guesser = GuessWhoGuesser()
# guesser.play()
