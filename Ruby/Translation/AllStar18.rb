=begin

Create a function called strCount() that accepts 2 string arguments and returns
an integer of the count of occurrences the 2nd argument are found in the first.

If no occurrences can be found, a count of 0 should be returned.

strCount('Hello', 'o') // => 1
strCount('Hello', 'l') // => 2
strCount('', 'z') // => 0
Note:
The first argument can be an empty string
The second string argument will always be of length 1

=end

Test.assert_equals(strCount('Hello', 'o'), 1);
Test.assert_equals(strCount('Hello', 'l'), 2);
Test.assert_equals(strCount('', 'z'), 0)

# My Solution
def strCount(word, letter)
  word.count(letter)
end


# Codewars random tests
letters = "abcdefghijklmnopqrstuvwxyz"
letters = letters.split("")
(1..200).each do |rtest|
  word = []
  (2..rand(100)).each {|x| word << letters[rand(0..25)]}
  word = word.join
  letter = letters[rand(0..25)]
  solution = strCount2(word, letter)
  if (solution.to_s.index(".")..solution.to_s[-1]).length == 1
    puts here
    list << { itemName: words[rand(words.length)], price: 0.01 }
    solution += 0.01
  end
  #Test.assert_equals(strCount(word, letter),solution,"Expected: '#{solution}'")
end
