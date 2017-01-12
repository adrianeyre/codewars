=begin

Write a function that counts all words in a string

=end

# My Solution
def countWords(str)
  str.split(" ").length
end

=begin
# Codewars random tests
words = ["racecar","madam","kitty","wolf","robert trebor","kata","code wars",
"code edoc","anna","level","radar","sagas","man","woman","internet","website",
"yes","no","this","is","another","word","in","the","random","array","of","word"]

(1..200).each do |rtest|
  word = []
  (1..rand(100)).each {|x| word << words[rand(words.length)]}
  word = word.join(" ")
  solution = countWords2(word)
  Test.assert_equals(countWords(word),solution,"Expected: '#{solution}'")
end
=end
