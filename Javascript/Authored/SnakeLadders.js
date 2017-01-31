// My Solution
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
    if (this._playerSquare[this._player] === 100){this._won = true; return "Player " + parseInt(this._player+1) + " Wins!"};
  } else {
    this._playerSquare[this._player] = 100 - ((this._playerSquare[this._player] + roll) - 100);
  }
  for (t = 0; t < this._trap.length; t++) {
    if (this._playerSquare[this._player] === this._trap[t][0]){this._playerSquare[this._player] = this._trap[t][1]};
  }
  message = "Player " + parseInt(this._player+1) + " is on square " + parseInt(this._playerSquare[this._player]);
  if (die1!=die2) {if (this._player===0){this._player=1}else{this._player=0}};
  return message;
}


/*
// Codewars Random Tests
for (i = 1; i < 5; i++) {
  var tgame = new SnakesLadders2();
  var game = new SnakesLadders();
  for (games = 1; games < 50; games++) {
    x = Math.floor(Math.random() * 6) + 1;
    y = Math.floor(Math.random() * 6) + 1;
    solution = tgame.play(x,y);
    Test.expect(game.play(x,y)==solution, "Should return: "+solution);
  }
}
*/
