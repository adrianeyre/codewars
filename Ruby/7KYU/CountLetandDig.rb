=begin

Bob is a lazy man.

He needs you to create a method that can determine how many letters and digits
are in a given string.

example:

"hel2!lo" --> 6

"wicked .. !" --> 6

"!?..A" --> 1

Complete the method:

Ruby: count_letters_and_digits(input)

=end

# My Solution
def count_letters_and_digits(input)
  result = 0
  input.split("").each {|x| result +=1 if x =~ /\d/ || x =~ /[a-zA-Z]/}
  result
end

# Better Solution
def count_letters_and_digits(input)
  input.scan(/[a-zA-Z0-9]/).length
end

# Another Solution
def count_letters_and_digits(input)
puts input
input.scan(/[^\W_]/).join.size
end
