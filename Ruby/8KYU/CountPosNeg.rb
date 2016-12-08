=begin

Given an array of integers.

Return an array, where the first element is the count of positives
numbers and the second element is sum of negative numbers.

If the input array is empty or null, return an empty array:

C#/Java: new int[] {} / new int[0];
C++: std::vector<int>();
JavaScript/CoffeeScript/PHP: [];

=end

# My Solution
def count_positives_sum_negatives(lst)
  sum = 0
  pos = lst.count {|i| i > 0}
  neg = lst.each {|i| sum += i if i < 0}
  [pos,sum]
end

# Better Solution
def count_positives_sum_negatives(lst)
    [lst.count{|n| n > 0}, lst.select{|n| n < 0}.reduce(0, :+)]
end

# Another Solution
def count_positives_sum_negatives(lst)
  positives, negatives = lst.partition(&:positive?)
  [positives.count, negatives.inject(0, :+)]
end
