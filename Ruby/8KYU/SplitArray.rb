=begin

Create a method partition that accepts a list and a block. It should return two
arrays: the first, with all the elements for which the given block returned
true, and the second for the remaining elements.

Here's a simple example:

animals = ["cat", "dog", "duck", "cow", "donkey"]
partition(animals){|animal| animal.size == 3}
    #=> [["cat", "dog", "cow"], ["duck", "donkey"]]

=end

# My Solution
def partition list, &block
  a1 = [] ; a2 = []
  list.each {|x| yield(x) ? a1 << x : a2 << x }
  [a1, a2]
end

# Better Solution
def partition list, &block
  list.partition(&block)
end
