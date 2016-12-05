=begin

Given a string, first turn each letter into its ASCII char code.

example:

'ABC' --> x=65, y=66, z=67 --> '656667'

Let's call this number 'total1'.

Then replace any incidence of the number 7, with the number 1.

'656667' ---> '656661'

Lets call this number 'total2'.

Then return the difference between the sum of the digits in total1 and total2:

  (6 + 5 + 6 + 6 + 6 + 7)
- (6 + 5 + 6 + 6 + 6 + 1)
-------------------------
                       6

=end

# My Solution
def calc(s)
  total1 = "" ; total2 = ""
  t1 = 0 ; t2 = 0
  s.split("").each {|x| total1 += x.ord.to_s}
  total2 = total1.gsub("7","1")
  total1.split("").each {|x| t1 += x.to_i}
  total2.split("").each {|x| t2 += x.to_i}
  t1-t2
end

# Better Solution
def calc(s)
  s.chars.map(&:ord).join.count('7')*6
end
