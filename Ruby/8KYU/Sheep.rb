=begin

Consider an array of sheep where some sheep may be missing from their place.
We need a function that counts the number of sheep present in the array
(true means present).

For example,

The correct answer would be 17.

Hint: Don't forget to check for bad values like null/undefined

=end

# My Solution
def countSheeps array
    array.count {|x| x==true}
end

# Better Solution
def countSheeps array
    array.count(true)
end
