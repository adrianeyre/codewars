=begin

This time no story, no theory. The examples below show you how to
write function accum:

Examples:

accum("abcd")    # "A-Bb-Ccc-Dddd"
accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt")    # "C-Ww-Aaa-Tttt"
The parameter of accum is a string which includes only letters
from a..z and A..Z.

=end

# My Solution
def accum(s)
  word = ""
  s.split("").to_a.each_with_index {|letter,index| word += (letter * (index+1) + "-").capitalize}
  word[0..-2]
end

# Better Solution
def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end
