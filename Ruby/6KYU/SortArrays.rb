=begin

Simple sort, but this time sort regardless of upper / lower case.

So the input of

[ "Hello", "there", "I'm", "fine"]
is translated to

["fine", "Hello", "I'm", "there" ]

=end

# My Solution
def sortme(names)
  result = []
  sorted = names.map.each {|n| n.upcase }.sort
  sorted.map.each do |s|
    names.each do |n|
      result << n if  s == n.upcase
    end
  end
  result
end

# Better Solution
def sortme( names )
  names.sort_by(&:downcase)
end
