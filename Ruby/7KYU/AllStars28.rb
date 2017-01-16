=begin

You've been annoyed by weather reports one time too many! Celsius...Fahrenheit..
why don't they ever give both!?

Create a function called convertCF() that accepts 2 arguments, an integer of the
temperature, and a string of length 1 ("c" or "f") denoting which scale the
integer should be converted to (Celsius and Fahrenheit, respectively). The
function should return a number, which is the conversion from one scale to the
other.

By default, the conversion should convert to Celsius if a 2nd argument is not
provided; in Python, Ruby and Crystal round up to the first digit.

convert_c_f(60, "f"); # 140
convert_c_f(32, "c"); # 0
convert_c_f(50); # 10
convert_c_f(100, "w"); # Error
Info on how to operate the conversion

Note: If the 2nd argument provided is NOT "c" or "f", an error should be thrown.
The conversion should work with negative numbers, too.

=end

# My Solution
def convert_c_f(n, c="c")
  if c == "f"
    (n*9.0/5+32).round(1)
  elsif c == "c"
    ((n-32.0)*5/9).round(1)
  else
    fail
  end
end
