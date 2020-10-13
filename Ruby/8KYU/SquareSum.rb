=begin

Complete the squareSum method so that it squares each number passed into it and
then sums the results together.

For example:

squareSum([1, 2, 2]) # should return 9

=end

# My Solution
def squareSum(numbers)
  num = 0
  numbers.map {|x| num+=x*x}
  num
end

# Better Solution
def squareSum(numbers)
  return 0 if numbers.empty?
  numbers.map {|n| n*n}.reduce(:+)
end
