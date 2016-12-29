=begin

Array Exchange and Reversing

It's time for some array exchange! The objective is simple: To exchange between
two arrays but with one catch; the content of the exchanged array must be
reversed.

my_array = ['a', 'b', 'c']
other_array= [1, 2, 3]
my_array.exchange_with!(other_array)
The expected output:

my_array = [3, 2, 1]
other_array = ['c', 'b', 'a']

=end

# My Solution
class Array
  def exchange_with!(other_array)
    a = []
    self.each{|x| a << x}
    self.replace(other_array.reverse)
    other_array.replace(a.reverse)
  end
end

# Better Solution
class Array
  def exchange_with!(other_array)
    temp = self.dup
    self.replace other_array.reverse
    other_array.replace temp.reverse
  end
end
