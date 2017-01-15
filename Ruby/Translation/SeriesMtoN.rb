=begin

Write a function generateIntegers/generate_integers that accepts two arguments
m/$m and n/$n and generates an array containing the integers from m to n inclusive.

For example, generateIntegers(2, 5)/generate_integers(2, 5) should return [2, 3, 4, 5].

m/$m and n/$n can be any integers greater than or equal to 0.

n/$n will always be greater than or equal to m/$m.

=end

# My Solution
def generateIntegers(m,n)
  (m..n).each.map {|x| x}
end

=begin
# Codewars random tests
(1..200).each do |rtest|
  m = rand(0..100)
  n = rand(m+1..200)
  solution = generateIntegers2(m,n)
  Test.assert_equals(generateIntegers(m,n),solution,"Expected: '#{solution}'")
end
=end
