=begin

Sum all the numbers of the array (in F# you get a list) except the highest
and the lowest element (the value, not the index!).
(The highest/lowest element is respectively only one element at each edge,
even if there are more than one with the same value!)

Example:

{ 6, 2, 1, 8, 10 } => 16
{ 1, 1, 11, 2, 3 } => 6


If array is empty, null or None, or if only 1 Element exists, return 0.

=end

# My Solution
def sum_array(arr)
  return 0 if arr == nil
  sum = 0
  arr.sort!
  1.upto(arr.length-2){ |x| sum += arr[x]}
  sum
end

# Better Solution
def sum_array(arr)
  arr ? (arr.size > 2 ? arr.sort[1...-1].inject(:+) : 0) : 0
end
