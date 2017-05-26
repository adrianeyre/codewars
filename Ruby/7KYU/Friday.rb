def killcount(counselors, jason)
  counselors.select{|x| x[1] < jason}.map{|x| x[0]}
end