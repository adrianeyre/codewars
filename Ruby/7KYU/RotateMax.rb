=begin

Take a number: 56789. Rotate left, you get 67895.

Keep the first digit in place and rotate left the other digits: 68957.

Keep the first two digits in place and rotate the other ones: 68579.

Keep the first three digits and rotate left the rest: 68597.
Now it is over since keeping the first four it remains only one digit
which rotated is itself.

You have the following sequence of numbers:

56789 -> 67895 -> 68957 -> 68579 -> 68597

and you must return the greatest: 68957.

Calling this function max_rot (or maxRot or ... depending on the language)

max_rot(56789) should return 68957

=end

# My Solution
def max_rot(n)
    result = []
    result << n
    n = n.to_s.split("").to_a
    len = n.length
    0.upto(len-2) do |x|
      if x != 0
        n = n[0..x-1] + (n[x..len].rotate(1))
      else
        n = n[x..len].rotate(1)
      end
      result << n.join.to_i
    end
    result.max
end

# Better Solution
def max_rot(n)
  na = n.to_s.chars
  na.length.times.each_with_object([n]) do |i, arr|
    arr << (na << na.delete_at(i)).join.to_i
  end.max
end
