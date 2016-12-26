=begin

You have to create a function that takes a positive integer number and returns
the next bigger number formed by the same digits:

next_bigger(12)==21
next_bigger(513)==531
next_bigger(2017)==2071
If no bigger number can be composed using those digits, return -1:

next_bigger(9)==-1
next_bigger(111)==-1
next_bigger(531)==-1

=end

# My Solution
# TIMES OUT

#o = n
#n = n.to_s.split("").map {|x| x.to_i}
#n.combination(o.to_s.length).select {|t| return t.join.to_i if t.join.to_i > o}
#p n.combination(o.to_s.length-1).to_a.sort
def next_bigger(n)
  n = n.to_s.split("").map {|x| x.to_i}
  #p n
  #n.to_s.split('').permutation.map(&:join).uniq.sort.select { |tab| return tab.to_i if tab.to_i > n}
  #p n.repeated_permutation(10).to_a.sort
  #-1

  p n.product(n)
end

def next_bigger4(n)
  next_num = n[0..10].to_s.split('').permutation(n.to_s.length).map(&:join).uniq.select { |tab| return tab.to_i if tab.to_i > n}
  -1
end

def next_bigger3(n)
  next_num = n.to_s.split('').permutation(n.to_s.length).map(&:join).select { |tab| return tab.to_i if tab.to_i > n}
  -1
end

def next_bigger2(n)
  puts "n = #{n}"
  result = []
  next_num = n.to_s.split('').combination(n.to_s.length).map(&:join).sort.select { |t| result << t}
  result.each {|x| return x.to_i if x.to_i > n}
  -1
end

p next_bigger(1234567890)
