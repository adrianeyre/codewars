def how_many_bees(hive)
  return 0 if hive == nil || hive == []
  result = 0
  (0..hive.length-1).each do |x|
    (0..hive[0].length-1).each do |y|
      if x>1 && hive[x][y]=="b"
        result += 1 if hive[x-1][y]=="e" && hive[x-2][y]=="e"
      end
      if x<hive.length-2 && hive[x][y]=="b"
        result += 1 if hive[x+1][y]=="e" && hive[x+2][y]=="e"
      end
      if y>1 && hive[x][y]=="b"
        result += 1 if hive[x][y-1]=="e" && hive[x][y-2]=="e"
      end
      if y<hive[x].length-2 && hive[x][y]=="b"
        result += 1 if hive[x][y+1]=="e" && hive[x][y+2]=="e"
      end
    end
  end
  result
end

def show(hive)
  return if hive == nil || hive == []
  (0..hive.length-1).each do |x|
    puts hive[x].join("")
  end
end
