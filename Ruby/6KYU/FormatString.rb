=begin

Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for
the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
Note: all the hashes are pre-validated and will only
contain A-Z, a-z, '-' and '.'.

=end

# My Solution
def list names
  result = ""
  num = names.length
  x = 0
  puts num - 1
  names.each do |key,value|
    key.each do |key2, value2|
      x += 1
      x == num -1 ? (result << value2 + " & ") : (result << value2 +", ")
    end
  end

  result[0..-3]
end

# Better Solution
def list names
  names.map(&:values).join(', ').gsub(/, (\w+)$/, " & \\1")
end

# Another Solution
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end
