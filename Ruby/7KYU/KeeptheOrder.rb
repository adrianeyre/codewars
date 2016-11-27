=begin

Your job here is to write a function keep_order, which takes a sorted
array ary and a value val, and returns the lowest index where you
could insert val to maintain the sorted-ness of the array.
The input array will always be sorted in ascending order.
It may contain duplicates.

Do not modify the input.

Some examples:

keep_order([1, 2, 3, 4, 7], 5) #=> 4
                      ^(index 4)
keep_order([1, 2, 3, 4, 7], 0) #=> 0
          ^(index 0)
keep_order([1, 1, 2, 2, 2], 2) #=> 2
                ^(index 2)

=end

#My Solution
def keep_order(ary, val)
  @num = 0
  ary.each_with_index {|num,index| val <= num ? (@num = index; break) : @num = ary.length}
  return @num
end

# Better Solution
def keep_order(ary, val)
  ary.index { |num| val <= num } || ary.size
end
