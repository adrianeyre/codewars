=begin

The goal of this exercise is to convert a string to a new string where each
character in the new string is '(' if that character appears only once in
the original string, or ')' if that character appears more than once in the
original string. Ignore capitalization when determining if a character
is a duplicate.

Examples:

"din" => "((("

"recede" => "()()()"

"Success" => ")())())"

"(( @" => "))(("

=end

# My Solution
def duplicate_encode(word)
  result = ""
  new_hash = Hash.new {|d,k| d[k] = 0}
  letters = word.split("")
  letters.each {|x| new_hash[x.downcase] += 1}
  letters.each {|x| result += new_hash[x.downcase] == 1 ? "(" : ")"}

  result
end

# Better Solution
def duplicate_encode(word)
  word
      .downcase
      .chars
      .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
      .join
end

# Another Solution
def duplicate_encode(word)
  word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
end
