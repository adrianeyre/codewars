=begin

Given a string, write a function that returns the string with a question mark
("?") appends to the end, unless the original string ends with a question mark,
in which case, returns the original string.

ensure_question("Yes") # => "Yes?"
ensure_question("No?") # => "No?"

=end
# My Solution
def ensure_question(s)
  s[-1] == "?" ? s : s+"?"
end

=begin
# Codewars random tests
words = ["racecar","madam","kitty","wolf","robert trebor","kata","code wars",
"code edoc","anna","level","radar","sagas","man","woman","internet","website",
"yes","no","this","is","another","word","in","the","random","array","of","word"]

(1..5).each do |rtest|
  word = words[rand(words.length)]
  word = word + "?" if rand(2) == 1
  solution = ensure_question2(word)
  Test.assert_equals(ensure_question(word),solution,"Expected: '#{solution}'")
end
=end
