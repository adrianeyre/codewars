=begin

Given an array of integers as strings and numbers, return the sum of the array
values as if all were numbers.

Return your answer as a number.

=end

# My Solution
def sum_mix(x)
  n = 0
  x.each {|x| n += x.to_i}
  n
end

# Better Solution
def sum_mix(x)
  x.map(&:to_i).inject(:+)
end
