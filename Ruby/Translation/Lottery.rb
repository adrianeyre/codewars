=begin

Your task is to write an update for a lottery machine. Its current version produces a sequence of random letters and integers (passed as a string to the function lottery()). Your code inside lottery() must filter out all letters and return unique integers as a string. If there are no integers in the string return - “One more run!”.

Examples:

var str = "hPrBKWDH8yc6Lt5NQZWQ";

lottery(str); // should return "865"

var str = "ynMAisVpHEqpqHBqTrwH";

lottery(str); // should return "One more run!"

=end

# My Solution
def lottery(str)
  str = str.gsub(/[a-zA-Z]/,"").split("").uniq.join
  str == "" ? "One more run!" : str
end

=begin
# Codewars random tests
letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("")

(1..200).each do |rtest|
  word = []
  (1..rand(1..100)).each do |x|
    word << letters[rand(letters.length)]
    word << rand(0..9) if rand(3) == 2
  end
  word = word.join
  p solution = lottery2(word)
  Test.assert_equals(lottery(word),solution,"Expected: '#{solution}'")
end
=end
