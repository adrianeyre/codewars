=begin

All Unix user know the command line history. This one comes with a set of useful
commands know as the bang command.

For more information about the history command line you can take a look at:

The man page -> simply type man history in your terminal.
The online man page here.
And for more information about the bang command you can read this article
For this 5th kata we will explore the !?string command, according to the man
page this one refer to the most recent command preceding the current postition
in the history list containing string.

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
and that should return the most recent command line that contains executed
command line s, for example with s="me" and the above history it should return
more me. If user ask for a s without any know entry for example n=you here, the
function should return !you: event not found.

=end

# My Solution
def bang_contain_string(s, history)
 search = s.gsub(".","[.]")
 array = []
 array << history.split(/\s\s\d{1,}\s\s/)
 array = array.flatten
 array.shift
 return array[-1].gsub("\n", "") if s == s.strip.empty?
 (array.length-1).downto(0) {|x| return array[x].gsub("\n", "").strip if array[x] =~ /#{search.strip}/}
 "!#{s}: event not found"
end

# Better Solution
def bang_contain_string(s,history)
  a = history.split("\n").map{ |e| e.scan(/(?<=\d\s\s).+/).join if e.include?(s) }.delete_if(&:nil?)
  a.last.nil? ? "!#{s}: event not found" : a.last
end

# Another Solution
def bang_contain_string(s,history)
  res = history.scan(/^.*#{s.gsub('.','\.')}.*$/)
  res.empty? ? "!#{s}: event not found" : res[-1].gsub(/^\s+\d+\s+/, '')
end
