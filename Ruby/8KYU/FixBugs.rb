=begin

In this Kata you should fix/create a program that returns the following values:

false/False if either a or b (or both) are not numbers
a % b plus b % a if both arguments are numbers
You may assume the following:

If a and b are both numbers, neither of a or b will be 0.
Language-Specific Instructions

Javascript and PHP

In this Kata you should try to fix all the syntax errors found in the code.

Once you think all the bugs are fixed run the code to see if it works.
A correct solution should return the values specified in the overview.

Extension: Once you have fixed all the syntax errors present in the code
(basic requirement), you may attempt to optimise the code or try a different
approach by coding it from scratch.

=end

# My Solution
def my_first_kata(a,b)
  !a.is_a?(Integer) || !b.is_a?(Integer) ? false : (a % b) + (b % a)
end

# Better Solution
def my_first_kata(a,b)
  a % b + b % a rescue false
end
