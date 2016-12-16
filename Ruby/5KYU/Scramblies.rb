=begin

Write function scramble(str1,str2) that returns true if a portion of str1
characters can be rearranged to match str2, otherwise returns false.

For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.

=end

# My Solution
def scramble(s1,s2)
  s3 = s1.split("")
  s2.split("").each do |x|
    s3.each_with_index {|y,i| (s3.delete_at i ; break) if y == x}
  end
  s1.length - s2.length == s3.join.length ? true : false
end

# Better Solution
def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

# Another Solution
def scramble(s1,s2)
  h1 = Hash[s1.chars.group_by { |e| e }.map { |k,v| [k,v.size] }]
  h2 = Hash[s2.chars.group_by { |e| e }.map { |k,v| [k,v.size] }]
  return h2.all? { |k,v| h1[k] >= v rescue false }
end
