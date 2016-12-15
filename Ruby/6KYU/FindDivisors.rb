=begin

Create a function named divisors that takes an integer and returns an array with
all of the integer's divisors(except for 1 and the number itself). If the number
is prime return the string '(integer) is prime' (use Either String a in Haskell)

Example:

divisors(12); #should return [2,3,4,6]
divisors(25); #should return [5]
divisors(13); #should return "13 is prime"
You can assume that you will only get positive integers as inputs.

=end

# My Solution
def divisors(n)
  result = []
  2.upto(n-1) {|x| result << x if n % x == 0}
  result == [] ? "#{n} is prime" : result
end

# Another Solution
def divisors(n)
  vals = (2..n/2).select{|x| n%x==0}
  vals.empty? ? "#{n} is prime" : vals
end
