=begin

In this kata, your job is to return the two highest values in a list, this
doesn't include duplicates.

When given an empty list, you should also return an empty list, no strings will
be passed into the list.

The return should also be ordered from highest to lowest.

If the argument passed isn't a list, you should return false.

Examples:

two_highest([4, 10, 10, 9]) should return [10, 9]

two_highest([]) should return []

two_highest("test") should return False

=end

# My Solution
def two_highest(list)
  (list.is_a? Array) ? list.sort.reverse.uniq[0..1] : false
end

# Better Solution
def two_highest(list)
  list.class != Array ? false : list.max(2)
end
