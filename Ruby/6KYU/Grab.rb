def grabscrab anagram, dictionary
  dictionary.select{|w| anagram.chars.sort == w.chars.sort}
end