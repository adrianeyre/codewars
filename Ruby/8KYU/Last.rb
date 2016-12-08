=begin

Find the last element of a list.

Example:

last( [1,2,3,4] ) # => 4
last( "xyz" ) # => z
last( 1,2,3,4 ) # => 4
In javascript and CoffeeScript a list will be an array, a string or
the list of arguments.

=end

# My Solution
def last(*arr)
  arr.flatten!
  if arr[1] != nil
    return arr.last
  else
    (arr.to_s.length-2) == 1 ? (return arr.to_s[1].to_i) : (return arr[0][-1..-1])
  end
end

# Better Solution
def last(*args)
  args[-1].is_a?(String) ? args[-1][-1] : args.flatten[-1]
end

# Another Solution
def last *args
  args.last.last
end

class Fixnum
  def last
    self
  end
end

class String
  def last
    self[-1]
  end
end
