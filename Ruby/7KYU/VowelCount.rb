=begin

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.

=end

# My Solution
def getCount(inputStr)
  inputStr.chars.count {|c| c =~ /[aeiou]/i }
end

# Better Solution
def getCount(inputStr)
  inputStr.count("aeiou")
end
