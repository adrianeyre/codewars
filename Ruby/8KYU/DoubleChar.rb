=begin

Given a string, you have to return a string in which each character
(case-sensitive) is repeated once.

double_char("String") ==> "SSttrriinngg"

double_char("Hello World") ==> "HHeelllloo  WWoorrlldd"

double_char("1234!_ ") ==> "11223344!!__  "

=end

# My Solution
def double_char(str)
  str.split("").map {|x| x * 2}.join
end

# Another Solution
def double_char(str)
  str.chars.map{|x| x*2}.join
end
