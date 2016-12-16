=begin

Write a function that calculates the least common multiple of its arguments;
each argument is assumed to be a non-negative integer.

=end

# My Solution
def lcm(*x)
  x.reduce(:lcm)
end
