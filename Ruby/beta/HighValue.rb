=begin

You will be given two ASCII strings, a and b. Your task is write a
function to determine which one of these strings is "worth" more, and return it.

A string's worth is determined by the sum of its ASCII codepoint
indexes. So, for example, the string HELLO has a value of
372: H is codepoint 72, E 69, L 76, and O is 79. The sum of these values is 372.

In the event of a tie, you should return the first string, i.e. a.

=end

# My Soltuion
def highest_value(a, b)
  sum1 = 0 ; sum2 = 0
  a.split("").each {|x| sum1 += x.ord}
  b.split("").each {|x| sum2 += x.ord}
  return a if sum1 == sum2
  sum1 > sum2 ? a : b
end

# Better Solution
def highest_value(*x)
  x.max_by(&:sum)
end

# Another Solution
def highest_value(a, b)
  [a, b].max_by { |s| s.chars.map(&:ord).reduce(0, :+) }
end
