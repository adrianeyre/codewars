=begin

You are given an array of positive and negative integers and a number n and
n > 1. The array may have elements that occurs more than once. Find all the
combinations of n elements of the array that their sum are 0.

arr = [1, -1, 2, 3, -2]
n = 3
find_zero_sum_groups(arr, n) == [-2, -1, 3] # -2 - 1 + 3 = 0
The function should ouput every combination or group in increasing order.

We may have more than one group:

arr = [1, -1, 2, 3, -2, 4, 5, -3 ]
n = 3
find_zero_sum_groups(arr, n) == [[-3, -2, 5], [-3, -1, 4], [-3, 1, 2], [-2, -1, 3]]
In the case above the function should output a sorted 2D array.

The function will not give a group twice, or more, only once.

arr = [1, -1, 2, 3, -2, 4, 5, -3, -3, -1, 2, 1, 4, 5, -3 ]
n = 3
find_zero_sum_groups(arr, n) == [[-3, -2, 5], [-3, -1, 4], [-3, 1, 2], [-2, -1, 3]]
If there are no combinations with sum equals to 0, the function will output an
alerting message.

arr = [1, 1, 2, 3]
n = 2
find_zero_sum_groups(arr, n) == "No combinations"
If the function receives an empty array will output an specific alert:

arr = []
n = 2
find_zero_sum_groups(arr, n) == "No elements to combine"
As you have seen the solutions may have a value occurring only once. Enjoy it!

=end

# My Solution
def find_zero_sum_groups(arr, n)
  result = []
  temp = []
  temp = arr.permutation(n).to_a
  return "No elements to combine" if temp == []
  temp.each do |x|
    x = x.sort!.uniq
    result << x if x.inject(:+) == 0 && x.length == n
  end
  result = result.uniq.sort
  return result.flatten if result.length == 1
  result == [] ? "No combinations" : result
end

# Better Solution
def find_zero_sum_groups(arr, n)
  return "No elements to combine" if arr.empty?
  res = arr.uniq.combination(n).to_a.map(&:sort).select { |tab| tab.uniq == tab && tab.reduce(:+) == 0 }
  res.empty? ? "No combinations" : res.size == 1 ? res.flatten : res.sort
end
