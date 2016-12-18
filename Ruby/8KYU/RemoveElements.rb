=begin

Take an array and remove every second element out of that array. Always keep the
first element and start removing with the next element.

Example:

my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
None of the arrays will be empty, so you don't have to worry about that!

=end

# My Solution
def remove_every_other(arr)
  result = []
  arr.each_with_index {|x,i| result << x if i.even?}
  result
end

# Better Solution
def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

# Another Solution
def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end
