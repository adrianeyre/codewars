=begin

Given an array of numbers (s), check if any of the numbers are the character
codes for lower case vowels.

If they are, change the array value to a string of that vowel.

Return the resulting array.

=end

# My Solution
def is_vow(a)
  a.each_with_index do |x,i|
    letter = ""
    case x
      when 97  ; letter = "a"
      when 101 ; letter = "e"
      when 105 ; letter = "i"
      when 111 ; letter = "o"
      when 117 ; letter = "u"
    end
    a[i] = letter if letter != ""
  end
end

# Better Solution
def is_vow(a)
  a.map { |l| l.chr =~ /[aeoui]/ ? l.chr : l }
end
