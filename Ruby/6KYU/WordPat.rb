=begin

Write

word_pattern(pattern, string)
that given a pattern and a string str, find if str follows
the same sequence as pattern.

For example:

word_pattern('abab', 'truck car truck car') == true
word_pattern('aaaa', 'dog dog dog dog') == true
word_pattern('abab', 'apple banana banana apple') == false
word_pattern('aaaa', 'cat cat dog cat') == false

=end

# My Solution
def word_pattern(pattern, string)
  newpat = ""

  pat = Hash.new {|e,i| pat[e] = i}
  pattern.split("").uniq.each_with_index {|x,i| pat[i]=x}

  str = Hash.new {|e,i| str[e] = i}
  string.split(" ").uniq.each_with_index {|x,i| str[pat[i]]=x}

  num = -1
  amount = 0
  string.split(" ").each_with_index do |e,i|
    num +=1
    num = 0 if num > pattern.length + 1
    amount += 1
    newpat += str[pattern[num]] + " "
  end
  return false if pattern.length > amount
  newpat[0..-2] == string ? true : false
end

# Better Solution
def word_pattern(pattern, string)
  mapping = Hash[pattern.chars.zip(string.split)]
  return false unless mapping.count == mapping.invert.count

  string == pattern.chars.map { |char| mapping[char] }.join(" ")
end
