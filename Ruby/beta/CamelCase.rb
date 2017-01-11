=begin

Write simple .camelcase method for strings. All words must have their first
letter capitalized without spaces.

For instance:

'hello case'.camelcase => HelloCase
'camel case word'.camelcase => CamelCaseWord

=end

# My Solution
class String
  def camelcase
    self.split(" ").map {|x| x.capitalize}.join
  end
end
