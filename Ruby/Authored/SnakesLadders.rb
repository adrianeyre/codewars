=begin

Snakes and Ladders is an ancient Indian board game regarded today as a worldwide
classic. It is played between two or more players on a gameboard having numbered,
gridded squares. A number of "ladders" and "snakes" are pictured on the board,
each connecting two specific board squares. (Source Wikipedia)

Task

Your task is to make a simple class called SnakesLadders. There will only be two
arguments passed into a method called play which are both integers between 1 and
6. These integers are the values rolled by the die.

Rules

1. There are two players and both start off the board on square 0.

2. Player 1 starts and alternates with player 2.

3. You follow the numbers up the board in order 1=>100

4. If the value of both die are the same then that player has another go.

5. Climb up ladders. The ladders on the game board allow you to move upwards and
get ahead faster. If you land exactly on a square that shows an image of the
bottom of a ladder, then you may move the player all the way up to the square at
the top of the ladder. (even if you roll a double).

6. Slide down snakes. Snakes move you back on the board because you have to
slide down them. If you land exactly at the top of a snake, slide move the
player all the way to the square at the bottom of the snake or chute. (even if
you roll a double).

7. Land exactly on the last square to win. The first person to reach the highest
square on the board wins. But there's a twist! If you roll too high, your player
"bounces" off the last square and moves back. You can only win by rolling the
exact number needed to land on the last square.
For example, if you are on square 99 and roll a four, move your game piece to
100 (one move), then "bounce" back to 99, 98, 97 (two, three, then four moves.)
Returns

Return "Player n Wins!". Where n is winning player that has landed on square 100
without any remainding moves left.

Return "Game over!" if a player has won and another player tries to play.

Otherwise return "Player n is on square x". Where n is the current player and x
is the sqaure they are currently on.

Good luck and enjoy!

=end

# My Solution
class SnakesLadders

  attr_reader :player_square, :player, :trap, :won

  def initialize
    @player_square = []
    @player_square[0] = 0
    @player_square[1] = 0
    @player = 0
    @won = false
    @trap = [[2,38],[7,14],[8,31],[15,26],[21,42],[28,84],[36,44],[51,67],[71,91],[78,98],[87,94],
             [16,6],[46,25],[49,11],[62,19],[64,60],[74,53],[89,68],[92,88],[95,75],[99,80]]
  end

  def play(*die)
    return "Game over!" if @won
    roll = die.inject(:+)
    if roll + player_square[player] <= 100
      player_square[player] += roll
      (@won = true ; return "Player #{player+1} Wins!") if player_square[player] == 100
    else
      player_square[player] = 100 - ((player_square[player] + roll) - 100)
    end
    trap.each {|t| player_square[player] = t[1] if player_square[player] == t[0]}
    message = "Player #{player+1} is on square #{player_square[player]}"
    next_player if die[0]!=die[1]
    return message
  end

  private

  def next_player
    @player == 0 ? @player = 1 : @player = 0
  end
end
