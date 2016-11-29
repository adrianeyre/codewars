=begin

Write a method that takes an array of consecutive (increasing) letters
as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly
one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'

=end

# My Solution
def find_missing_letter(arr)
  (arr.length-1).times {|num| return (arr[num].ord+1).chr if arr[num].ord+1 != arr[num+1].ord}
  return nil
end

# Other Solution
def find_missing_letter(arr)
  arr[0...-1].each_with_index { |val, ind| return val.next if val.next != arr[ind+1] }
  return nil
end
