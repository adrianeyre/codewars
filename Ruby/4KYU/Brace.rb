=begin

Write a function called validBraces that takes a string of braces, and
determines if the order of the braces is valid. validBraces should
return true if the string is valid, and false if it's invalid.

This Kata is similar to the Valid Parentheses Kata, but introduces
four new characters. Open and closed brackets, and open and closed
curly braces. Thanks to @arnedag for the idea!

All input strings will be nonempty, and will only consist of open
parentheses '(' , closed parentheses ')', open brackets '[',
closed brackets ']', open curly braces '{' and closed curly braces '}'.

What is considered Valid? A string of braces is considered valid
if all braces are matched with the correct brace.
For example:
'(){}[]' and '([{}])' would be considered valid, while '(}',
'[(])', and '[({})](]' would be considered invalid.

Examples:
validBraces( "(){}[]" ) => returns true
validBraces( "(}" ) => returns false
validBraces( "[(])" ) => returns false
validBraces( "([{}])" ) => returns true

=end

# My Solution
def validBraces(braces)
  level = 0
  check = []
  braces.split("").each do |c|
    if ['(','{','['].include? c
      level += 1
      check[level] = c
    end
    if c == ")" && check[level] == "("
      level -= 1
    elsif c == ")" && check[level] != "("
      level += 10
    end
    if c == "}" && check[level] == "{"
      level -= 1
    elsif c == "}" && check[level] != "{"
      level += 10
    end
    if c == "]" && check[level] == "["
      level -= 1
    elsif c == "]" && check[level] != "["
      level += 10
    end
  end
  level == 0 ? true : false
end

# Better Solution
def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty?
end

# Another Solution
def validBraces(braces)
  (braces.length / 2).times do |i|
    braces.sub!("{}", "")
    braces.sub!("[]", "")
    braces.sub!("()", "")
  end
  braces.empty?
end
