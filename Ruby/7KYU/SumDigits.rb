=begin

Write a function named sumDigits which takes a number as input and returns the
sum of the absolute value of each of the number's decimal digits. For example:

  sumDigits 10    # Returns 1
  sumDigits 99    # Returns 18
  sumDigits -32   # Returns 5
Let's assume that all numbers in the input will be integer values.

=end

# My Solution
def sumDigits(number)
  num = 0
  number.to_s.split("").each {|x| num += x.to_i.abs}
  num
end

# Better Solution
def sumDigits(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# Another Solution
def sumDigits(number)
  number.abs.to_s.split("").map(&:to_i).inject(&:+)
end
