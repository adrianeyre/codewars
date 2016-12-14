=begin
All Unix user know the command line history. This one comes with a set of useful
commands know as the bang command.

For more information about the history command line you can take a look at:

The man page -> simply type man history in your terminal.
The online man page here.
And for more information about the bang command you can read this article
For this third kata we will explore the !-n command, according to the man page
this one refer to command line -n.

In this kata you should complete a function that take in an integer that
correspond to n, and an history with the following format:

  1  cd /pub
  2  more beer
  3  lost
  4  ls
  5  touch me
  6  chmod 000 me
  7  more me
  8  history
and that should return the nth executed command line, for example with n=4 and
the above history it should return touch me. If user ask for a n without any
know entry for exampl n=12 here, the function should return !12: event not found

=end

# My Solution
def bang_minus_n(n, history)
  array = []
  array << history.split(/\s\s\d{1,}\s\s/)
  if array.flatten[-n] == nil
    "!#{-n}: event not found"
  else
    array.flatten[-n].gsub("\n", "").strip
  end
end

# Better Solution
def bang_minus_n(n, history)
  return "!-#{n}: event not found" if history.lines.length < n
  history.lines[-n].split('  ').last.chomp
end

# Another Solution
def bang_minus_n(n,history)
  h = history.lines.reverse[n-1]
  h.nil? ? "!-#{n}: event not found" : h.split("  ").last.strip
end
