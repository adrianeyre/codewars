=begin

It's pretty straightforward. Your goal is to create a function that removes
the first and last characters of a string. You're given one parameter.

=end

# My Solution
def remove_char(s)
  s[1..(s.size - 2)]
end

# Better Solution
def remove_char(s)
  s[1..-2]
end

# Another Solution
def remove_char(s)
  s[1...-1]
end
