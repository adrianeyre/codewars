def anagrams(word, words)
  result = []
  final = []
  back = ""
  words.each do |x|
    back = ""
    (x.length-1).downto(0) do |y|
      back += x[y]
    end
    result << back
  end
  result.each {|x| final << x if word == x}
  words.each do |x|
    result.each do |y|
      final << x if x == y && x.length != 1
    end
  end
  final
end


p anagrams('ab', ["ab", "ba", "aa", "bb", "cc", "ac", "bc", "cd"])
