=begin

Vicky is quite the small wonder. Most people don't even realize she's not a real
girl, but a robot living amongst us. Sure, if you stick around her home for a
while you might see her creator open up her back and make a few tweaks and even
see her recharge in the closet instead of sleeping in a bed.

In this kata, we're going to help Vicky keep track of the words she's learning.

Write a function, learnWord(word) which is a method of the Robot object. The
function should report back whether the word is now stored, or if she already
knew the word.

Example:

Case shouldn't matter. Only alpha characters are valid. There's also a little
trick here. Enjoy!

=end

# My Solution
class Robot
  attr_accessor :words

  def initialize
    @words = ["do","input","not","thank","you","for","teaching","me", "i","already","know","understand","word","the"]
  end

  def learn_word(word)
    return "I do not understand the input" if word =~ /\W/ || word =~ /\d/ || word == ""
    return "I already know the word #{word}" if words.include? word.downcase
    words << word.downcase
    "Thank you for teaching me #{word}"
  end
end
