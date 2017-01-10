=begin

Create a function called noRepeat() that takes a string argument and returns a
single letter string of the first not repeated character in the entire string.

noRepeat("aabbccdde") // => "e"
noRepeat("wxyz") // => "w"
noRepeat("testing") // => "e"
Note: ONLY letters from the english alphabet will be used as input There will
ALWAYS be at least one non-repeating letter in the input string

=end
# My Solution
def no_repeat(string)
  string.split("").each{|x| return x if string.count(x) == 1}
end

# Better Solution
def no_repeat(string)
  string.chars.find{ |c| string.count(c) == 1 }
end
