=begin

Write a function that receives two strings and returns n, where n is equal to
the number of characters we should shift the first string forward to match the
second.

For instance, take the strings "fatigue" and "tiguefa". In this case, the first
string has been rotated 5 characters forward to produce the second string, so 5
would be returned.

If the second string isn't a valid rotation of the first string, the method
returns -1.

Examples:

"coffee", "eecoff" => 2

"eecoff", "coffee" => 4

"moose", "Moose" => -1

"isn't", "'tisn" => 2

"Esham", "Esham" => 0

"dog", "god" => -1

=end

# My Solution
def shifted_diff(first, second)
  (0..first.length-1).each do |x|
    return x if first == second
    first = first.split("").rotate(-1).join
  end
  return -1
end

# Better Solution
def shifted_diff(first, second)
  (0..second.size).each {|n|return n if first == second.chars.rotate(n).join}
  -1
end

# Another Solution
def shifted_diff f, s
  f.size==s.size&&(s*2).index(f)||-1
end
