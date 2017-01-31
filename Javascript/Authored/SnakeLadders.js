function SnakesLadders() {
  this._playerSquare = [];
  this._playerSquare[0] = 0;
  this._playerSquare[1] = 0;
  this._player = 0;
  this._won = false;
  this._trap = [[2,38],[7,14],[8,31],[15,26],[21,42],[28,84],[36,44],[51,67],[71,91],[78,98],[87,94],
                    [16,6],[46,25],[49,11],[62,19],[64,60],[74,53],[89,68],[92,88],[95,75],[99,80]];
};

SnakesLadders.prototype.play = function(die1, die2) {
  if (this._won){return "Game over!"};
  roll = die1 + die2;
  if (roll + this._playerSquare[this._player] <= 100){
    this._playerSquare[this._player] += roll;
    if (this._playerSquare[this._player] === 100){this._won = true; return "Player " + (this_player+1).toString + " Wins!"};
  } else {
    this._playerSquare[this._player] = 100 - ((this._playerSquare[this._player] + roll) - 100);
  }
  for (t = 0; t < this._trap.length; t++) {
    if (this._playerSquare[this._player] === this._trap[t][0]){this._playerSquare[this._player] = this._trap[t][1]};
  }
  message = "Player " + (this._player+1).toString + " is on square " + (this._playerSquare[this._player]).toString;
  if (die1!=die2) {if (this._player===0){this._player=1}else{this.player=0}};
  return message;
}

var game;
game = new SnakesLadders;
var result = game.play(1, 1);

console.log(result);


/*

  def play(*die)


    message = "Player #{player+1} is on square #{player_square[player]}"
    next_player if die[0]!=die[1]
    return message
  end

  private

  def next_player
    @player == 0 ? @player = 1 : @player = 0
  end
end

*/
