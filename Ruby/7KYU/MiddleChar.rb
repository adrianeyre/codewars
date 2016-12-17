=begin

You are going to be given a word. Your job is to return the middle character of
the word. If the word's length is odd, return the middle character. If the
word's length is even, return the middle 2 characters.

Examples:

Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A"
Input

A word (string) of length 0 < str < 1000

Output

The middle character(s) of the word represented as a string.

=end

# My Solution
def get_middle(s)
  mid = (s.length / 2.0)
  mid.to_s[-1] == "5" ? s[mid] : s[mid-1..mid]
end

# Better Solution
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end
