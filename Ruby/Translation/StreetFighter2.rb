=begin

This is the rightful continuation to this easier Kata here and some rules are
the same with few substantial alterations.

This time we have to deal with a situation like Super Street Fighter 2 Selection
Screen:

alt text

As you may see, we now have 16 characters on 3 rows. You might think: let's make
an array of 3 arrays! But that's not enough.

EMPTY SPACE

The first character of the first row (Ryu) is not aligned with the first of the
second row (Balrog) but with the second (Ken) and the same goes with the other
side; therefore we need to introduce something new, like an offset: the Empty
Space.

The empty space, represented as empty string "", will allow us to keep the grid
aligned and rectangular, with spaces that won't be selectable. In this case we
need 2 empty spaces (3 rows x 6 columns = 18 slots, 18 slots - 16 characters = 2
empty spaces). Like this:

|        | Ryu    | E.Honda  | Blanka  | Guile   |         |
| Balrog | Ken    | Chun Li  | Zangief | Dhalsim | Sagat   |
| Vega   | T.Hawk | Fei Long | Deejay  | Cammy   | M.Bison |
The moves of the selection cursor are the same as before: rotate horizontally
but stop vertically. When you find empty spaces (1 or more) you need to skip
them if you approach them horizontally and get to the next selectable slot with
the next fighter on the left or right; and if you approach them vertically you
need to just stop and stay where you are.

Example: if you are on Ryu and move left, you must get to Guile; if you are on
Balrog and move up, you must stay on Balrog.

Notice: I might put empty spaces right in the middle and the rectangular grids
can be any size, not only 3x6, deal with this too.

WHAT'S NEW

So, let's resume what are the new issues in this harder version of the Kata:

The initial position might be any non-empty slot in the grid (given as input).
The characters grid (also given as input) might have any rectangular layout, not
only 3 rows.
The grid might contain empty spaces, both on the borders or right in the middle.
INPUT

Fighters grid;
Initial position;
List of moves.
The third input parameter is still the list of moves (all valid ones: left,
right, up or down).

OUTPUT

The output is the same as before: the list of characters that have been hovered
by the selection cursor after each move, successful or not.

Hopefully test cases will complete my explanation.

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
