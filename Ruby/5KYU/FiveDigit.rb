=begin

In the following 6 digit number:

283910
91 is the greatest sequence of 2 digits.

Complete the solution so that it returns the largest five digit number
found within the number given.. The number will be passed in as a string
of only digits. It should return a five digit integer.

The number passed may be as large as 1000 digits.

=end

# My Solution
def solution(digits)
  new_array = []
  digits_word = digits.to_s
  0.upto(digits_word.length-5) do |i|
    new_array << digits_word[i..i+4].to_i
  end
  new_array.max
end

# Better Solution
def solution(digits)
  digits.split('').each_cons(5).max.join.to_i
end

# Another Solution
def solution(digits)
  digits.scan(/\d{5}/).max.to_i
end
