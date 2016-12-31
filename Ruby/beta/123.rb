=begin

Your team is writing a fancy new text editor and you've been tasked with
implementing the line numbering.

Write a function which takes a list of strings and returns each line prepended
by the correct number.

The numbering starts at 1. The format is n: string. Notice the colon and space
in between.

Examples:

number [] # => []
number ["a", "b", "c"] # => ["1: a", "2: b", "3: c"]

=end

# My Solution
def number lines
  result = []
  lines.each_with_index {|x,i| result << "#{i+1}: #{x}"}
  result.flatten
end

# Better Solution
def number lines
  lines.map.with_index(1) { |l, i| "#{i}: #{l}" }
end
