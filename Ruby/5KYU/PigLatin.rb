=begin

Move the first letter of each word to the end of it, then add 'ay' to the end
of the word.

pig_it('Pig latin is cool') # igPay atinlay siay oolcay

=end

# My Solution
def pig_it text
  text.split(" ").map {|x| x =~ /[a-zA-Z]/ ? x = x[1..x.length] + x[0] + "ay" : x}.join(" ")
end

# Better Solution
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end
