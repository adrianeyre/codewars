=begin

Write a function that takes an (unsigned) integer as input, and returns the
number of bits that are equal to one in the binary representation of that number

Example: The binary representation of 1234 is 10011010010, so the function
should return 5 in this case

=end

# My Solution
def count_bits(n)
  result = 0
  n.to_s(2).split("").each {|x| result += 1 if x == "1"}
  result
end

# Better Solution
def count_bits(n)
  n.to_s(2).count "1"
end
