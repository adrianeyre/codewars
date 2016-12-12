=begin

You forgot to count the number of toast you put into there, you don't know
if you put exactly six pieces of toast into the toasters.

=end

# My Solution
def six_toast(num)
  num > 5 ? num - 6 : num
end

# Better Solution
def six_toast(num)
  (6-num).abs
end
