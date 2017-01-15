=begin

Write a function generateIntegers/generate_integers that accepts a single
argument n/$n and generates an array containing the integers from 0 to n/$n
inclusive.

For example, generateIntegers(3)/generate_integers(3) should return [0, 1, 2, 3]

n/$n can be any integer greater than or equal to 0.

=end
def generateIntegers2(n)
  (0..n).each.map {|x| x}
end

=begin

# Codewars random tests
(1..200).each do |rtest|
  num = rand(0..200)
  solution = generateIntegers2(num)
  Test.assert_equals(generateIntegers(num),solution,"Expected: '#{solution}'")
end
=end
