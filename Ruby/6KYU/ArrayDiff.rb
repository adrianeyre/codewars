=begin

Your goal in this kata is to implement an difference function, which subtracts
one list from another.

It should remove all values from list a, which are present in list b.

array_diff([1,2],[1]) == [2]

If a value is present in b, all of its occurrences must be removed from the
other:

array_diff([1,2],[1]) == [2]

=end

# My Solution
def array_diff(a, b)
  a - b
end
