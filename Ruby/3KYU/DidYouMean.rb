=begin

I'm sure, you know Google's "Did you mean ...?", when you entered a search term
and mistyped a word. In this kata we want to implement something similar.

You'll get an entered term (lowercase string) and an array of known words (also
lowercase strings). Your task is to find out, which word from the dictionary is
most similar to the entered one. The similarity is described by the minimum
number of letters you have to add, remove or replace in order to get from the
entered word to one of the dictionary. The lower the number of required changes,
the higher the similarity between each two words.

Same words are obviously the most similar ones. A word that needs one letter to
be changed is more similar to another word that needs 2 (or more) letters to be
changed. E.g. the mistyped term berr is more similar to beer (1 letter to be
replaced) than to barrel (3 letters to be changed in total).

Extend the dictionary in a way, that it is able to return you the most similar
word from the list of known words.

Code Examples:

I know, many of you would disagree that java is more similar to heaven than all
the other ones, but in this kata it is ;)

Additional notes:

there is always exactly one possible solution

=end

# My Solution
class Dictionary
  def initialize(words)
    @words=words
  end
  def find_most_similar(term)
    likey = Hash.new {|v,k| v[k] = 0}
    @words.each do |word|
      term.split("").each do |x|
        likey[word] += 1 if word.include? x
      end
      likey[word] = 0 if word.length > term.length + 2
      likey[word] = 0 if word.length < term.length - 2
    end
    likey.sort_by(&:reverse).reverse[0][0]
  end
end
