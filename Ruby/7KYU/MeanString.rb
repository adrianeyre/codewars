=begin

You will be given an array of strings which will include both integers and
characters.

Return an array of length 2 with a[0] representing the mean of the integers to a
single decimal place. There will always be 10 integers and 10 characters. Create
a single string with the characters and return it as a[1] while maintaining the
original order.

lst = ['u', '6', 'd', '1', 'i', 'w', '6', 's', 't', '4', 'a', '6', 'g', '1',
'2', 'w', '8', 'o', '2', '0']

Here is an example of your return

[3.6, 'udiwstagwo']

=end

# My Solution
def mean(lst)
  n = 0 ; s = ""
  lst.each {|x| x =~ /[a-zA-Z]/ ? s += x : n += x.to_i}
  [n/10.0,s]
end

# Better Solution
def mean(lst)
  [lst.map(&:to_f).reduce(:+)/10,lst.grep(/[^\d]/).join]
end
