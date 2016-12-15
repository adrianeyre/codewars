=begin

Implement the function unique_in_order which takes as argument a sequence and
returns a list of items without any elements with the same value next to each
other and preserving the original order of elements.

For example:

unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]

=end

# My Solution
def unique_in_order(iterable)
  result = []
  iterable = iterable.split("") if !iterable.is_a? Array
  iterable.each_with_index {|x,i| result << x if iterable[i-1] != x || i == 0}
  result
end

# Better Solution
def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end
