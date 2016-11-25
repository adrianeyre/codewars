=begin

The code does not execute properly. Try to figure out why.

=end

class Person
  def initialize(name)
    @name = name
  end

  def greet(other_name)
    "Hi #{other_name}, my name is #{name}"
  end
end
