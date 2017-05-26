def bulk(arr)
  p = 0; c = 0
  if arr!=[]
    (0..arr.length-1).each do |i|
      items = arr[i].split(",")
      (0..items.length-1).each do |item|
        unit = items[item].split("g ")
        units = unit[0].to_f/100
        protein = units * $food[unit[1]][0]
        carbohydrate  = units * $food[unit[1]][1]
        fat = units * $food[unit[1]][2]
        p += protein
        c += (protein * 4) + (carbohydrate * 4) + (fat * 9)
      end
    end
  end
  p = p.to_i if p % 1 == 0
  c = c.to_i if c % 1 == 0
  "Total proteins: #{p} grams, Total calories: #{c}"
end