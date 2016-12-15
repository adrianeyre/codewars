=begin

Finish the solution so that it takes an input 'n' (integer) and returns a string
that is the decimal representation of the number grouped by commas after every
3 digits.

Assume: 0 <= n < 1000000000

       1  ->           "1"
      10  ->          "10"
     100  ->         "100"
    1000  ->       "1,000"
   10000  ->      "10,000"
  100000  ->     "100,000"
 1000000  ->   "1,000,000"
35235235  ->  "35,235,235"

=end

# My Solution
def solution(n)
  result = ""
  n = n.to_s
  z = 0
  (n.length-1).downto(0) do |x|
    result += "," if z % 3 == 0 && z != 0
    result += n[x]
    z += 1
  end
  result = result.reverse
end

# Better Solution
def solution(n)
  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end
