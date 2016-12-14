=begin

Timmy & Sarah think they are in love, but around where they live, they will only
know once they pick a flower each. If one of the flowers has an even number of
petals and the other has an odd number of petals it means they are in love.

Write a function that will take the number of petals of each flower and return
true if they are in love and false if they aren't.

=end

# My Solution
def lovefunc( f1, f2 )
  (f1.even? && f2.odd?) || (f1.odd? && f2.even?) ? true : false
end

# Better Solution
def lovefunc( flower1, flower2 )
  (flower1 + flower2).odd?
end
