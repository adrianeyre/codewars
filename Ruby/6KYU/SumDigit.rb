=begin

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take
the sum of the digits of n. If that value has two digits, continue reducing in
this way until a single-digit number is produced. This is only applicable to the
natural numbers.

Here's how it works (Ruby example given):

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

=end

# My Solution
def digital_root(n)
  num = 0
  n.to_s.split("").each {|x| num += x.to_i}
  num.to_i > 9 ? digital_root(num.to_i) : num.to_i
end

# Better Solution
def digital_root(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end

# Another Solution
def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.split(//).map(&:to_i).inject(:+));
end
