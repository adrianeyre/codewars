=begin

Create a function named combineNames(combine_names in python, ruby)
that accepts two parameters (first and last name). The function
should return the full name.

Example:

combine_names('James', 'Stevens')
returns:

'James Stevens'

=end

# My solution
def combine_names(name1, name2)
  name1 + ' ' + name2
end

# Better solution
def combine_names(*names)
  names.join(" ")
end
