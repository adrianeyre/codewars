=begin

Move all exclamation marks to the end of the sentence
Examples

remove("Hi!") === "Hi!"
remove("Hi! Hi!") === "Hi Hi!!"
remove("Hi! Hi! Hi!") === "Hi Hi Hi!!!"
remove("Hi! !Hi Hi!") === "Hi Hi Hi!!!"
remove("Hi! Hi!! Hi!") === "Hi Hi Hi!!!!"

=end
# My Solution
def remove(s)
  n = s.count("!")
  s = s.gsub("!","") + ("!" * n)
end
