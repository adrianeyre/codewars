=begin

Write a function which removes from string all non-digit characters and parse
the remaining to number. E.g: "hell5o wor6ld" -> 56

Function:

get_number_from_string(s)

=end

# My Solution
def get_number_from_string(s)
  s.gsub(/[^\d]/,"").to_i
end
