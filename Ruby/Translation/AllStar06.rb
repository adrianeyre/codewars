=begin

After watching the movie "Arrival", your friend Hannah is obsessed with
palindrome names. She wants a quick way to check if anyone she knows has one of
these unique names.

Create a function, called isPalindrome, that checks if a string is the same
backwards as forwards, returning true or false accordingly.

If a non-string value is given as an argument, the function should throw an error.

isPalindrome("hannah") # => true
isPalindrome("billy") # => false
isPalindrome(1) # => return nil

=end

# My Solution
def isPalindrome(word)
  return nil if word.is_a? Numeric
  word == word.reverse
end

=begin
# Codewars random tests
words = ["racecar","madam","kitty","wolf","robert trebor","kata","code wars",
"code edoc","anna","level","radar","sagas","man","woman","internet","website"]

(1..200).each do |rtest|
  word = words[rand(words.length)]
  solution = isPalindrome2(word)
  Test.assert_equals(isPalindrome(word),solution,"Expected: '#{solution}'")
end
=end
