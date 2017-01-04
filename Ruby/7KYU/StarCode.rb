=begin

All Star Code Challenge #1

Write a function, called sumPPG, that takes two NBA player objects and sums
their PPG

Examples:

iverson = { "team"=>"76ers", "ppg"=> 11.2 }
jordan =  { "team"=>"bulls", "ppg"=> 20.2 }
sum_ppg(iverson, jordan) # => 31.4

=end

# My Solution
def sum_ppg(player_one, player_two)
  player_one["ppg"] + player_two["ppg"]
end
