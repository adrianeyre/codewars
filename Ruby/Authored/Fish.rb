def fish(shoal)
  level = 1
  total = 0
  fishes = shoal.split("").sort
  fishes.each do |fish|
    if fish.to_i <= level
      total += (1*fish.to_i)
      if total >= (level*4)
        total -= (level*4)
        level += 1
      end
    end
  end
  level
end
