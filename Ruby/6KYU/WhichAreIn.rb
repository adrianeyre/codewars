=begin

Given two arrays of strings a1 and a2 return a sorted array r in lexicographical
order of the strings of a1 which are substrings of strings of a2.

Example 1:

a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

Example 2:

a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

Notes:

Arrays are written in "general" notation. See "Your Test Cases" for examples in
your language.

Beware: r must be without duplicates.

=end

# My Solution
def in_array(array1, array2)
  result = []
  array2.each do |x|
    array1.each do |y|
      str = ".*"
      0.upto(y.length-1) {|z| str += "[#{y[z]}]"}
      str += ".*"
      result << y if x =~ /#{str}/
    end
  end
  result.uniq.sort
end

# Better Solution
def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end
