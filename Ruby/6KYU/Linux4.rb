=begin

ll Unix user know the command line history. This one comes with a set of useful
commands know as the bang command.

For more information about the history command line you can take a look at:

The man page -> simply type man history in your terminal.
The online man page here.
And for more information about the bang command you can read this article
For this 4th kata we will explore the !string command, according to the man page
this one refer to command the most recent command preceding the current position
in the history list starting with string.

In this kata you should complete a function that take in an string that
correspond to s, and an history with the following format:

  1  cd /pub
  2  more beer
  3  lost
  4  ls
  5  touch me
  6  chmod 000 me
  7  more me
  8  history
and that should return the most recent command line that start with s,
for example with s="more" and the above history it should return more me.
If user ask for a s without any know entry for example n=mkdir here, the
function should return !mkdir: event not found.

=end

# My Solution
def bang_start_string(s, history)
 array = []
 array << history.split(/\s\s\d{1,}\s\s/)
 array = array.flatten
 array.shift
 return array[-1].gsub("\n", "") if s == ""
 (array.length-1).downto(0) {|x| return array[x].gsub("\n", "").strip if array[x][0..s.length-1] == s}
 "!#{s}: event not found"
end

# Better Solution
def bang_start_string(s, history)
  ret = history.scan(/\d\s+(.*)/).flatten.reverse.find{ |cm| cm.start_with?(s) }
  ret ? ret : "!#{s}: event not found"
end

# Another Solution
def bang_start_string(s,history)
  h = history.lines.map{ |e| e.strip.split(' ',2).last }.map{ |e| e.scan(/^#{s}.*/).join }.delete_if(&:empty?).last
  h.nil? ? "!#{s}: event not found" : h
end
