=begin

The rgb() method is incomplete. Complete the method so that passing in RGB
decimal values will result in a hexadecimal representation being returned.
The valid decimal values for RGB are 0 - 255. Any (r,g,b) argument values that
fall out of that range should be rounded to the closest valid value.

The following are examples of expected output values:

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3

=end

# My Solution
def rgb(r, g, b)
  r1 = r.to_s(16)
  r1 = "0" + r1 if r1.length == 1
  r1 = "00" if r.to_i < 0
  r1 = "FF" if r.to_i > 255

  g1 = g.to_s(16)
  g1 = "0" + g1 if g1.length == 1
  g1 = "00" if g.to_i < 0
  g1 = "FF" if g.to_i > 255

  b1 = b.to_s(16)
  b1 = "0" + b1 if b1.length == 1
  b1 = "00" if b.to_i < 0
  b1 = "FF" if b.to_i > 255
  result = (r1+g1+b1).upcase
end

# Better Solution
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end
