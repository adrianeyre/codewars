=begin

Implement a function, so it will produce a sentence out of the given parts.

Array of parts could contain:
- words;
- commas in the middle;
- multiple periods at the end.

Sentence making rules:
- there must always be a space between words;
- there must not be a space between a comma and word on the left;
- there must always be one and only one period at the end of a sentence.

Example:

make_sentence ['hello', ',', 'my', 'dear'] # returns 'hello, my dear.'

=end

# My Solution
def make_sentence parts
  result = ""
  parts.each do |x|
    result += " " if x != "," && x != "."
    result += x if x != "."
  end
  result += "."
  result[1..result.length]
end

# Better Solution
def make_sentence parts
  parts.join(' ').gsub(' ,', ',').sub(/(\s\.)*$/, '.');
end
