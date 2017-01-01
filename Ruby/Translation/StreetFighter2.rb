=begin

Short Intro

Some of you might remember spending afternoons playing Street Fighter 2 in some
Arcade back in the 90s or emulating it nowadays with the numerous emulators for
retro consoles.

Can you solve this kata? Suuure-You-Can!

UPDATE: a new kata's harder version is available here.

The Kata

You'll have to simulate the video game's character selection screen behaviour,
more specifically the selection grid. Such screen looks like this:

alt text

Selection Grid Layout in text:

| Ryu  | E.Honda | Blanka  | Guile   | Balrog | Vega    |
| Ken  | Chun Li | Zangief | Dhalsim | Sagat  | M.Bison |
Input

the list of game characters in a 2x6 grid;
the initial position of the selection cursor (top-left is (0,0));
a list of moves of the selection cursor (which are up, down, left, right);
Output

the list of characters who have been hovered by the selection cursor after all
the moves (ordered and with repetition, all the ones after a move, wether
successful or not, see tests);
Rules

Selection cursor is circular horizontally but not vertically!

As you might remember from the game, the selection cursor rotates horizontally
but not vertically; that means that if I'm in the leftmost and I try to go left
again I'll get to the rightmost (examples: from Ryu to Vega, from Ken to M.Bison)
and vice versa from rightmost to leftmost.

Instead, if I try to go further up from the upmost or further down from the
downmost, I'll just stay where I am located (examples: you can't go lower than
lowest row: Ken, Chun Li, Zangief, Dhalsim, Sagat and M.Bison in the above
image; you can't go upper than highest row: Ryu, E.Honda, Blanka, Guile, Balrog
and Vega in the above image).

Test

For this easy version the fighters grid layout and the initial position will
always be the same in all tests, only the list of moves change.

Examples

1.

fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]
initial_position = (0,0)
moves = ['up', 'left', 'right', 'left', 'left']
then I should get:

['Ryu', 'Vega', 'Ryu', 'Vega', 'Balrog']
as the characters I've been hovering with the selection cursor during my moves.
Notice: Ryu is the first just because it "fails" the first up See test cases for
more examples.

2.

fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]
initial_position = (0,0)
moves = ['right', 'down', 'left', 'left', 'left', 'left', 'right']
Result:

['E.Honda', 'Chun Li', 'Ken', 'M.Bison', 'Sagat', 'Dhalsim', 'Sagat']

=end

# My Solution
def super_street_fighter_selection(fighters, position, moves)
  x,y = position ; result = []
  moves.each do |move|
    begin
      case move.downcase
        when "up" ; x -= 1 if x != 0
        when "down" ; x += 1 if x != fighters.length - 1
        when "left" ; y -= 1
        when "right" ; y += 1
      end

      x += 1 if fighters[x][y] == "" && move == "up"
      (x = 0 ; move = "down") if x < 0

      x -= 1 if fighters[x][y] == "" && move == "down"
      x = fighters.length - 1 if (x > fighters.length - 1) && (fighters[x][y] != "")
      (x = fighters.length ; move = "up") if x > fighters.length

      y = fighters[x].length - 1 if y < 0
      y = 0 if y > fighters[x].length - 1

      break if fighters[x][y] != ""
    end while fighters[x][y] == ""

    result << fighters[x][y]
  end
  result
end

opts = ["up","down","right","left"]

# DO NOT CHANGE THIS VARIABLE!
fighters = [
	[       "",    "Ryu",  "E.Honda",  "Blanka",   "Guile", ""       ],
	[ "Balrog",    "Ken",  "Chun Li", "Zangief", "Dhalsim", "Sagat"  ],
	[   "Vega", "T.Hawk", "Fei Long",  "Deejay",   "Cammy", "M.Bison"]
]

moves =  []
position = [0,0]
solution = []
Test.it("should work with no selection cursor moves") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["up"]
position = [1,0]
solution = ['Balrog']
Test.it("should stop on empty spaces vertically") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["up"]*4
position = [1,0]
solution = ['Balrog']*4
Test.it("should stop on empty spaces vertically") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["down"]*4
position = [1,0]
solution = ['Vega']*4
Test.it("should stop vertically") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["up"]*4
position = [1,5]
solution = ['Sagat']*4
Test.it("should stop on empty spaces vertically") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["down"]*4
position = [1,5]
solution = ['M.Bison']*4
Test.it("should stop vertically") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["left"]*8
position = [1,3]
solution = ['Chun Li', 'Ken', 'Balrog', 'Sagat', 'Dhalsim', 'Zangief', 'Chun Li', 'Ken']
Test.it("should rotate horizontally") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["right"]*8
position = [0,2]
solution = ['Blanka', 'Guile', 'Ryu', 'E.Honda', 'Blanka', 'Guile', 'Ryu', 'E.Honda']
Test.it("should rotate horizontally with empty spaces") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end

