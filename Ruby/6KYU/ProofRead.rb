=begin

You've just finished writing the last chapter for your novel when a
virus suddenly infects your document. It has swapped
the 'i's and 'e's in 'ei' words and capitalised random letters.
Write a function which will:

a) remove the spelling errors in 'ei' words.
(Example of 'ei' words: their, caffeine, deceive, weight)

b) only capitalise the first letter of each sentence.
Make sure the rest of the sentence is in lower case.

Example: He haD iEght ShOTs of CAffIEne. --> He had eight shots of caffeine.

=end

# My Solution
def proofread(string)
  return "" if string == ""
  string.downcase!
  string.gsub!("ie","ei")
  string.gsub!("ie","ei")
  string.gsub!("ie","ei")
  x = string.split(". ").map {|sen| sen.capitalize!}.join(". ")
end

# Better Solution
def proofread(string)
  string.downcase.gsub('ie','ei').capitalize.gsub(/\. ([a-z])/, &:upcase)
end
