=begin

You need to write regex that will validate a password to make sure
it meets the follwing criteria:

At least six characters long
contains a lowercase letter
contains an uppercase letter
contains a number
Valid passwords will only be alphanumeric characters.

=end

# My Solution
# 1 or more   a-z        A-Z     Digit
# Only                               a-zA-Z and Digit
#                                                6 or more char
regex=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/
