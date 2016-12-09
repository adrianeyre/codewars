=begin

Many classes in the Ruby core library offer methods to convert from
one data type to another

Add a .to_ary method to the Symbol class to convert it to an 1 length array.

For example

:a.to_ary #=> [:a]

=end

# My Solution
class Symbol
  def to_ary
    [self]
  end
end
