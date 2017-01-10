=begin

Create a function called strCount() that accepts 2 string arguments and returns
an integer of the count of occurrences the 2nd argument are found in the first.

If no occurrences can be found, a count of 0 should be returned.

strCount('Hello', 'o') // => 1
strCount('Hello', 'l') // => 2
strCount('', 'z') // => 0
Note:
The first argument can be an empty string
The second string argument will always be of length 1

=end

# My Solution
def strCount(word, letter)
  word.count(letter)
end

=begin
# Codewars random tests
letters = "abcdefghijklmnopqrstuvwxyz"
letters = letters.split("")
(1..200).each do |rtest|
  word = []
  (2..rand(100)).each {|x| word << letters[rand(0..25)]}
  word = word.join
  letter = letters[rand(0..25)]
  solution = strCount2(word, letter)
  Test.assert_equals(strCount(word, letter),solution,"Expected: '#{solution}'")
end
=end
