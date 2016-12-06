=begin

Given a random number:

C#: long;
C++: unsigned long;
You have to return the digits of this number within an array in reverse order.
Example:

348597 => [7,9,5,8,4,3]

=end

# My Solution
def digitize(n)
  result = n.to_s.split("").reverse
  result.map {|x| x.to_i}
end

# Better Solution
def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end
