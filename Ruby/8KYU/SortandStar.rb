=begin

You will be given an array (s). You must sort it alphabetically
(case-sensitive!!) and then return the first value.

The returned value must be a string, and have '***' between
each of its letters.

=end

# My solution
def two_sort(s)
  word = ""
  s.sort[0].each_char {|a| word += a + "***"}
  return word = word [0..word.length-4]
end

# Better solution
def two_sort(s)
  s.min.chars.join('***')
end
