=begin

We all love to play games especially as children. I have fond memories playing
Connect 4 with my brother so decided to create this Kata based on the classic
game. Connect 4 is known as several names such as “Four in a Row” and “Captain’s
Mistress but was made popular by Hasbro MB Games

Connect 4
The game consists of a grid (7 columns and 6 rows) and two players that take
turns to drop their discs. The pieces fall straight down, occupying the next
available space within the column. The objective of the game is to be the first
to form a horizontal, vertical, or diagonal line of four of one's own discs.
You task is to create a Class called Connect4 that has a method called play and
take one argument for the column.

The rules

If a player successfully has 4 discs horizontally, vertically or diagonally then
you should return "Player n wins!” where n is either 1 or 2.

If a player attempts to place a disc in a column that is full then you should
return ”Colum full!” and the next move must be taken by the same player.

If the game has been won by a player, any following moves should return ”Game
has finished!”.

Any other move should return ”Player n has a turn” where n is either 1 or 2.

Player 1 starts the game every time and alternates with player 2.

The columns are numbered 0-6 left to right.
Good luck and enjoy!

=end

class Connect4
  attr_accessor :board, :player, :win

  def initialize
    @board = [[0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0]]
    @player = 1
    @win = false
  end

  def play(col)
    return "Game has finished!" if @win
    return "Column full!" if board[0][col] != 0
    row = 0
    (0..5).each {|z| (@board[z][col] = @player ; row = z ; break) if z == 5 || @board[z+1][col] != 0}

    if @board[row - 1][col] == @player || @board[row + 1][col] == @player
      amount = 0
      (row..5).each {|x| @board[x][col] == @player ? amount += 1 : break}
      (row-1).downto(0).each {|x| @board[x][col] == @player ? amount += 1 : break}
      (@win = true ; return "Player #{@player} wins!") if amount > 3
    end

    if @board[row][col-1] == @player || @board[row][col+1] == @player
      amount = 0
      (col..6).each {|x| @board[row][x] == @player ? amount += 1 : break}
      (col-1).downto(0).each {|x| @board[row][x] == @player ? amount += 1 : break}
      (@win = true ; return "Player #{@player} wins!") if amount > 3
    end

    if @board[row-1][col-1] == @player || @board[row+1][col+1] == @player
      amount = 0
      n = col
      (row..5).each {|x| @board[x][n] == @player ? (amount += 1 ; n += 1): break}
      n = col - 1
      (row-1).downto(0).each {|x| @board[x][n] == @player ? (amount += 1 ; n -= 1) : break}
      (@win = true ; return "Player #{@player} wins!") if amount > 3
    end

    if @board[row-1][col+1] == @player || @board[row+1][col-1] == @player
      amount = 0
      n = col
      (row..5).each {|x| @board[x][n] == @player ? (amount += 1 ; n -= 1): break}
      n = col + 1
      (row-1).downto(0).each {|x| @board[x][n] == @player ? (amount += 1 ; n += 1) : break}
      (@win = true ; return "Player #{@player} wins!") if amount > 3
    end

    result = "Player #{@player} has a turn"
    @player == 1 ? @player = 2 : @player = 1
    result
  end
end

=begin
# Random tests for codewars
(0..20).each do |rtest|
  game1 = Connect0.new
  game2 = Connect4.new
  (1..(rand(41) + 1)).each do |t|
    Test.it("Random Test") do
      b = rand(6)
      solution = game1.play(b)
      Test.assert_equals(game2.play(b), solution)
    end
  end
end
=end
