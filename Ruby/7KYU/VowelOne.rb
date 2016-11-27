=begin

Write a function that takes a string and outputs a strings of 1's
and 0's where vowels become 1's and non-vowels become 0's.

All non-vowels including non alpha characters (spaces,commas etc.)
should be included.

=end

# My Solution
def vowel_one(s)
    x = ""
    s.each_char {|letter| ['a','e','i','o','u'].include?(letter.downcase) ? x += "1" : x += "0"}
    return x
end

# Better Solution
def vowel_one(s)
    s.gsub(/[^aeiou]/i, '0').gsub(/[^0]/, '1')
end
