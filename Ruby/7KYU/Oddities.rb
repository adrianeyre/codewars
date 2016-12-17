=begin

Write a small function that returns the values of an array that are not odd.

All values in the array will be integers. Return the good values in the order
they are given.

def no_odds( values )

=end

# My Solution
def no_odds( values )
  values.reject {|x| x.odd?}
end

# Another Solution
def no_odds( values )
  values.select &:even?
end

# Another Solution
def no_odds( values )
  values.reject(&:odd?)
end
