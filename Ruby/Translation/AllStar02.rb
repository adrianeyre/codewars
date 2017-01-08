=begin

Create a function, named findAverage, that takes an array of ages of All Star
Code students and returns the average (do NOT round the return value).

allStars =  [17,16,16,16,16,15,17,17,15,5,17,17,16]
findAverage(allStars) # => 15.384615384615385

=end

# My Solution
def findAverage(values)
  values.inject(&:+).to_f/values.length
end

=begin
# Random tests for code wars
(1..200).each do |rtest|
  allStars = []
  (2..30).each {|x| allStars << rand(1..99)}
  solution = findAverage(allStars)
  Test.assert_equals(findAverage(allStars),solution,"Expected: '#{solution}'")
end
=end
