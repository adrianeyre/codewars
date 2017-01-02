=begin

Hangman is a paper and pencil guessing game for two or more players. One player
thinks of a word, phrase or sentence and the other tries to guess it by
suggesting letters, within a certain number of guesses.

Everytime the player misses a word, a part of the sketch is drawn:

Hangman

If the player finds the word before being hung he wins. He has 6 chances to miss
before being hung.

Your task

You have to implement a class Hangman that receives a word in it's constructor
and has the method guess, that will be used by the player to try to guess the word.

Your method guess will receive a letter as parameter and has this return behaviour:

if the player found the word: You found the word! ({word})
if the player got hung: You got hung! The word was {word}.
if the game still on: {game state}
if the game has ended already: The game has ended.
important: if the player guesses a letter that was already guessed, you should
ignore it and return the {game state}

{game state}

The {game state} is the word to be found with all letters separated by white
space. The letters that weren't found yet will be replaced with _ and, if the
player had missed one or more letters, we will keep this record adding # to the
output followed by a string with all missed letters in order of occurence.

Ex. If the player is trying to guess the word codewars and attempts with the
letters d,w,u,a,c,g,s, respectively, he would guess the letters d,w,a,c,s right
and miss the letters u,g. The game state at this point should look like:

c _ d _ w a _ s # ug

Example:

let hangman = new Hangman('wars');

hangman.guess('w')
w _ _ _
hangman.guess('u')
w _ _ _ # u
hangman.guess('s')
w _ _ s # u
hangman.guess('a')
w a _ s # a
hangman.guess('r')
# You found the word! (wars)
hangman.guess('g')
# The game has ended.

=end

# My Solution
class Hangman
  attr_accessor :word, :found, :wrong, :lives, :complete

  def initialize(word)
    @word = word
    @lives = 6
    @complete = false
    @wrong = []
    @found = []
    (0..word.length-1).each {|i| @found << "_" }
  end

  def guess(letter)
    if (!@found.include? letter.downcase) && (!@wrong.include? letter.downcase)
      done = false
      word.split("").each_with_index do |z,i|
        (@found[i] = letter ; done = true) if z.downcase == letter.downcase
      end
      (wrong << letter ; @lives -= 1) if !done
      return "The game has ended." if @complete
      return "You got hung! The word was #{word}." if lives < 0
      (@complete = true ; return "You found the word! (#{word})") if found.join.downcase == @word.downcase
    end
    result = "#{found.join(" ")}"
    result += " # #{wrong.join}" if wrong.length != 0
    result
  end
end

# Tests for CodeWars
Test.it("Repeated letters (word 'ababab' with input 'acb'") do
  hangman = Hangman.new('ababab')
  Test.assert_equals(hangman.guess('a'),'a _ a _ a _')
  Test.assert_equals(hangman.guess('c'),'a _ a _ a _ # c')
  Test.assert_equals(hangman.guess('b'),'You found the word! (ababab)')
end

Test.it("Misses all letters (word 'owl' with input 'aeiubcd'") do
  hangman = Hangman.new('owl')
  Test.assert_equals(hangman.guess('a'),'_ _ _ # a')
  Test.assert_equals(hangman.guess('e'),'_ _ _ # ae')
  Test.assert_equals(hangman.guess('i'),'_ _ _ # aei')
  Test.assert_equals(hangman.guess('u'),'_ _ _ # aeiu')
  Test.assert_equals(hangman.guess('b'),'_ _ _ # aeiub')
  Test.assert_equals(hangman.guess('c'),'_ _ _ # aeiubc')
  Test.assert_equals(hangman.guess('d'),'You got hung! The word was owl.')
end

Test.it("Finds all letters (word 'owl' with input 'owl'") do
  hangman = Hangman.new('owl')
  Test.assert_equals(hangman.guess('o'),'o _ _')
  Test.assert_equals(hangman.guess('w'),'o w _')
  Test.assert_equals(hangman.guess('l'),'You found the word! (owl)')
end

Test.it("Almost hung (word 'owl' with input 'aeiubcowl'") do
  hangman = Hangman.new('owl')
  Test.assert_equals(hangman.guess('a'),'_ _ _ # a')
  Test.assert_equals(hangman.guess('e'),'_ _ _ # ae')
  Test.assert_equals(hangman.guess('i'),'_ _ _ # aei')
  Test.assert_equals(hangman.guess('u'),'_ _ _ # aeiu')
  Test.assert_equals(hangman.guess('b'),'_ _ _ # aeiub')
  Test.assert_equals(hangman.guess('c'),'_ _ _ # aeiubc')
  Test.assert_equals(hangman.guess('o'),'o _ _ # aeiubc')
  Test.assert_equals(hangman.guess('w'),'o w _ # aeiubc')
  Test.assert_equals(hangman.guess('l'),'You found the word! (owl)')
end

Test.it("Almost right (word 'owl' with input 'owaeiubcg'") do
  hangman = Hangman.new('owl')
  Test.assert_equals(hangman.guess('o'),'o _ _')
  Test.assert_equals(hangman.guess('w'),'o w _')
  Test.assert_equals(hangman.guess('a'),'o w _ # a')
  Test.assert_equals(hangman.guess('e'),'o w _ # ae')
  Test.assert_equals(hangman.guess('i'),'o w _ # aei')
  Test.assert_equals(hangman.guess('u'),'o w _ # aeiu')
  Test.assert_equals(hangman.guess('b'),'o w _ # aeiub')
  Test.assert_equals(hangman.guess('c'),'o w _ # aeiubc')
  Test.assert_equals(hangman.guess('g'),'You got hung! The word was owl.')
end

Test.it("The game has ended (word 'aaaaaeeeee' with input 'aeioubcd'") do
  hangman = Hangman.new('aaaaaeeeee')
  Test.assert_equals(hangman.guess('a'),'a a a a a _ _ _ _ _')
  Test.assert_equals(hangman.guess('e'),'You found the word! (aaaaaeeeee)')
  Test.assert_equals(hangman.guess('i'),'The game has ended.')
  Test.assert_equals(hangman.guess('o'),'The game has ended.')
  Test.assert_equals(hangman.guess('u'),'The game has ended.')
  Test.assert_equals(hangman.guess('b'),'The game has ended.')
  Test.assert_equals(hangman.guess('c'),'The game has ended.')
  Test.assert_equals(hangman.guess('d'),'The game has ended.')
end

Test.it("Should ignore repeated letters (word 'codewars' with input 'ccccccccoouuuuuuuudewars'") do
  hangman = Hangman.new('codewars')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('c'),'c _ _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('o'),'c o _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('o'),'c o _ _ _ _ _ _')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('u'),'c o _ _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('d'),'c o d _ _ _ _ _ # u')
  Test.assert_equals(hangman.guess('e'),'c o d e _ _ _ _ # u')
  Test.assert_equals(hangman.guess('w'),'c o d e w _ _ _ # u')
  Test.assert_equals(hangman.guess('a'),'c o d e w a _ _ # u')
  Test.assert_equals(hangman.guess('r'),'c o d e w a r _ # u')
  Test.assert_equals(hangman.guess('s'),'You found the word! (codewars)')
end

letters="abcdefghijklmnopqrstruwxyz"
letters=letters.split("")

(0..20).each do |rtest|
  word = ""
  goes = rand(99)+ 1
  (1..rand(99)+1).each {|z| word += letters[rand(letters.length)]}
  hangman = Hangman2.new(word)

  (1..rand(99)+1).each do |z|
    letter = letters[rand(letters.length)]
    solution = hangman.guess(letter)
    Test.assert_equals(hangman.guess(letter),solution)
  end
end
