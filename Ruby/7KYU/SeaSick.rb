def sea_sick(sea)
  amount = 0
  sea.split("").each_with_index do |a,i|
    sea[i] == "_" ? down = true : down = false
    if sea[i] != sea[i+1]
      amount += 1
    end
  end
  amount -= 1
  puts amount
  (amount / sea.length.to_f) * 100 > 20 ? "Throw Up" : "No Problem"
end


puts sea_sick("_~~_~____~~~~~~~__~_~")





def sea_sick2(sea)
  #sea[0] == "_" ? amount = 1 : amount = 0
  amount = 0
  beenup = false
  #sea[0] == "_" ? lastwave = true : lastwave = false
  sea.split("").each_with_index  do |s,i|
    #amount += 1 if s == "_" && sea[i+1] == "~"
    s == "_" ? down = true : down = false
    #puts "down = #{down}"
    #puts "i = #{i}"
    beenup = true if down == false
    if (down && sea[i+1] == "~") || (down && i+1 == sea.length)
      amount += 1
    end
  end
  puts "beenup #{beenup}"
  amount -= 1 if beenup == false
  #amount = sea.scan(/_~._/).count
  #amount += 1 if amount != 0
  #puts sea[-2..-1]
  puts amount
  #puts sea.length
  #puts (amount.to_f / sea.length.to_f) * 100

  (amount / sea.length.to_f) * 100 > 20 ? "Throw Up" : "No Problem"

end
