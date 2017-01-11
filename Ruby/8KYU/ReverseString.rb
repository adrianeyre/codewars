=begin

You need to write a function that reverses the words in a given string. If this
is not clear enough, here are some examples:

=end

# My Solution
def reverse(string)
  string.split.reverse.join(' ')
end
