=begin

Write a function convertBits to determine the number of bits required to convert
positive integer A to positive integer B.

For example, you can change 31 to 14 by flipping the 4th and 0th bit:

 31  0 0 0 1 1 1 1 1
 14  0 0 0 0 1 1 1 0
---  ---------------
bit  7 6 5 4 3 2 1 0
Thus 31 and 14 should return 2.

=end

# My Solution
def convertBits(a,b)
  result = 0
  a = sprintf '%0100d', a.to_s(2)
  b = sprintf '%0100d', b.to_s(2)
  a.split("").each_with_index {|x,i| result += 1 if x != b[i]}
  result
end

# Better Solution
def convertBits(a,b)
  (a ^ b).to_s(2).count('1')
end
