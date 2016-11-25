=begin

You get an array of numbers, return the sum of all of
the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: array may be empty, in this case return 0.

=end

# Inject the array using .Inject
# If Statement if its > 0 then sum += n else sum = sum

def positive_sum(arr)
  arr.inject(0) {|sum, n| n > 0 ? sum += n : sum = sum}
end
