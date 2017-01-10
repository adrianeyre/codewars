=begin

Your family runs a shop and have just brought a Scrolling Text Machine
(http://3.imimg.com/data3/RP/IP/MY-2369478/l-e-d-multicolour-text-board-250x250.jpg)
to help get some more business.

The scroller works by replacing the current text string with a similar text
string, but with the first letter shifted to the end; this simulates movement.

You're father is far too busy with the business to worry about such details, so,
naturally, he's making you come up with the text strings.

Create a function named rotate() that accepts a string argument and returns an
array of strings with each letter from the input string being rotated to the end.

rotate("Hello") // => ["elloH", "lloHe", "loHel", "oHell", "Hello"]
Note: The original string should be included in the output array The order
matters. Each element of the output array should be the rotated version of the
previous element. The output array SHOULD be the same length as the input string
The function should return an emptry array with a 0 length string, '', as input

=end
# My Solution
def rotate(str)
  (1..str.length).each.map {|x| str.split("").rotate(x).join}
end

=begin
def rotate2(str)
  (1..str.length).each.map {|x| str.split("").rotate(x).join}
end

# Codewars random tests
letters = "abcdefghijklmnopqrstuvwxyz"
letters = letters.split("")
(1..200).each do |rtest|
  word = []
  (2..rand(50)).each {|x| word << letters[rand(0..25)]}
  word = word.join
  solution = rotate2(word)
  Test.assert_equals(rotate(word),solution,"Expected: '#{solution}'")
end
=end
