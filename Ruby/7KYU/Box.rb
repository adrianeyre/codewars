=begin

Given a number as a parameter, return an array containing strings which form a box.
Like this:

n = 5

[
  '-----',
  '-   -',
  '-   -',
  '-   -',
  '-----'
]
n = 3

[
  '---',
  '- -',
  '---'
]

=end

# My Solution
def box(n)
  result = []
  result << "-" * n
  (2..n-1).each {|x| result << "-" + (" " * (n-2)) + "-" }
  result << "-" * n
end
