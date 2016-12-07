=begin

Write a function that, given a string of text (possibly with punctuation
and line-breaks), returns an array of the top-3 most occurring words,
in descending order of the number of occurrences.

Assumptions:

- A word is a string of letters (A to Z) optionally containing one or more
apostrophes (') in ASCII. (No need to handle fancy punctuation.)
- Matches should be case-insensitive, and the words in the result should
be lowercased.
- Ties may be broken arbitrarily.
- If a text contains fewer than three unique words, then either the top-2
or top-1 words should be returned, or an empty array if a text contains no words

Examples:

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]

=end

# My Solution
def top_3_words(text)
  return [] if text == "" || text == nil
  text = text.gsub /[^-\p{Alnum}^']/ , " "

  temp = [] ; temp2 = []
  word_hash = Hash.new {|data,key| data[key] = 0}

  text.split(" ").each {|data| word_hash[data.downcase] += 1}

  temp = word_hash.sort {|a1,a2| a2[1]<=>a1[1]}

  temp << [nil,nil]
  temp << [nil,nil]
  temp << [nil,nil]

  0.upto(2) do |a|
    temp2 << temp[a][0] if temp[a][0] != nil && temp[a][0] != "'"
  end
  temp2
end

# Better Solution
def top_3_words(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end

# Another Solution
def top_3_words(t)
  t.downcase.scan(/\w+[\w']*/).inject(Hash.new(0)){|h,w|h[w]+=1;h}.sort_by{|k,v|-v}.take(3).map(&:first)
end
