=begin

The Kata is inspired by Calculating with Functions Kata for JavaScript.

The goal is to implement simple calculator which uses fluent syntax:

Calc.new.one.plus.two             # Should return 3
Calc.new.five.minus.six           # Should return -1
Calc.new.seven.times.two          # Should return 14
Calc.new.nine.divided_by.three     # Should return 3
There are only four operations that are supported (plus, minus, times,
divided_by) and 10 digits (zero, one, two, three, four, five, six, seven,
eight, nine).

Each calculation consists of one operation only.

=end

# My Solution
$opper = ""

class Integer
  def zero ; calcsum(self, $opper,0) ; end
  def one ; calcsum(self, $opper,1) ; end
  def two ; calcsum(self, $opper,2) ; end
  def three ; calcsum(self, $opper,3) ; end
  def four ; calcsum(self, $opper,4) ; end
  def five ; calcsum(self, $opper,5) ; end
  def six ; calcsum(self, $opper,6) ; end
  def seven ; calcsum(self, $opper,7) ; end
  def eight ; calcsum(self, $opper,8) ; end
  def nine ; calcsum(self, $opper,9) ; end

  def plus ; $opper = "plus" ; self ; end
  def minus ; $opper = "minus" ; self ; end
  def times ; $opper = "times" ; self ; end
  def divided_by ; $opper = "divided_by" ; self ; end

  def calcsum(num1, oppercal, num2)
    case oppercal
      when "plus"; num1 + num2
      when "minus"; num1 - num2
      when "times"; num1 * num2
      when "divided_by"; num1 / num2
    end
  end
end

class Calc
  attr_accessor :value
  def initialize ; @value = 0 ; end
  def zero ; @value = 0 ;end
  def one ; @value = 1 ;end
  def two ; @value = 2 ;end
  def three ; @value = 3 ;end
  def four ; @value = 4 ;end
  def five ; @value = 5 ;end
  def six ; @value = 6 ;end
  def seven ; @value = 7 ;end
  def eight ; @value = 8 ;end
  def nine ; @value = 9 ;end
end

p Calc.new.four.plus.five
