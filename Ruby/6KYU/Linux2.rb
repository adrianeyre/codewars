=begin

All Unix user know the command line history. This one comes with a set of useful
commands know as the bang command.

For more information about the history command line you can take a look at:

The man page -> simply type man history in your terminal.
The online man page here.
And for more information about the bang command you can read this article
For this second kata we will explore the !n command, according to the man page
this one refer to command line n.

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
the above history it should return ls. If user ask for a n without any know
entry for example n=12 here, the function should return !12: event not found.
Note: For this kata we will assume that n >= 1.

=end

# My Solution
def bang_n(n, history)
  array = []
  array << history.split(/\s\s\d{1,}\s\s/)
  if array.flatten[n] == nil
    "!#{n}: event not found"
  else
    array.flatten[n].gsub("\n", "").strip
  end
end

# Better Solution
def bang_n(n, history)
  return "!#{n}: event not found" if history.lines.length < n
  history.lines[n - 1].split('  ').last.chomp
end

# Another Solution
def bang_n(n,history)
  lambda{|h| h.size<n ? "!#{n}: event not found" : h[n-1].split(/\s+/).slice(2,h.size+1).join(" ")}.(history.split("\n"))
end
