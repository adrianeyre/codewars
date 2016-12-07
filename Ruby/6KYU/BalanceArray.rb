=begin

Check that the two provided arrays both contain the same number of
different unique items, regardless of order. For example in the following:

[a,a,a,a,b,b] and [c,c,c,d,c,d]
Both arrays have four of one item and two of another, so balance
should return true.

=end

# My Solution
def balance(arr1, arr2)
  sort1 = []
  sort2 = []
  hash1 = Hash.new {|data,key| data[key]=0}
  hash2 = Hash.new {|data,key| data[key]=0}

  arr1.each {|data| hash1[data] += 1}
  arr2.each {|data| hash2[data] += 1}

  hash1.each {|data,key| sort1 << key}
  sort1.sort!
  hash2.each {|data,key| sort2 << key}
  sort2.sort!

  return sort1 == sort2 ? true : false
end

# Better Solution
def balance(arr1, arr2)
  arr1.map { | i | arr1.count(i) }.sort == arr2.map { | i | arr2.count(i) }.sort
end
