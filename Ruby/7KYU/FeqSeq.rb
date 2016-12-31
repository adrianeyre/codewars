=begin

Return an output string that translates an input string s/$s by replacing each
character in s/$s with a number representing the number of times that character
occurs in s/$s and separating each number with the character(s) sep/$sep.

=end

# My Solution
def freqSeq(str, seq)
  str.split("").each.map {|x| str.count(x)}.join(seq)
end

# Another Solution
def freqSeq(str, seq)
  str.chars.map {|x| str.count(x)}.join(seq)
end
