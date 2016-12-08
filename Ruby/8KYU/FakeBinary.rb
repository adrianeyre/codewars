=begin

Given a string of numbers, you should replace any number below 5 with '0'
and any number 5 and above with '1'. Return the resulting string.

=end

# My Solution
def fake_bin(s)
  answer = ""
  s.split("").each {|a| answer += a.to_i < 5 ? "0" : "1"}
  answer
end

# Better Solution
def fake_bin(s)
  s.tr('0-45-9','000001')
end

# Another Solution
def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end
