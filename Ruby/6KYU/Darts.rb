=begin

You've just recently been hired to calculate scores for a Dart Board game!

Scoring specifications:
0 points - radius above 10
5 points - radius between 5 and 10 inclusive
10 points - radius less than 5

If all radiuses are less than 5, award 100 BONUS POINTS!

Write a function that accepts an array of radiuses (can be integers and/or
floats), 
and returns a total score using the above specification.
An empty array should return 0.

Examples:
scoreThrows( [1, 5, 11] ) => returns 15
scoreThrows( [15, 20, 30] ) => returns 0
scoreThrows( [1, 2, 3, 4] ) => returns 140

=end

# My Solution
def scoreThrows(radiuses)
  return 0 if radiuses == []
  result = 0
  extra = 0
  radiuses.each do |x|
    case x
      when 5.0..10.0 ; result += 5
      when 0.0..4.9  ; result += 10 ; extra += 1
    end
  end
  result += 100 if extra == radiuses.length
  result
end

# Better Solution
def scoreThrows(radiuses)
  return 0 unless radiuses.length > 0
  score = radiuses.map { |n| n > 0 && n < 5 ? 10 : n < 11 ? 5 : 0 }.reduce(:+)
  radiuses.all? { |n| n < 5 } ? score + 100 : score
end
