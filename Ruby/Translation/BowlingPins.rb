def bowlingPins(arr)
  result = ""
  line = [[],[],[],[]]
  (7..10).each{|x| arr.include?(x) ? line[0]<<" " :line[0]<<"I"}
  result = line[0].join(" ") + "\n"
  (4..6).each{|x| arr.include?(x) ? line[1]<<" " :line[1]<<"I"}
  result += " " + line[1].join(" ") + " \n"
  (2..3).each{|x| arr.include?(x) ? line[2]<<" " :line[2]<<"I"}
  result += "  " + line[2].join(" ") + "  \n"
  arr.include?(1) ? line[3]<<" " :line[3]<<"I"
  result += "   " + line[3].join(" ") + "   "
  result
end

# srand
# (0..199).each do |rtest|
#   pinnumbers = []
#   (0..rand(10)).each do |rtest|
#     pinnumbers << rand(10) + 1
#   end
#   pinnumbers = pinnumbers.uniq
#   solution = bowlingPins2(pinnumbers)
#   Test.assert_equals(bowlingPins(pinnumbers),solution,"Expected: '#{solution}'")
# end
