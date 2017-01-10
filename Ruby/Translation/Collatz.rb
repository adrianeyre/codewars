=begin

The Collatz Conjecture, as defined on the Wikipedia page states

Take any positive integer n.
If n is even, divide it by 2 to get n / 2.
If n is odd, multiply it by 3 and add 1 to obtain 3n + 1.
Repeat the process indefinitely.
The conjecture is that no matter what number you start with,
you will always eventually reach 1.
You're a nerdy programer so you want to be able to test any number on the fly
and see how many steps it takes to 1. (otherwise you'll skip this Kata)

Examples

collatz(1); path: 1 returns: 1
collatz(2); path: 2,1 returns: 2
collatz(3); path: 3,10,5,16,8,4,2,1 returns: 8
collatz(7); path: 7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1 returns: 17
In Summary

define a function, "collatz", that returns how many steps a given positive
integer takes to reach 1.

Don't worry about finding a counter-example to the Collatz conjecture and, in
turn, getting an error, all numbers less than 100 billion have 1228 steps or
less and you won't be tested with numbers that high.

=end

# My Solution
def collatz(n)
  return 1 if n==1
  amount = 1
  begin
    amount += 1
    n % 2 != 0 ? n = n * 3 + 1 : n = n / 2
  end while n != 1
  amount
end


=begin
# Codewars random tests
def collatz2(n)
  return 1 if n==1
  amount = 1
  begin
    amount += 1
    n % 2 != 0 ? n = n * 3 + 1 : n = n / 2
  end while n != 1
  amount
end

(1..200).each do |rtest|
  num = rand(1..200)
  solution = collatz2(num)
  Test.assert_equals(collatz(num),solution,"Expected: '#{solution}'")
end
=end
