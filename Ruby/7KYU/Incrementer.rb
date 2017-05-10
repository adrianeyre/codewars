def incrementer(num)
  num.each_with_index.map { |x,i| (x+(i+1)).to_s[-1].to_i}
end 