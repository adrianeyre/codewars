=begin

Create a function that returns the sum of the two lowest positive numbers given
an array of minimum 4 integers. No floats or empty arrays will be passed.

For example, when an array is passed like [19,5,42,2,77], the output should be 7

[10,343445353,3453445,3453545353453] should return 3453455.

=end

# My Solution
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  numbers[0] + numbers[1]
end

# Better Solution
def sum_two_smallest_numbers(numbers)
  numbers.min(2).reduce(:+)
end

# Another Solution
def sum_two_smallest_numbers(numbers)
  numbers.sort[0..1].inject(:+)
end
