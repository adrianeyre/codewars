=begin

Down in Fraggle Rock, the gorgs are working on their farm of radishes. They
begin to notice that the fraggles have been stealing their radishes, so they set
up traps to catch them. The gorgs, however, are not very smart and have been
caught up in their traps quite a few times. They have to put out signs in front
of every radish, telling their fellow gorgs whether the radish is "safe"
(no trap) or "unsafe" (trap!).

Gobo and Wembley, our fraggle heroes, need our help. The gorgs are using a
Caesar Cipher (also known as a shift cipher) to encrypt their signs, but they've
added a twist. Can you figure it out?

Your function should only return "safe" or "unsafe". You will always be passed a
valid string of encrypted alpha characters.

Hint: It's not as simple as just the word length!

=end

# My Solution
def decipher(sign)
  sign = sign.downcase
  n = 0 ; letters = "abcdefghijklmnopqrstuvwxyz"
  o = letters.split("")
  l = letters.split("")
  l.each_with_index {|x,i| n = i if x == sign[0]}

  sign.length == 4 ? l = l.rotate(18 - n) : l = l.rotate(20 - n)

  sign = sign.tr("#{o}","#{l}")

  if sign.length == 4
    sign == "safe" ? (return "safe") : (return "unsafe")
  end
  sign == "unsafe" ? (return "unsafe") : (return "safe")
end
