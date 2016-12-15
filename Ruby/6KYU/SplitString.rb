=begin

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').

Examples:

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']

=end

# My Solution
def solution(str)
  result = []
  str += "_" if str.length.odd?
  (0..str.length-1).step(2).each {|i| result << str[i]+str[i+1]}
  result
end

# Better Solution
def solution str
  (str + '_').scan /../
end
