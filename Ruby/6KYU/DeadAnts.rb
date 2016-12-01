=begin
An orderly trail of ants is marching across the park picnic area.

It looks something like this:

..ant..ant.ant...ant.ant..ant.ant....ant..ant.ant.ant...ant..
But suddenly there is a rumour that a dropped chicken sandwich has
been spotted on the ground ahead. The ants surge forward!
Oh No, it's an ant stampede!!

Some of the slower ants are trampled, and their poor little ant
bodies are broken up into scattered bits.

The resulting carnage looks like this:

...ant...ant..nat.ant.t..ant...ant..ant..ant.anant..t
Can you find how many ants have died?

=end

# My Solution
def deadAntCount(ants)
  puts "ants = #{ants}"
  return 0 if ants == nil
  answer = 0
  ants.gsub!("ant","")
  new_array = [ants.count('a'),ants.count('n'),ants.count('t')]
  new_array.max
end

# Better Solution
def deadAntCount(ants)
  ants = ants.to_s.gsub('ant','')
  %w(a n t).map { |c| ants.count(c) }.max
end