moves =  ["right"]*6+["down"]+["left"]*12+["down"]+["right"]*12
position = [0,2]
solution = ['Blanka', 'Guile', 'Ryu', 'E.Honda', 'Blanka', 'Guile', 'Dhalsim', 'Zangief', 'Chun Li', 'Ken', 'Balrog', 'Sagat', 'Dhalsim', 'Zangief', 'Chun Li', 'Ken', 'Balrog', 'Sagat', 'Dhalsim', 'Cammy', 'M.Bison', 'Vega', 'T.Hawk', 'Fei Long', 'Deejay', 'Cammy', 'M.Bison', 'Vega', 'T.Hawk', 'Fei Long', 'Deejay', 'Cammy']
Test.it("should rotate on all rows") do
  Test.assert_equals(super_street_fighter_selection(fighters,position, moves), solution)
end


# DO NOT CHANGE THIS VARIABLE!
# LIST WITH HOLES AND DUPLICATES
fighters3 = [
	[       "",    "Ryu",  "E.Honda",  "Cammy",  "Blanka",   "Guile",        "", "Chun Li" ],
	[ "Balrog",    "Ken",  "Chun Li",       "", "M.Bison", "Zangief", "Dhalsim", "Sagat"  ],
	[   "Vega",       "", "Fei Long", "Balrog",  "Deejay",   "Cammy",        "", "T.Hawk"]
]

moves =  ["right"]*6+["down"]+["left"]*12+["down"]+["right"]*12
position = [0,2]
solution = ['Cammy', 'Blanka', 'Guile', 'Chun Li', 'Ryu', 'E.Honda', 'Chun Li', 'Ken', 'Balrog', 'Sagat', 'Dhalsim', 'Zangief', 'M.Bison', 'Chun Li', 'Ken', 'Balrog', 'Sagat', 'Dhalsim', 'Zangief', 'Cammy', 'T.Hawk', 'Vega', 'Fei Long', 'Balrog', 'Deejay', 'Cammy', 'T.Hawk', 'Vega', 'Fei Long', 'Balrog', 'Deejay', 'Cammy']
Test.it("should rotate on all rows") do
  Test.assert_equals(super_street_fighter_selection(fighters3,position, moves), solution)
end

moves =  ["down"]+["right"]*3+["down"]+["left"]*2+["down"]+["right"]*3+["up"]
position = [0,3]
solution = ['Cammy', 'Blanka', 'Guile', 'Chun Li', 'Sagat', 'Dhalsim', 'Zangief', 'Cammy', 'T.Hawk', 'Vega', 'Fei Long', 'Chun Li']
Test.it("should work") do
  Test.assert_equals(super_street_fighter_selection(fighters3,position, moves), solution)
end

fighters4 = [
	[        "",     "Ryu",  "E.Honda",  "Cammy" ],
	[  "Balrog",     "Ken",  "Chun Li",       "" ],
	[    "Vega",        "", "Fei Long", "Balrog",],
    [  "Blanka",   "Guile",         "", "Chun Li"],
    [ "M.Bison", "Zangief",  "Dhalsim", "Sagat"  ],
    [  "Deejay",   "Cammy",         "", "T.Hawk" ]
]

moves =  ["left"]*2+["down"]+["right"]*4+["down"]+["left"]*4+["down"]+["right"]*2+["down"]+["right"]*3+["down"]+["left"]*3+["down"]+["left"]*3
position = [0,3]
solution = ['E.Honda', 'Ryu', 'Ken', 'Chun Li', 'Balrog', 'Ken', 'Chun Li', 'Fei Long', 'Vega', 'Balrog', 'Fei Long', 'Vega', 'Blanka', 'Guile', 'Chun Li', 'Sagat', 'M.Bison', 'Zangief', 'Dhalsim', 'Dhalsim', 'Zangief', 'M.Bison', 'Sagat', 'T.Hawk', 'Cammy', 'Deejay', 'T.Hawk']
Test.it("should work with longer grid") do
  Test.assert_equals(super_street_fighter_selection(fighters4,position, moves), solution)
end

moves =  ["left"]*2+["down"]+["right"]*4+["down"]+["left"]*4+["up"]+["right"]*2+["up"]+["right"]*3
position = [3,3]
solution = ['Guile', 'Blanka', 'M.Bison', 'Zangief', 'Dhalsim', 'Sagat', 'M.Bison', 'Deejay', 'T.Hawk', 'Cammy', 'Deejay', 'T.Hawk', 'Sagat', 'M.Bison', 'Zangief', 'Guile', 'Chun Li', 'Blanka', 'Guile']
Test.it("should work with odd initial position") do
  Test.assert_equals(super_street_fighter_selection(fighters4,position, moves), solution)
end
