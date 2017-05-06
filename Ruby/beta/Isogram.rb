def isogram?(s)
  return false if s.is_a? Integer
  return false if s==nil || s ==""
  num = s.count(s[0])
  s.split("").each {|x| return false if s.count(x) != num}
  true
end