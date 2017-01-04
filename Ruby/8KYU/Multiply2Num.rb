=begin

This function has to be called multiply and needs to take two numbers as
arguments, and has to return the multiplication of the two arguments.

=end

# My Solution
def multiply(*args)
  args[0] * args[1]
end

# Better Solution
def multiply (*nums)
  nums.reduce(:*)
end
