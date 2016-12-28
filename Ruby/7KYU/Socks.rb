=begin

Punky loves wearing different colored socks, but Henry can't stand it.

Given an array of different colored socks, return a pair depending on who was
picking them out.

Example:

get_socks('Punky', ['red','blue','blue','green']) -> ['red', 'blue']
Note that Punky can have any two colored socks, in any order, as long as the
are different and both exist. Henry always picks a matching pair.

If there is no possible combination of socks, return an empty array.

=end

# My Solution
def get_socks(name, socks)
  return [] if socks == [] || socks.length == 1
  if name == "Punky"
    return [] if socks.uniq.length == 1
    return socks.uniq[0..1]
  else
    return [socks.uniq[0],socks.uniq[0]]
  end
  []
end

# Better Solution
def get_socks(name, socks)
  sockpicker = {
    'Punky' => proc { |a,b| a != b },
    'Henry' => proc { |a,b| a == b }
  }

  socks.sort.each_cons(2).find(&sockpicker[name]) || []
end
