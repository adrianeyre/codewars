=begin

Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

=end

# My Solution
def find_it(seq)
  new_hash = Hash.new {|data,key| data[key] = 0}

  seq.each {|num| new_hash[num] += 1}

  new_hash.each {|data, key| return data if key.odd?}
end

# Better Solution
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

# Another Solution
def find_it(seq)
  seq.reduce(:^)
end
