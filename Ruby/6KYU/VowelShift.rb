=begin

You get a "text" and have to shift the vowels by "n" positions to the right.
(Negative value for n should shift to the left.)
"Position" means the vowel's position if taken as one item in a list of all
vowels within the string.
A shift by 1 would mean, that every vowel shifts to the place of the next vowel.

Shifting over the edges of the text should continue at the other edge.

Example:

text = "This is a test!"
n = 1
output = "Thes is i tast!"

text = "This is a test!"
n = 3
output = "This as e tist!"

If text is null or empty return exactly this value.
Vowels are "a,e,i,o,u". 

=end

# My Solution
def vowel_shift(text,n)
  return text if text == "" || text == nil
  vowels = [] ; position = []
  text.split("").each_with_index {|letter,index| (vowels << letter ; position << index) if letter =~ /[aeiouAEIOU]/}
  vowels.rotate!(-n)
  position.each_with_index {|data,index| text[data] = vowels[index]}
  text
end

# Better Solution
def vowel_shift(text, n)
  return nil if text.nil?
  vowels = text.scan(/[aeiou]/i).rotate(-n)
  text.gsub(/[aeiou]/i) { vowels.shift }
end
