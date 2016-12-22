=begin



=end

# My Solution
def shorten(string, length, glue="...")
  return string if length > string.length
  len = (length.to_f - glue.length) / 2
  result = ""
  len.to_s[-1] == "5" ? len1 = len.floor - 1  : len1 = len.round - 1

  len = len.round
  result += glue + string[-len..-1]
  result = string[0..len1] + result if result.length < length
  result
end



sentence = "hello world"
#           The quick br...the lazy dog
p shorten(sentence, 5, "----")
