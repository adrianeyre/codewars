=begin

Take a sentence (string) and reverse each letter in each word in the sentence.
Do not reverse the order of the words, just the letters in each word.

If there is punctuation, it should be interpreted as a regular character; no
special rules.

If there is spacing before/after the input string, leave them there.

String will always be defined.

Example:

"A fun little challenge!" => 'A nuf elttil !egnellahc'

" A fun little challenge! "=> ' A nuf elttil !egnellahc '

Addendum: Your function receives a writeable null-terminated string.

Mutate the string in-place and return the sentence.

For this kata, you are not required to allocate or de-allocate any memory.

=end

# My Solution
def reverser(sentence)
  return sentence if sentence.length < 2
  sentence.split(" ").map {|x| x.reverse}.join(" ")
end


# Better Solution
def reverser(sentence)
  sentence.gsub(/(\w+)/,&:reverse)
end
