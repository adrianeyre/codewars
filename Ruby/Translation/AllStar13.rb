=begin

Your friend Billybob has a crush on the girl next to him in class, Emily, but
wants to talk with you about what he should do, but doesn't want her to overhear.
Send secret messages to Billybob by translating your messages into pig latin.

Create a function, called translate(), that takes a string argument and returns
the input string into "pig latin"

The rules to translate into pig latin are as follows:

1) Valid words are 2 or more letters long 2) If a word begins with a consonant
(a letter NOT 'a','e','i','o', or 'u'), then that first letter is shifted to the
end of the word 3) Then add "ay"

translate("billy") # => "illybay"
translate("emily") # => "emilyay"
Note:
If the string input is less than 2 letters, the input should be returned as is

=end

# My Solution
def translate(word)
  return word if word.length < 2
  word[0] =~ /[aeiou]/ ? word+"ay" : word=word[1..-1]+word[0]+"ay"
end

=begin
# Codewars random tests
letters = "abcdefghijklmnopqrstuvwxyz".split("")
(1..200).each do |rtest|
  word = []
  (1..10).each {|x| word << letters[rand(0..25)]}
  word = word.join
  solution = translate2(word)
  Test.assert_equals(translate(word),solution,"Expected: '#{solution}'")
end
=end
