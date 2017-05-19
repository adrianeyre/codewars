def escape(carpark)
  result = []
  level = 0; space = 0
  carpark.each_with_index {|f, i| (level = i; space = f.index(2)) if f.index(2) != nil}

  begin
    if level == carpark.length - 1
      if space != carpark[0].length - 1
        result << "R" + (carpark[0].length - space - 1).to_s
      end
      space = carpark[0].length - 1
    else
      if carpark[level][space] == 1
        count = 0
        while (carpark[level][space] == 1 && level != carpark.length ) do
          level += 1;
          count += 1
        end
        result << "D" + count.to_s
      else
        pos = carpark[level].index(1)
        d = pos < space ? "L" : "R"
        result << d + ((pos-space).abs).to_s
        space = pos
      end
    end
  end until (space == carpark[0].length - 1 && level == carpark.length - 1)

  result
end

def carparkmaker()
  srand
  spaces = rand(28) + 2
  levels = rand(29) + 1
  carpark = []
  (0..levels).each do |l|
    temp = []
    (0..spaces).each do |s|
      temp << 0
    end
    carpark << temp
  end

  (0...levels).each do |l|
    carpark[l][rand(spaces + 1)] = 1
  end

  done = false
  while (!done) do
    s = rand(spaces + 1)
    l = rand(levels + 1)
    if carpark[l][s] == 0
      carpark[l][s] = 2
      done = true
    end
  end
  carpark
end
