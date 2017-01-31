function Connect4 (){
  this._board = [[0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0],
                 [0,0,0,0,0,0,0]];
  this._player = 1;
  this._win = false;
};

Connect4.prototype.play = function (col){
  if (this._win){return "Game has finished!"};
  if (this._board[1][col] != 0){return "Column full!"};
  row = 0;
  for (z = 0; z <= 6; z++) {
    if (z === 6 || this._board[z+1][col] != 0){this._board[z][col] = this._player ; row = z ; break};
  }
  if (this._board[row - 1][col] === this._player || this._board[row + 1][col] === this._player){
    amount = 0;
    for (x = row; x <= 6; x++) {if (this._board[x][col] === this._player){amount += 1}else{break}};
    for (x = row-1; x>=0; x--) {if (this._board[x][col] === this._player){amount += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row][col-1] === this._player || this._board[row][col+1] === this._player){
    amount = 0;
    for (x = col; x <= 6; x++) {if (this._board[row][x] === this._player){amount += 1}else{break}};
    for (x = col-1; x>=0; x--) {if (this._board[row][x] === this._player){amount += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row-1][col-1] === this._player || this._board[row+1][col+1] === this._player){
    amount = 0; n = col;
    for (x = row; x <= 6; x++) {if (this._board[x][n] === this._player){amount += 1 ; n += 1}else{break}};
    n = col - 1
    for (x = row-1; x >= 0; x--) {if (this._board[x][n] === this._player){amount += 1 ; n -= 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row-1][col+1] === this._player || this._board[row+1][col-1] === this._player){
    amount = 0; n = col;
    for (x = row; x <= 6; x++) {if (this._board[x][n] === this._player){amount += 1 ; n -= 1}else{break}};
    n = col + 1;
    for (x = row-1; x>= 0; x--) {if (this._board[x][n] === this._player){amount += 1 ; n += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }
  result = "Player "+this._player+" has a turn";
  if (this._player === 1) {this._player = 2}else{this._player = 1};
  return result;
};


/*
// Codewars Random Tests

for (tests = 0; tests <= 30; tests++){
  var game1 = new Connect0();
  var game2 = new Connect4();
  for (t = 1; t <= Math.floor(Math.random() * 41)+1; t++){
    b = Math.floor(Math.random() * 6);
    solution = game1.play(b);
    Test.expect(game2.play(b)==solution,"Expected '"+solution+"'")
  };
};
*/
