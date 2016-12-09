=begin

Apparently, in the US, January is National Bath Safety Month!!

To celebrate, in this kata you need to decide if a string (s) is
safe from falling in the bath (x)!

Very basic, if the string can fit in the bath, it could fall in.
We can not allow that in safety month! If the string can fit in, it's not safe so return false, otherwise return true, as the string couldn't fit in if it wanted to!

Remember the sides of the bath do not count as water!

=end

# My Soltuion
def bath(s,x)
  s.length >= (x.length - 2) ? true : false
end
