=begin

Check to see if a string has the same amount of 'x's and 'o's. The method must
return a boolean and be case insensitive. The string can contains any char.

Examples input/output:

XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false

=end

# My Solution
def XO(str)
  (str.downcase.count "x") == (str.downcase.count "o") ? true : false
end
