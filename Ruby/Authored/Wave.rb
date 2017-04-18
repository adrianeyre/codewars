def wave(str)
  result = []
  str = str.split("")
  str.each_with_index do |a,b|
    if str[b] != " "
      temp = []
      str.each_with_index{|x,i| i == b ? temp << x.upcase : temp << x}
      result << temp.join
    end
  end
  result
end

letters = "abcd efghi jklmno pqrstu vwxyz".split("")
srand
1.times do
  word = []
  (0..rand(0..200)).each do
    word << letters[rand(0..letters.length)]
  end
  word = word.join
end
