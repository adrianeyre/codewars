=begin

Remove all exclamation marks from sentence except at the end.

Examples

remove("Hi!") == "Hi!"
remove("Hi!!!") == "Hi!!!"
remove("!Hi") == "Hi"
remove("!Hi!") == "Hi!"
remove("Hi! Hi!") == "Hi Hi!"
remove("Hi") == "Hi"

=end

# My Solution
def remove(s)
  r = s.tr("!","")
  (s.length-1).downto(0) {|x| s.split("")[x] == "!" ? r+="!" : break}
  r
end

# Better Solution
def remove(s)
  s.gsub(/!+(\w|\s)/, '\1')
end
