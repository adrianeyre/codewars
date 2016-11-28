=begin

a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

=end

# My Solution
def longest(a1, a2)
  (a1+a2).split("").sort.uniq.join("")
end

# Other Solution
def longest(a1, a2)
  (a1+a2).chars.sort.uniq.join
end
