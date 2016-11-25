=begin

Given and array of integers (x), return the array with each
value doubled. Example:

[1, 2, 3] --> [2, 4, 6]

For the beginner, try to use the map method
- it comes in very handy quite a lot so is a good one to know.

=end

def maps(x)
  x.map{|e| e * 2}
end
