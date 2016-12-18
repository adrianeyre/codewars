=begin

An isogram is a word that has no repeating letters, consecutive or
non-consecutive. Implement a function that determines whether a string that
contains only letters is an isogram. Assume the empty string is an isogram.
Ignore letter case.

is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false # -- ignore letter case

=end

# My Solution
def is_isogram(string)
  string.split("").each {|x| return false if string.downcase.count(x.downcase) > 1}
  true
end

# Better Solution
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end
