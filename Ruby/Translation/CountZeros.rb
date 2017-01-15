=begin

Create an algorithm to count the number of zeros that appear between 1 and N.

Examples:

There are 2 zeros from 1 to 20: 10, 20

There are 11 zeros from 1 to 100: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

countZeros(10); // returns 1
countZeros(100); // returns 11
countZeros(200); // returns 31

=end

# My Solution
def countZeros2(n)
  result = 0
  (1..n).each {|x| result += x.to_s.count("0")}
  result
end

=begin
# Codewars random tests
(1..200).each do |rtest|
  num = rand(1..200)
  solution = countZeros2(num)
  Test.assert_equals(countZeros(num),solution,"Expected: '#{solution}'")
end
=end
