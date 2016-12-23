=begin

We want to know the index of the vowels in a given word, for example, there are
two vowels in the word super (the second and fourth letters).

So given a string "super", we should return a list of [2, 4].

Some examples:
Mmmm  => []
Super => [2,4]
Apple => [1,5]
YoMama -> [1,2,4,6]
NOTE: Vowels in this context refers to English Language Vowels - a e i o u y

NOTE: this is indexed from [1..n] (not zero indexed!)

=end

# My Solution
def vowel_indices(word)
  result = []
  word.split("").each_with_index {|x,i| result << i+1 if x.downcase =~ /[aeiouy]/}
  result
end

# Better Solution
def vowel_indices(word)
  word.chars.map.with_index(1) {|c, i| i if /[aeiouy]/i =~ c }.compact
end
