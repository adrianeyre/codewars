=begin

Write a function that accepts an array of 10 integers (between 0 and 9), that
returns a string of those numbers in the form of a phone number.

Example:

createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns
"(123) 456-7890"
The returned format must be correct in order to complete this challenge.
Don't forget the space after the closing parenthese!

=end

# My Solution
def createPhoneNumber(numbers)
  first = "" ; second = "" ; last = ""
  0.upto(2) {|x| first += numbers[x].to_s}
  3.upto(5) {|x| second += numbers[x].to_s}
  6.upto(9) {|x| last += numbers[x].to_s}
  "(#{first}) #{second}-#{last}"
end

# Better Solution
def createPhoneNumber(numbers)
  "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end
