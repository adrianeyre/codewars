=begin

Write a function that accepts a starting and ending IPv4 address, and returns
the number of IP addresses from start to end, excluding the end IP address.
All input to the ipsBetween function will be valid IPv4 addresses in the form
of strings. The ending address will be at least one address higher than the
starting address.

Examples:
ipsBetween("10.0.0.0", "10.0.0.50") => returns 50
ipsBetween("10.0.0.0", "10.0.1.0") => returns 256
ipsBetween("20.0.0.10", "20.0.1.0") => returns 246

=end

# My Solution
def ipsBetween(start, ending)
  start = start.split(".")
  ending = ending.split(".")
  num1 = (ending[1].to_i * 65536) + (ending[2].to_i * 256) + ending[3].to_i
  num2 = (start[1].to_i * 65536) + (start[2].to_i * 256) + start[3].to_i
  num1 - num2 + ((ending[0].to_i - start[0].to_i) * 16777216)
end

# Better Solution
require 'ipaddr'
def ipsBetween(start, ending)
  IPAddr.new(ending).to_i - IPAddr.new(start).to_i
end

# Another Solution
def ipsBetween(start, ending)
  ip_to_int = lambda { |x| x.split('.').reduce(0) { |a, e| a*256+e.to_i } }
  ip_to_int.(ending) - ip_to_int.(start)
end
