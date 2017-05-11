def outed(meet, boss)
  result = 0
  meet.each {|person,rate| result += person.to_s==boss ? 2 * rate : rate }
  result/meet.length <= 5 ? "Get Out Now!" : "Nice Work Champ!"
end