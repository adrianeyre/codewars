=begin

You get an array of arrays.
If you sort the arrays by their length, you will see, that their
length-values are consecutive.But one array is missing!

You have to write a method, that return the length of the missing array.

Example:
[[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]] --> 3


If the array of arrays is null/nil or empty, the method should return 0.

When an array in the array is null or empty, the method should return 0 too!
There will always be a missing element and its length will be always between
the given arrays.

=end

# My Solution
def getLengthOfMissingArray(array_of_arrays)
  #puts "Array = #{array_of_arrays}"
  return 0 if array_of_arrays == nil
  newarr = []
  array_of_arrays.each {|a| a == nil ? (return 0) : newarr << a.length}

  puts "New Array = #{newarr.sort!}"
  newarr.sort!.each_with_index do |a,i|
    if a+1 != newarr[i+1]
      if a+2 != newarr[i+1]
        return 0
      else
        return a+1
      end
    end
  end
  return 0
end

# Better Solution
def getLengthOfMissingArray(a)
  a.any?(&:empty?)?0:(x=a.map(&:size);(Range.new(*x.minmax).to_a-x).first)rescue 0
end
