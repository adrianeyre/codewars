def walk_home?(str)
  x = 0 ; y = 0
  str.split("").each do |x|
    case x
      when "n" ; y -= 1
      when "e" ; x += 1
      when "s" ; y += 1
      when "w" ; x -= 1
    end
  end
  x == 0 && y == 0 ? true : false
end

p walk_home?("nenessww")
