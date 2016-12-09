=begin

Given an array of numbers, return an array, with each member of input
array rounded to a nearest number, divisible by 5.

For example:

roundToFive([34.5, 56.2, 11, 13]);
should return

[35, 55, 10, 15]

=end

# My Solution
def round_to_five(numbers)
  numbers.map {|x| (x / 5.0).round * 5}
end
