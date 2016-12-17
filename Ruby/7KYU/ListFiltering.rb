=begin

In this kata you will create a function that takes a list of non-negative
integers and strings and returns a new list with the strings filtered out.

Example

filter_list([1,2,'a','b']) == [1,2]
filter_list([1,'a','b',0,15]) == [1,0,15]
filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

=end

# My Solution
def filter_list(l)
  result = []
  l.map {|x| result << x.to_i if x.is_a? Integer}
  result
end

# Better Solution
def filter_list(l)
  l.reject { |x| x.is_a? String }
end

# Another Solution
def filter_list(l)
l.select{|i| i.is_a?(Integer)}
end
