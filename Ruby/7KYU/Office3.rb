def broken(x)
  x.split("").map{|i| i == "1" ? i = "0" : i = "1"}.join
end