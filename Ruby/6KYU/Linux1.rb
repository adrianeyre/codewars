=begin

All Unix user know the command line history. This one comes with a set of useful
commands know as the bang command.

For more information about the history command line you can take a look at:

The man page -> simply type man history in your terminal.
The online man page here.
And for more information about the bang command you can read this article
For this first kata we will explore the !! command, according to the man page
this one refer to the previous command. This is a synonym for !-1.

In this kata you should complete a function that take in argument an history
with the following format:

  1  cd /pub
  2  more beer
  3  lost
  4  ls
  5  touch me
  6  chmod 000 me
  7  more me
  8  history
and that should return the last executed command line, in this case it will
be history.

=end

# My Solution
def bang_bang(history)
  array = []
  array << history.split(/\s\s\d\s\s/)
  array.flatten.last
end

# Better Solution
def bang_bang(history)
  history.lines.last.split(" ", 2).last
end

# Another Solution
def bang_bang(history)
  history.lines.last.match(/\s*?\d+\s+(.+)/)[1]
end
