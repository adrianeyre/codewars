=begin

Complete function minValue (min_value in Ruby). Two arguments will be given:

arr: An array that contains some integers(positve,negative or zero).
n: A positive integer. n <= arr.length.
Your task is to find the minimum value of each n adjacent elements in arr.
Returns by a new array. For example:

arr = [1,2,3,10,-5], n = 2
The min value of each 2 adjacent elements are:
[(1,2)...] --> 1
[.(2,3)..] --> 2
[..(3,10).] --> 3
[...(10,-5)] --> -5

min_value(arr,n) === [1,2,3,-5]
Some Examples

min_value([1,-2,3,-4,5,-6,7,8],1) === [1,-2,3,-4,5,-6,7,8]
min_value([1,-2,3,-4,5,-6,7,8],2) === [-2,-2,-4,-4,-6,-6,7]
min_value([1,-2,3,-4,5,-6,7,8],3) === [-2,-4,-4,-6,-6,-6]
min_value([1,-2,3,-4,5,-6,7,8],4) === [-4,-4,-6,-6,-6]

=end

def min_value(arr, n)
  result = []
  0.upto(arr.length-n) do |i|
    new_arr = []
    0.upto(n-1) do |a|
      new_arr << arr[i+a]
    end
    result << new_arr.min
  end
  result
end

# Better Solution
def min_value(arr, n)
  arr.each_cons(n).map(&:min)
end

# Another Solution
def min_value(arr, n)
  result = []
  arr.each_cons(n) { |a| result << a.sort[0] }
  result
end
