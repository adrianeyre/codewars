=begin

We want to generate a function that computes the series starting from 0 and
ending until the given number following the sequence:

0 1 3 6 10 15 21 28 36 45 55 ....

which is created by

0, 0+1, 0+1+2, 0+1+2+3, 0+1+2+3+4, 0+1+2+3+4+5, 0+1+2+3+4+5+6, 0+1+2+3+4+5+6+7

Input:

LastNumber

Output:

series and result

Example:

Input:

> 6
Output:

0+1+2+3+4+5+6 = 21
Input:

> -15
Output:

-15<0
Input:

> 0
Output:

0=0

=end

# My Solution
def show_sequence(n)
  return 0 if n < 0
  (0..n).each.inject(:+)
end

=begin
# Codewars random tests
(1..200).each do |rtest|
  num = rand(-10..200)
  solution = show_sequence2(num)
  Test.assert_equals(show_sequence(num),solution,"Expected: '#{solution}'")
end
=end
