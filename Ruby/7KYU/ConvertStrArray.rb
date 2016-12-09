=begin

Oh no!

Some really funny web dev gave you an array of numbers from his
API response as an array of strings!

You need to cast the whole array to the correct type.

Create the function

Ruby: toNumberArray(array)
that takes as a parameter an array of numbers represented as strings
and outputs an array of numbers.

ie:["1", "2", "3"] to [1, 2, 3]

Note that you can receive floats as well.

=end

# My Solution
def to_number_array(string_array)
  new_array = []
  string_array.each do |x|
    if x.is_a? Integer
      new_array << x.to_i
    else
      new_array << x.to_f
    end
  end
  new_array
end

# Better Solution
def to_number_array(string_array)
  string_array.map(&:to_f)
end
