=begin

You are given an array (which will have a length of at least 3, but could be
very large) containing integers. The array is either entirely comprised of odd
integers or entirely comprised of even integers except for a single integer N.
Write a method that takes the array as an argument and returns N.

For example:

[2, 4, 0, 100, 4, 11, 2602, 36]

Should return: 11

[160, 3, 1719, 19, 11, 13, -21]

Should return: 160

=end

# My Solution
def find_outlier(integers)
  odd_val = []
  even_val = []
  integers.each {|x| x.odd? ? odd_val << x : even_val << x}
  odd_val.length == 1 ? odd_val[0] : even_val[0]
end

# Better Solution
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end
