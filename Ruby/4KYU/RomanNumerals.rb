=begin

Create a function taking a positive integer as its parameter and returning a
string containing the Roman Numeral representation of that integer.

Modern Roman numerals are written by expressing each digit separately starting
with the left most digit and skipping any digit with a value of zero. In Roman
numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is
written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending
order: MDCLXVI.

Example:

solution(1000) # should return 'M'
Help:

Symbol    Value
I          1
V          5
X          10
L          50
C          100
D          500
M          1,000
Remember that there can't be more than 3 identical symbols in a row.

=end

# My Solution
def solution(number)
  RomanValues.sort.reverse
  result = ""
  str = number.to_s.split("")
  num = str.length-1
  0.upto(str.length-1) do |x|
    current = str[x].to_i * ("1" + "0" * num).to_i
    num -= 1
    while current > 0
      RomanValues.each {|v,k| (result += k ; current -= v.to_i ; break) if v.to_i <= current}
    end
  end
  result
end

RomanValues = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
                50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}


# Better Solution
NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution(number)
  return '' if number <= 0
  NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end
