=begin

Write a function caseInSwitch which uses a switch statement to test the variable
val and sets the variable answer according to the following values of
val: 1 - "alpha" 2 - "beta" 3 - "gamma" 4 - "delta"

Then, test caseInSwitch for the argument 1 and print the value of answer to the
console.

=end

# My Solution
def caseInSwitch(n)
  case n
    when 1 ; "alpha"
    when 2 ; "beta"
    when 3 ; "gamma"
    when 4 ; "delta"
  end
end
