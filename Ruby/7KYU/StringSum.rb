=begin

Compare two strings by comparing the sum of their values (ASCII character code).
For comparing treat all letters as UpperCase.

Null-Strings should be treated as if they are empty strings.
If the string contains other characters than letters, treat the whole string as
it would be empty.

Examples:

"AD","BC" -> equal

"AD","DD" -> not equal

"gf","FG" -> equal

"zz1","" -> equal

"ZzZz", "ffPFF" -> equal

"kl", "lz" -> not equal

null, "" -> equal

Your method should return true, if the strings are equal and false if they are
not equal.

=end

# My Solution
def compare(s1,s2)
  return true if s1 == "" || s2 == ""
  s1.gsub! /[\W\d]/ , ""
  s2.gsub! /[\W\d]/ , ""
  p s1
  p s2
  s1Sum = 0 ; s2Sum = 0
  s1.split("").each {|x| s1Sum += x.upcase.ord}
  s2.split("").each {|x| s2Sum += x.upcase.ord}
  s1Sum == s2Sum
end

# Better Solution
def compare *s
  s.map{|s| s.to_s.upcase[/^[A-Z]*$|/].sum }.reduce &:==
end
