=begin
Remove a exclamation mark from the end of string. For a beginner kata, you can
assume that the input data is always a string, no need to verify it.
Examples

remove("Hi!") === "Hi"
remove("Hi!!!") === "Hi!!"
remove("!Hi") === "!Hi"
remove("!Hi!") === "!Hi"
remove("Hi! Hi!") === "Hi! Hi"
remove("Hi") === "Hi"
Note

Please don't post issue about difficulty or duplicate.

=end

# My Solution
def remove(s)
  s[-1] == '!' ? s[0...-1] : s
end

# Better Solution
def remove(s)
  s.chomp('!')
end
