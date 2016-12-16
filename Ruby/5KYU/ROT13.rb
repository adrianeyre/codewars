=begin

How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur
rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can
decipher it? According to Wikipedia, ROT13 (http://en.wikipedia.org/wiki/ROT13)
is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces,
punctuation, numbers etc. Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example.");
rot13("This is my first ROT13 excercise!") = "Guvf vf zl svefg EBG13 rkprepvfr!")

=end

# My Solution
def rot13(message)
  result = ""
  lower = ("abcdefghijklmnopqrstuvwxyz").split("").rotate(-13)
  upper = ("ABCDEFGHIJKLMNOPQRSTUVWXWZ").split("").rotate(-13)
  message.split("").each do |x|
    num = x.ord
    letter = ""
    if num > 64 && num < 91
      num -= 65
      letter = upper[num]
    elsif num > 96 && num < 123
      num -= 97
      letter = lower[num]
    end
    letter == "" ? result += x : result += letter
  end
  result
end

# Better Solution
def rot13(message)
  message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end
