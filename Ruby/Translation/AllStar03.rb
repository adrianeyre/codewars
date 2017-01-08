=begin

Create a function, called removeVowels, that takes a string argument and returns
that same string with all vowels removed (vowels are "a", "e", "i", "o", "u").

removeVowels("drake") # => "drk"
removeVowels("aeiou") # => ""

=end

# My Solution
def removeVowels(word)
  word.split("").reject {|x| x =~ /[aeiou]/}.join
end

=begin
# Codewars random tests
letters = "abcdefghijklmnopqrstuvwxyz"
letters = letters.split("")
(1..200).each do |rtest|
  word = []
  (2..100).each {|x| word << letters[rand(0..25)]}
  word = word.join
  solution = removeVowels2(word)
  Test.assert_equals(removeVowels(word),solution,"Expected: '#{solution}'")
end
=end
