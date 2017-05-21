def narcissistic?(value)
  result = 0
  value.to_s.split("").each {|x| result += x.to_i**value.to_s.length}
  result == value
end