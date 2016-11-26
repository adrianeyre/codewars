=begin

Given a string, swap the case for each of the letters.

e.g. CodEwArs --> cODeWaRS

=end

# My solution - Long but it works :-)
def swap(string)
  newstr = ""
  string.each_char do |letter|
    if letter[0].ord >= 65 && letter[0].ord <= 90
      newstr += (letter[0].ord+32).chr
    elsif letter[0].ord >= 97 && letter[0].ord <= 122
      newstr += (letter[0].ord-32).chr
    else
      newstr += letter
    end
  end
  newstr
end

# Better solution
def swap(string)
  string.swapcase
end
