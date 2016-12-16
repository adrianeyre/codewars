=begin

Complete the method/function so that it converts dash/underscore delimited words
into camel casing. The first word within the output should be capitalized only
if the original word was capitalized.

Examples:

# returns "theStealthWarrior"
to_camel_case("the-stealth-warrior")

# returns "TheStealthWarrior"
to_camel_case("The_Stealth_Warrior")

=end

# My Solution
def to_camel_case(str)
  return "" if str == ""
  result = str.split(/[\W_]/).map {|x| x.capitalize}
  result[0] = result[0].downcase if str.include?("_")
  result.join
end

# Better Solution
def to_camel_case(str)
  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end

# Another Solution
def to_camel_case(str)
  str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
end
