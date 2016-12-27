=begin

You come across a method for removing all odd numbers from an array

removing all odd numbers from an array

def remove_odd_numbers_from_array(a)
  a.each do |x|
      if x%2!=0
          a.delete x
      end
  end
  return a
end

This method does not work as expected. Can you correct it

=end

# My Solution
def remove_odd_numbers_from_array(a)
  a.select {|x| x if x.even?}
end

# Better Solution
def remove_odd_numbers_from_array(a)
  a.reject(&:odd?)
end

# Another Solution
def remove_odd_numbers_from_array(a)
  a.select(&:even?)
end
