class GuessWho

  def initialize(character)
    @character = character
    @goes = 0
    @characteristic = [["Jean-Claude",["Male","Glasses","Brown eyes","Bald","White hair","Small mouth","Small nose"]],
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
  end

  def guess(guess)
    @goes += 1
    character_index = character_index(@character)
    character_guess = false
    @characteristic.each_with_index do |c,i|
      character_guess = i if @characteristic[i][0].include?(guess)
    end

    if character_guess != false
      return ["Correct! in #{@goes} turns"] if guess == @character
      @characteristic.delete_at(character_guess)
      return return_array
    end

    has_it = !@characteristic[character_index][1].include?(guess)
    (@characteristic.length-1).downto(0).each do |i|
      @characteristic.delete_at(i) if @characteristic[i][1].include?(guess) == has_it
    end
    return_array
  end

  private

  def return_array
    return_array = []
    @characteristic.each{|c| return_array << c[0]}
    return_array
  end

  def character_index(character)
    @characteristic.each_with_index{|c,i| return i if c[0] == character}
    nil
  end
end

class GuessWhoGuesser

  def initialize()
    srand
    @char_options = ["Male","Female","Glasses","Brown eyes","Bald","White hair","Small mouth",
                     "Mustache","Brown hair","Big mouth","Small nose","Blue eyes","Hat","Long hair",
                     "Black hair","Earrings","Blonde hair","Ginger hair","Beard","Big nose"]
   @characteristic = ["Jean-Claude","Pierre","Jean","Amelie",
                      "Mirabelle","Isabelle","Antonin","Bernard",
                      "Owen","Dylan","Herbert","Christine",
                      "Luc","Cecilian","Lionel","Benoit",
                      "Robert","Charline","Renaud","Michel",
                      "Pierre-Louis","Etienne","Henri","Damien"]
    @guess_character = @characteristic[rand(@characteristic.length)]
    @game1 = GuessWho2.new(@guess_character)
    @game2 = GuessWho.new(@guess_character)
  end

  def play()
    srand
    guess = []
    game_result = []
    game_result2 = []
    (0..20).each do |guesses|
      if game_result.length != 1
        guess_it = @char_options[rand(@char_options.length)]
        @char_options.delete_at(@char_options.index(guess_it))
      else
        guess_it = game_result[0]
      end
      game_result = @game1.guess(guess_it)
      Test.assert_equals(@game2.guess(guess_it),game_result,"Expected: #{game_result}")
      break if guess_it == @guess_character
    end
  end
end

# game = GuessWho.new("Amelie")
# p game.guess("Female") # ["Amelie", "Mirabelle", "Isabelle", "Christine", "Charline"]
# p game.guess("Hat") # ["Amelie", "Isabelle"]
# p game.guess("Isabelle") # ["Amelie"]
# p game.guess("Amelie") # ["Correct! in 4 turns"]
#
#
# game = GuessWho.new("Herbert")
# p game.guess("Female") # ["Jean-Claude", "Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Luc", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Pierre-Louis", "Etienne", "Henri", "Damien"]
# p game.guess("Glasses") # ["Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Henri", "Damien"]
# p game.guess("Blonde hair") # ["Owen", "Dylan", "Herbert", "Renaud", "Michel", "Damien"]
# p game.guess("Bald") # ["Dylan", "Herbert"]
# p game.guess("Herbert") # ["Correct! in 5 turns"]
#
# guesser = GuessWhoGuesser.new
# guesser.play
