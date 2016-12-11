=begin

Write a function that will return the count of distinct case-insensitive
alphabetic characters and numeric digits that occur more than once in the
input string. The input string can be assumed to contain only alphanumeric
characters, including digits, uppercase and lowercase alphabets.

Example

"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabbcdeB" -> 2 # 'a' and 'b'
"indivisibility" -> 1 # 'i'
"Indivisibilities" -> 2 # 'i' and 's'
"aa11" -> 2 # 'a' and '1'

=end

# My Solution
def duplicate_count(text)
    num = 0
    new_text = text.split("").uniq
    new_text.each {|x| num += 1 if text.downcase.count(x) > 1}
    num
end

# Better Solution
def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

# Another Solution
def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end
