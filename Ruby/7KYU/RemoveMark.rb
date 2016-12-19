=begin

Remove all exclamation marks from the end of words. Words are separated by spaces in the sentence.
Examples

remove("Hi!") === "Hi"
remove("Hi!!!") === "Hi"
remove("!Hi") === "!Hi"
remove("!Hi!") === "!Hi"
remove("Hi! Hi!") === "Hi Hi"
remove("!!!Hi !!hi!!! !hi") === "!!!Hi !!hi !hi"
Note

Please don't post issue about difficulty or duplicate.

=end

def remove(s)
  result = []
  s.split(" ").map do |x|
    until x[-1] != "!"
      x = x.chomp("!")
    end
    result << x
  end
  result.join(" ")
end

def remove(s)
  s.split.map { |w| w.sub(/!*$/, "") }.join(" ")
end
