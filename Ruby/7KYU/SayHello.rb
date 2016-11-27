=begin

Say hello!

Write a function to greet a person. Function will take name as input
and greet the person by saying hello. Return null/nil if input is
empty string or null/nil.

Example:

greet("Niks") == "hello Niks!"
greet("") == nil; # Return nil if input is empty string
greet(nil) == nil; # Return nil if input is nil

=end

# My Solution
def greet(name)
  name == "" || name == nil ? nil : "hello #{name}!"
end

# Better Solution
def greet(name)
  "hello #{name}!" unless name.to_s.empty?
end
