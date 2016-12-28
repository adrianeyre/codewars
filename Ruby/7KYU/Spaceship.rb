=begin

Late last night in the Tanner household, ALF was repairing his spaceship so he
might get back to Melmac. Unfortunately for him, he forgot to put on the parking
brake, and the spaceship took off during repair. Now it's hovering in space.

ALF has the technology to bring the spaceship home if he can lock on to it's
location.

Given a map:

..........
..........
..........
.......X..
..........
..........
The map will be given in the form of a string with \n separating new lines.
The bottom left of the map is [0, 0]. X is ALF's spaceship.

In this expample:

find_spaceship(map) => [7, 2]
If you cannot find the spaceship, the result should be

"Spaceship lost forever."

=end

# My Solution
def find_spaceship(map)
	map = map.split("\n")
  map.each_with_index do |a, y|
    (0..a.length-1).each {|x| return [x, map.length - y - 1] if a[x] == "X"}
  end
  "Spaceship lost forever."
end

# Another Solution
def find_spaceship(map)
  map.split("\n").reverse_each.with_index { |line, y|
    x = line.index("X")
    return [x, y] if x
  }
  "Spaceship lost forever."
end
