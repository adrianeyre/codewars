=begin

Let's play! You have to return which player won! In case of a draw return Draw!.

Examples:

rps('scissors','paper') // Player 1 won!
rps('scissors','rock') // Player 2 won!
rps('paper','paper') // Draw!

=end

# My Solution
def rps(p1, p2)
  result = 0
  case p1
    when "rock"
      puts "HERE"
      result = 0 if p2 == "rock"
      result = 1 if p2 == "scissors"
      result = 2 if p2 == "paper"
    when "paper"
      result = 0 if p2 == "paper"
      result = 1 if p2 == "rock"
      result = 2 if p2 == "scissors"
    when "scissors"
      result = 0 if p2 == "scissors"
      result = 1 if p2 == "paper"
      result = 2 if p2 == "rock"
  end
  result == 0 ? "Draw!" : result == 1 ? "Player 1 won!" : "Player 2 won!"
end

# Another Solution
def rps(p1, p2)
  return 'Draw!' if p1 == p2

  result = win_matrix[p1.to_sym][p2.to_sym]

  "Player #{result} won!"
end

def win_matrix
  {
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end

# Another Solution
winning_moves = {
  'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock'
}
return 'Draw!' if p1 == p2
winning_moves[p1] == p2 ? 'Player 1 won!' : 'Player 2 won!'
end
