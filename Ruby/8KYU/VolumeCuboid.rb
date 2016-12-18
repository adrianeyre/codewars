=begin

Bob needs a fast way to calculate the volume of a cuboid with three values:
length, width and the height of the cuboid. Write a function to help Bob with
this calculation.

Ruby: def get_volume_of_cuboid(length, width, height)

=end

# My Solution
def get_volume_of_cuboid(l, w, h)
  l * w * h
end

# Another Solution
def get_volume_of_cuboid(*dimensions)
  dimensions.inject(:*)
end
