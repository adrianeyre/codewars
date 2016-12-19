=begin

The goal of this kata is to write a function that takes two inputs: a string and
a character. The function will count the number of times that character appears
in the string. The count is case insensitive.

For example:

count_char("fizzbuzz","z") => 4
count_char("Fancy fifth fly aloof","f") => 5
The character can be any alphanumeric character.

Good luck.

=end

# My Solution
def count_char(string, char)
  string.upcase.count(char.upcase)
end

# Better Solution
def count_char(string, char)
  string.scan(/#{char}/i).size
end
