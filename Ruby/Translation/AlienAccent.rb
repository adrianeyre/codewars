=begin

Aliens from Kepler 27b have immigrated to Earth! They have learned English and
go to our stores, eat our food, dress like us, ride Ubers, use Google, etc.
However, they speak English a little differently. Can you write a program that
converts their Alien English to our English?
Task:

Write a function converting their speech to ours. They tend to speak the letter
a like o and o like a u. NOTE: There is an issue with this kata when it is solved
in python 2x. The issue turned out to be easy to fix but there is a bug in the
re-publishing system preventing the kata from being updated. The issue has been
posted on Github.

>>> convert('hello')
'hellu'
>>> convert('codewars')
'cudewors'

=end

# My Solution
def convert2(st)
  st.tr('o','u').tr('a','o')
end

words = ['apple', 'banana', 'cucumber', 'donkey', 'elephant',
'fox', 'gorilla', 'hummus', 'igloo', 'joke', 'lemon',
'monkey', 'no']

(1..200).each do |rtest|
  st = []
  (2..rand(50)).each {|x| st << words[rand(words.length)]}
  st = st.join(" ")
  solution = convert2(st)
  Test.assert_equals(convert(st),solution,"Expected: '#{solution}'")
end
