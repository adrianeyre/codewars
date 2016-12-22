=begin

Explanation

Write a function that shortens a string to a given length. Instead of cutting
the string from the end, your function will shorten it from the middle like
shrinking.

For example:

sentence = "The quick brown fox jumps over the lazy dog"
res = shorten(sentence, 27)

res === "The quick br...the lazy dog"
Your function should also accept an optional argument glue to get the parts
together.

sentence = "The quick brown fox jumps over the lazy dog"
res = shorten(sentence, 27, '---')

res === "The quick br---the lazy dog"
Rules are simple:

Result must always be equal to the given length
Only exception to above rule is, when string is already shorter than given
length. In that case string should be returned untouched.
If no glue is sent ... should be used by default
If glue cannot go exactly in the middle, second part should be longer
If glue cannot fit in the shortened string, string should be shortened without
shrinking.
meaning; shorten('hello world', 5, '....') should return hello because 4 char
glue cannot fit in the shortened string.
glue must have at least 1 char on both ends. Example minimum h...d, results
....d or h.... are not excepted.
You can assume you'll always receive a string as the sentence and the glue. And
integer number for the length.
Think about other possible edge cases, there are some surprises.

=end

# My Solution
def shorten(string, length, glue="...")
  return "" if length == 0
  return string if length >= string.length
  return string[0..length-1] if glue.length + 1 == length || glue.length >= length

  len = (length.to_f - glue.length) / 2
  len.floor-1 < 0 ? result = "" : result = string[0..len.floor-1]
  result += glue + string[-len.round..-1]
end

# Another Solution
def shorten(string, length, glue="...")
  b = length - glue.size
  return string[0...length] if string.size <= length or b <= 1
  string[0...b/2] + glue + string[-b/2..-1]
end
