=begin

Given 2 string parameters, show a concatenation of:

the reverse of the 2nd string with inverted case; e.g Fish -> HSIf
a separator in between both strings: @@@
1st string reversed with inverted case and then mirrored;
e.g Water -> RETAwwATER

=end

# My Solution
def reverse_and_mirror(s1,s2)
  word2 = change_case(s2)
  word1 = change_case(s1)
  final = []
  result = word2 + "@@@"
  0.upto(word1.length-1) do |x|
    final[x] = word1[x]
    final[x+word1.length] = word1.reverse[x]
  end
  final.map {|l| result += l}
  result
end

def change_case(word)
  word2 = ""
  word.split("").each {|l| word2 += l == l.downcase ? l.upcase : l.downcase}
  word2.reverse
end

# Better Solution
def reverse_and_mirror(s1,s2)
  (s2.reverse + "@@@" + s1.reverse + s1).swapcase
end
