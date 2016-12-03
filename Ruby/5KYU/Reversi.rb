=begin

eversi is a game usually played by 2 people on a 8x8 board.
Here we're only going to consider a single 8x1 row.

Players take turns placing pieces, which are black on one side and
white on the other, onto the board with their colour facing up.
If one or more of the opponents pieces are sandwiched by the piece
just played and another piece of the current player's colour,
the opponents pieces are flipped to the current players colour.

Note that the flipping stops when the first piece of the player's colour is reached.

Task:

Your task is to take an array of moves and convert this into a string
representing the state of the board after all those moves have been played.

Input:

The input to your function will be an array of moves. Moves are represented
by integers from 0 to 7 corresponding to the 8 squares on the board.
Black plays first, and black and white alternate turns. Input is guaranteed
to be valid. (No duplicates, all moves in range, but array may be empty)

Output:

8 character long string representing the final state of the board.
Use '*' for black and 'O' for white and '.' for empty.

Examples:

  reversi_row([])      # '........'
  reversi_row([3])     # '...*....'
  reversi_row([3,4])   # '...*O...'
  reversi_row([3,4,5]) # '...***..'

=end

# My Solution
def reversi_row(moves)
  result = "........"
  return result if moves == []
  black = false

  0.upto(moves.length-1) do |i|
    result[moves[i].to_i] = "T"
    1.upto(4) do |l|
      1.upto(5) do |n|
        if black
          result = result.gsub("T#{"*" * n}O","T#{"O" * n}O")
          result = result.gsub("O#{"*" * n}T","O#{"O" * n}T")
        else
          result = result.gsub("T#{"O" * n}*","T#{"*" * n}*")
          result = result.gsub("*#{"O" * n}T","*#{"*" * n}T")
        end
      end
    end
    result[moves[i].to_i] = black ? "O" : "*"
    black = !black
  end
  result
end

# Other Solution
def reversi_row(arr)
  player = '*'
  board = '.' * 8
  arr.each do |ix|
    opponent = case player
               when '*' then 'O'
               when 'O' then '*'
               end
    x = ix - 1
    x -= 1 while board[x] == opponent
    board[x...ix] = player * (ix - x) if 0 <= x && board[x] == player
    x = ix + 1
    x += 1 while board[x] == opponent
    board[ix...x] = player * (x - ix) if board[x] == player
    board[ix] = player
    player = opponent
  end
  board
end
