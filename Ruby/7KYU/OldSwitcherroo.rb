=begin

Write a function

vowel_2_index
that takes in a string and replaces all the vowels [a,e,i,o,u] with their
respective positions within that string.
E.g:

vowel_2_index('this is my string') == 'th3s 6s my str15ng'
vowel_2_index('Codewars is the best site in the world') ==
'C2d4w6rs 10s th15 b18st s23t25 27n th32 w35rld'
vowel_2_index('') == ''
Your function should be case insensitive to the vowels.

=end

# My Solution
def vowel_2_index(string)
  result = ""
  string.split("").each_with_index do |x,i|
    x =~ /[aeiouAEIOU]/ ? result += (i+1).to_s : result += x
  end
  result
end

# Better Solution
def vowel_2_index(string)
  string.split(//).map.with_index(1){|x,y| 'aeiouAEIOU'.include?(x) ? y : x}.join
end
