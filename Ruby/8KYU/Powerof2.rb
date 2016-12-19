=begin

Write a function powersOfTwo which will return list of all powers of 2 from 0 to
n (where n is an exponent).

E.g:

n = 0 -> 2^0 -> [1]

n = 1 -> 2^0, 2^1 -> [1,2]

n = 2 -> 2^0, 2^1, 2^2 -> [1,2,4]

=end

# My Solution
def powers_of_two(n)
  0.upto(n).map {|x| 2**x}
end

# Another Solution
def powers_of_two(n)
  (0..n).map {|k| 2**k}
end
