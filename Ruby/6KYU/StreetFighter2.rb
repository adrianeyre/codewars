=begin

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

For this easy version the fighters grid layout and the initial position wil
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
def streetFighterSelection(fighters, position, moves)
  x,y = position
  result = []
  moves.each do |z|
    case z
      when "up" ; x -= 1
      when "down" ; x += 1
      when "left" ; y -= 1
      when "right" ; y += 1
    end
    x = 0 if x < 0
    x = fighters.length - 1 if x > fighters.length - 1
    y = 0 if y + 1 > fighters[0].length
    y = fighters[0].length - 1 if y < 0
	  result << fighters[x][y]
  end
  result
end
