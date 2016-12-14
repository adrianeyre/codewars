=begin

Create a function that returns the average of an array of numbers ("scores"),
rounded to the nearest whole number. You are not allowed to use any loops
(including for, for/in, while, and do/while loops).

=end

# My Solution
def average(array)
  (array.inject(:+).to_f / array.length).round
end

# Another Solution
def average(array)
  array.inject(:+).fdiv(array.length).round
end
