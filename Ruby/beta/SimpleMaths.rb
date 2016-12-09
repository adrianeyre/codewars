=begin

Description:

In this kata, you will do addition and subtraction on a given string.
The return value must be a 'string'.

Example: calculate('1plus2plus3minus4') should return '2'.

=end

# My Solution
def calculate(str)
  num1 = "" ; result = []
  str.gsub!("plus","+")
  str.gsub!("minus","-")

  str.split("").each_with_index do |x,i|
    if x =~ /\d/
      num1 += x
    else
      result << num1.to_i
      result << x
      num1 = ""
    end
  end
  result << num1
  return_value = result[0].to_i
  1.upto(result.length-1) do |x|
    if x.odd?
      result[x] == "+" ? return_value += result[x+1].to_i : return_value -= result[x+1].to_i
    end
  end
  return_value.to_s
end

# Better Soltuion
def calculate(s)
 s = s.gsub('plus', '+')
 s = s.gsub('minus','-')
 eval(s).to_s
end
