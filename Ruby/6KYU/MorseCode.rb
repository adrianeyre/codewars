=begin

In this kata you have to write a simple Morse code decoder. While the Morse
code is now mostly superceded by voice and digital data communication channels,
it still has its use in some applications around the world.

The Morse code encodes every character as a sequence of "dots" and "dashes".
For example, the letter A is coded as ·−, letter Q is coded as −−·−,
and digit 1 is coded as ·−−−. The Morse code is case-insensitive,
traditionally capital letters are used. When the message is written in Morse
code, a single space is used to separate the character codes and 3 spaces are
used to separate words. For example, the message HEY JUDE in Morse code
is ···· · −·−− ·−−− ··− −·· ·.

NOTE:Extra spaces before or after the code have no meaning and should be ignored

In addition to letters, digits and some punctuation, there are some special
service codes, the most notorious of those is the international distress signal
SOS (that was first issued by Titanic), that is coded as ···−−−···.
These special codes are treated as single special characters, and usually are
transmitted as separate words.

Your task is to implement a function decodeMorse(morseCode), that would take
the morse code as input and return a decoded human-readable string.

For example:

decodeMorse('.... . -.--   .--- ..- -.. .')
#should return "HEY JUDE"
The Morse code table is preloaded for you as MORSE_CODE dictionary,
feel free to use it. In Java, the table can be accessed like this:
MorseCode.get('.--'). In C#, the preloaded Dictionary can be accessed like
this: MorseCode.Get('.--');. In Haskell the codes are in a Map String String
and can be accessed like this: morseCodes ! ".--".

=end

# My Solution
def decodeMorse(morseCode)
  letters = []
  words = []
  word = ""
  sentence = morseCode.split("   ")

  sentence.each_with_index do |x,i|
    letters[i] = x.split(" ")
  end

  puts letters[0].length
  0.upto(letters.length-1) do |i|
    word = ""
    0.upto(letters[i].length-1) do |x|
      case letters[i][x]
        when "...---..." ; word += "SOS"
        when "-.-.--" ; word += "!"
        when ".-.-.-" ; word += "."
        when ".-" ; word += "A"
        when "-..." ; word += "B"
        when "-.-." ; word += "C"
        when "-.." ; word += "D"
        when "." ; word += "E"
        when "..-." ; word += "F"
        when "--." ; word += "G"
        when "...." ; word += "H"
        when ".." ; word += "I"
        when ".---" ; word += "J"
        when "-.-" ; word += "K"
        when ".-.." ; word += "L"
        when "--" ; word += "M"
        when "-." ; word += "N"
        when "---" ; word += "O"
        when ".--." ; word += "P"
        when "--.-" ; word += "Q"
        when ".-." ; word += "R"
        when "..." ; word += "S"
        when "-" ; word += "T"
        when "..-" ; word += "U"
        when "...-" ; word += "V"
        when ".--" ; word += "W"
        when "-..-" ; word += "X"
        when "-.--" ; word += "Y"
        when "--.." ; word += "Z"
        when ".----" ; word += "1"
        when "..---" ; word += "2"
        when "...--" ; word += "3"
        when "....-" ; word += "4"
        when "....." ; word += "5"
        when "-...." ; word += "6"
        when "--..." ; word += "7"
        when "---.." ; word += "8"
        when "----." ; word += "9"
        when "-----" ; word += "0"
      end
    end
    words << word if word != ""
  end
  words.join(" ")
end

# Better Solution
def decodeMorse(morseCode)
  morseCode.strip.split("   ").map { |w| w.split(" ").map { |c| MORSE_CODE[c] }.join }.join(" ")
end
