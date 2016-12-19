=begin



=end

def remove(s)
  result = []
  s.split(" ").map do |x|
    until x[-1] != "!"
      x = x.chomp("!")
    end
    result << x
  end
  result.join(" ")
end

def remove(s)
  s.split.map { |w| w.sub(/!*$/, "") }.join(" ")
end
