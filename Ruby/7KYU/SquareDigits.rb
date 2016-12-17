=begin

Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out.

Note: The function accepts an integer and returns an integer

=end

# My Solution
def square_digits num
  num.to_s.split("").map {|x| x.to_i*x.to_i}.join.to_i
end

# Another Solution
def square_digits num
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
