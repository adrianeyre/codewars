=begin

Write a method golden? that takes two numeric arguments x, y which represent
dimensions of a 2D rectangle. Return true if the numbers adhere to the golden
ratio and false otherwise.

=end

# My Solution
def golden?(x, y)
  return false if x == y
  (y/(x-y)).round(2) == (x/y).round(2) ? true : false
end
