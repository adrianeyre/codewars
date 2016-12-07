=begin

Your function will receive a string of nine "X", "O", and/or "-" characters
representing the state of a tic tac toe board, for example the string

"X-OXXXO-O"
would represent the board

X-O
XXX
O-O
where player X has won by getting three in a row horizontally on the middle row.

Your function needs to return True/true/TRUE (depending on the language
you're using) if either the X or the O player has won the game by getting
three in a row vertically, horizontally, or diagonally; or False/false/FALSE
if there is no winner.

A few more examples:

"---------" - False - no one has even made a move yet!

"XOOOXXXXO" - False - no one got three in a row here.

"OXO-XOX-O" - True - player O won by getting three in a row vertically
in the third column.

Note: Occasionally one of the random boards in the Test Suite will have
two three-in-a-rows instead of one or none, and this still counts as a
winning board. If the two three-in-a-rows belong to the same player,
this just means that the second player played so badly that the first
player's fifth and final move created two three-in-a-rows. If the two
three-in-a-rows belong to different players, this just means that although
one player won the game, afterward (as sometimes happens in real life)
the other player made their mark in another square anyway, just because
even though they already lost, they feel better doing that. :-)

Have fun!

=end

# My Solution
def regex_tic_tac_toe_win_checker(board)
    return true if board =~ /X..X..X../
    return true if board =~ /.X..X..X./
    return true if board =~ /..X..X..X/
    return true if board =~ /XXX....../
    return true if board =~ /...XXX.../
    return true if board =~ /......XXX/
    return true if board =~ /X...X...X/
    return true if board =~ /..X.X.X../

    return true if board =~ /O..O..O../
    return true if board =~ /.O..O..O./
    return true if board =~ /..O..O..O/
    return true if board =~ /OOO....../
    return true if board =~ /...OOO.../
    return true if board =~ /......OOO/
    return true if board =~ /O...O...O/
    return true if board =~ /..O.O.O../
    false
end

# Better Solution
def regex_tic_tac_toe_win_checker(board)
  board[/(\w)(..(\1|.\1.)..\1|.\1.\1..$|\1\1(...)*$)/] ? true : false
end

# Another Solution
def regex_tic_tac_toe_win_checker(board)
  return true if board =~ /\A(.{3}|.{6})?([XO])\2\2/ # row
  return true if board =~ /\A(.|..)?([XO])..\2..\2/  # column
  return true if board =~ /\A([XO])...\1...\1/       # right diagonal
  return true if board =~ /\A..([XO]).\1.\1/         # left diagonal
  false
end
