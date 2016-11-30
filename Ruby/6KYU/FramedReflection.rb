=begin
You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame. Example:

'Hello World'

would give:

*********
* olleH *
* dlroW *
*********

=end

# My Solution
def mirror(text)
  longest = 0
  text.split(" ").each {|word| longest = word.length if word.length > longest}
  longest += 4
  return_next = "*" * longest + "\n"
  text.split(" ").each {|word| return_next += "* " + word.reverse + (" " * (longest-4-word.length)) + " *\n"}
  return_next += "*" * longest
end

# Better Solution
def mirror(text)
  words = text.reverse.split.reverse
  max = words.max_by(&:length).size
  border = '*' * (max + 4)

  words.map{ |w| "* #{w.ljust(max)} *" }.unshift(border).push(border).join("\n")
end
