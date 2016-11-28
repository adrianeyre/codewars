=begin

Given a number return the closest number to it that is divisible by 10.

Example input:

22
25
37
Expected output:

20
30
40

=end

# My Solution
def closest_multiple_10(i)
  i.round(-1)
end

# Other Solution
def closest_multiple_10(i)
  (i/10.0).round * 10
end
