=begin

Write a function that removes each 9 that it is in between 7s.

seven_ate9('79712312') => '7712312'
seven_ate9('79797') => '777'
Input: String Output: String

=end

# My Solution
def seven_ate9(str)
  (0..5).each {|x| str = str.gsub(/797/,"77")}
  str
end

# Better Solution
def seven_ate9(str)
  str.gsub(/(?<=7)9(?=7)/,'')
end
