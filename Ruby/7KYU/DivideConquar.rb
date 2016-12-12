=begin

Given a mixed array of number and string representations of integers, add up
the string integers and subtract this from the total of the non-string integers.

Return as a number.

=end

# My Solution
def div_con(x)
  pos = 0 ; neg = 0
  x.each {|n| (n.is_a? Integer) ? (pos += n) : (neg += n.to_i)}
  pos - neg
end

# Better Solution
def div_con(x)
  x.reduce(0) { |s, i| i.is_a?(String) ? s - i.to_i : s + i }
end
