=begin

In this kata, you've to count letters in a given string and return the
letter count in a hash with 'letter' as key and count as 'value'.
The key must be 'symbol' instead of string in Ruby and 'char' instead
of string in Crystal.

Example:

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1,
:r=>1, :s=>1, :t=>2}

=end

# My Solution
def letter_count(str)
  letter = Hash.new {|x,k| x[k] = 0}
  str.split("").each {|x| letter[x.to_sym] += 1}
  letter
end

# Better Soltuion
def letter_count(str)
  str.chars.each_with_object(Hash.new(0)) { |c, h| h[c.to_sym] += 1 }
end

# Another Solution
def letter_count(str)
  str.chars.map { | i | [:"#{i}", str.count(i)] }.to_h
end
