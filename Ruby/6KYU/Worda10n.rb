=begin

The word i18n is a common abbreviation of internationalization the developer
community use instead of typing the whole word and trying to spell it correctly.
Similarly, a11y is an abbreviation of accessibility.

Write a function that takes a string and turns any and all "words" (see below)
within that string of length 4 or greater into an abbreviation following the
same rules.

Notes:

A "word" is a sequence of alphabetical characters. By this definition, any other
character like a space or hyphen (eg. "elephant-ride") will split up a series of
letters into two words (eg. "elephant" and "ride").
The abbreviated version of the word should have the first letter, then the
number of removed characters, then the last letter
(eg. "elephant ride" => "e6t r2e").
Example:

abbreviate("elephant-rides are really fun!")
//          ^^^^^^^^*^^^^^*^^^*^^^^^^*^^^*
// words (^):   "elephant" "rides" "are" "really" "fun"
//                123456     123     1     1234     1
// ignore short words:               X              X

// abbreviate:    "e6t"     "r3s"  "are"  "r4y"   "fun"
// all non-word characters (*) remain in place
//                     "-"      " "    " "     " "     "!"
=== "e6t-r3s are r4y fun!"

=end

# My Solution
class Abbreviator
  def self.abbreviate(string)
    string=string.split(" ")
    string = string.map do |x|
      i = ""
      x.split("").each {|y| i=y if y =~ /\W/}
      i != "" ? (a, b = x.split("#{i}")) : (a = x ; b = "")
      a.length >= 4 ? a="#{a[0]}#{a.length-2}#{a[-1]}" : a
      if b != "" && b != nil
        b.length >= 4 ? b="#{b[0]}#{b.length-2}#{b[-1]}" : b
      end
      "#{a}#{i}#{b}"
    end
    string.join(" ")
  end
end

# Better Solution
class Abbreviator
  def self.abbreviate(string)
    string.gsub /(\w)(\w+{2})(\w)/ do |word|
      "#{$1}#{word.length - 2}#{$3}"
    end
  end
end

# Another Solution
class Abbreviator
  def self.abbreviate(string)
    string.gsub(/(\w)(\w{2,})(\w)/i) { "#{$1}#{$2.size}#{$3}" }
  end
end
