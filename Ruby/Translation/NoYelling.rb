=begin

Write a function taking in a string like WOW this is REALLY amazing and returning
Wow this is really amazing. String should be capitalized and properly spaced.
Using re and string is not allowed.

Examples:

filter_words('HELLO CAN YOU HEAR ME') #=> Hello can you hear me
filter_words('now THIS is REALLY interesting') #=> Now this is really interesting
filter_words('THAT was EXTRAORDINARY!') #=> That was extraordinary!

=end

# My Solution
def filter_words(st)
  st.split(" ").join(" ").capitalize
end

=begin
# Codewars random tests
words = ["racecar","madam","kitty","wolf","robert trebor","kata","code wars",
"code edoc","anna","level","radar","sagas","man","woman","internet","website",
"yes","no","this","is","another","word","in","the","random","array","of","word"]

(1..200).each do |rtest|
  st = []
  (2..rand(50)).each do |x|
    temp = words[rand(words.length)] + (" " * rand(1..5))
    rand(2) == 1 ? temp = temp.upcase : temp = temp.downcase
    st << temp
  end
  st = st.join
  solution = filter_words2(st)
  Test.assert_equals(filter_words(st),solution,"Expected: '#{solution}'")
end
=end
