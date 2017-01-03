=begin

A palindrome is a word, phrase, number, or other sequence of characters which
reads the same backward or forward. Allowances may be made for adjustments to
capital letters, punctuation, and word dividers.

true == is_palindrome("anna")
false == is_palindrome("walter")

=end

# My Solution
def is_palindrome(str)
  str.to_s == str.to_s.reverse
end
