=begin

Write a class that, when given a string, will return an uppercase string
with each letter shifted forward in the alphabet by however many spots
the cipher was initialized to.

For example:

c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
c.encode('Codewars') # returns 'HTIJBFWX'
c.decode('BFKKQJX') # returns 'WAFFLES'
If something in the string is not in the alphabet
(e.g. punctuation, spaces), simply leave it as is.

=end

# My Solution
class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    string.upcase!
    result = ""
    string.split("").each do |letter|
      if letter.ord > 64 && letter.ord < 91
        x = letter.ord+@shift-64
        x = x % 26 if x > 26
        result += (x+64).chr
      else
        result += letter
      end
    end
    result
  end

  def decode(string)
    string.upcase!
    result = ""
    string.split("").each do |letter|
      if letter.ord > 64 && letter.ord < 91
        x = letter.ord-@shift-64
        if x < 1
          if x != 0
            x = x.to_s[1..-1].to_i
            x = 26 - (x % 26)
          else
            x = 26
          end
        end
        result += (x+64).chr
      else
        result += letter
      end
    end
    result
  end
end

# Better Solution
class CaesarCipher
  def initialize(shift)
    @rotate = ('A'..'Z').to_a.rotate(shift).join
  end

  def encode(string)
    string.upcase.tr "A-Z", @rotate
  end

  def decode(string)
    string.tr @rotate, "A-Z"
  end
end
