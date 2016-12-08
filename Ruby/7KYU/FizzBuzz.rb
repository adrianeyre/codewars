=begin

Return an array containing the numbers from 1 to N, where N is the
parametered value. N will never be less than 1.

Replace certain values however if any of the following conditions are met:

If the value is a multiple of 3: use the value 'Fizz' instead
If the value is a multiple of 5: use the value 'Buzz' instead
If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

=end

# My Solution
def fizzbuzz(n)
  return_val = []
  1.upto(n) do |a|
     val = ""
     val += "Fizz" if a % 3 == 0
     val += "Buzz" if a % 5 == 0
     val == "" ? return_val << a : return_val << val
  end
  return_val
end

# Better Solution
def fizzbuzz(n)
  (1..n).map { |x|
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  }
end

# Another Solution
def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end
