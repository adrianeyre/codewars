=begin



=end

# My Solution
$lower = ("abcdefghijklmnopqrstuvwxyz").split("")
$upper = ("ABCDEFGHIJKLMNOPQRSTUVWXWZ").split("")

def movingShift(s, shift)
  result = ""
  num = 0
  s.split("").each do |x|
    lower = $lower.rotate(num+shift)
    upper = $upper.rotate(num+shift)
    if x =~ /[a-zA-Z]/
      if x == x.upcase
        result += upper[x.ord-65]
      elsif x == x.downcase
        result += lower[x.ord-97]
      end
    else
      result += x
    end
    num += 1
  end
  n = result.length / 5
  puts "n = #{n}"
  num = 0
  answer = []
  word = ""
  result.split("").each_with_index do |x,i|
    num += 1
    word += x
    if num > n
      puts "HERE x=#{x}"
      if result[i] == " " || i == result.length-1
        answer << word
        word = ""
        num = 0
      end
    end
  end

  p answer
end

def demovingShift(arr, shift)
    # your code
end

u = "I should have known that you would have a perfect answer for me!!!"
v = ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"]
movingShift(u, 1)
