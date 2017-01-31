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
  if (this._board[0][col] != 0){return "Column full!"};
  row = 0;
  for (z = 0; z <= 5; z++) {
    if (z == 5 || this._board[z+1][col] != 0){this._board[z][col] = this._player ; row = z ; break};
  }
  console.log("row = "+ (row-1) + " col = "+col);
  if (this._board[row - 1][col] == this._player || this._board[row + 1][col] == this._player){
    amount = 0;
    for (x = 0; x <= 5; x++) {if (this._board[x][col] === this._player){amount += 1}else{break}};
    for (x = row-1; x=0;x--) {if (this._board[x][col] === this._player){amount += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row][col-1] == this._player || this._board[row][col+1] == this._player){
    amount = 0;
    for (x = 0; x <= 6; x++) {if (this._board[row][x] === this._player){amount += 1}else{break}};
    for (x = col-1; x=0;x--) {if (this._board[row][x] === this._player){amount += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row-1][col-1] == this._player || this._board[row+1][col+1] == this._player){
    amount = 0; n = col;
    for (x = row; x <= 5; x++) {if (this._board[x][n] === this._player){amount += 1 ; n += 1}else{break}};
    n = col - 1
    for (x = row-1; x= 0; x--) {if (this._board[x][n] === this._player){amount += 1 ; n -= 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }

  if (this._board[row-1][col+1] == this._player || this._board[row+1][col-1] == this._player){
    amount = 0; n = col;
    for (x = row; x <= 5; x++) {if (this._board[x][n] === this._player){amount += 1 ; n -= 1}else{break}};
    n = col + 1;
    for (x = row-1; x= 0; x--) {if (this._board[x][n] === this._player){amount += 1 ; n += 1}else{break}};
    if (amount > 3) {this._win = true ; return "Player "+this._player+" wins!"};
  }
  result = "Player "+this._player+" has a turn";
  if (this._player === 1) {this._player = 2}else{this._player = 1};
  console.log(this._board)
  return result;
};

// var game = new Connect4();
//
//     console.log(game.play(0)) //, "Player 1 has a turn")
//     console.log(game.play(0)) //, "Player 2 has a turn")
//
//
//
// game = new Connect4();
// console.log(game.play(0))//=="Player 1 has a turn")
// console.log(game.play(0))//=="Player 2 has a turn")

// game = new Connect4();
// console.log(game.play(0))//=="Player 1 has a turn")
// console.log(game.play(1))//=="Player 2 has a turn")
// console.log(game.play(0))//=="Player 1 has a turn")
// console.log(game.play(1))//=="Player 2 has a turn")
// console.log(game.play(0))//=="Player 1 has a turn")
// console.log(game.play(1))//=="Player 2 has a turn")
// console.log(game.play(0))//=="Player 1 wins!")
console.log("START")
game = new Connect4();
console.log(game.play(4))//=="Player 1 has a turn")
console.log(game.play(4))//=="Player 2 has a turn")
console.log(game.play(4))//=="Player 1 has a turn")
console.log(game.play(4))//=="Player 2 has a turn")
console.log(game.play(4))//=="Player 1 has a turn")
console.log(game.play(4))//=="Player 2 has a turn")
console.log(game.play(4))//=="Column full!")

// game = new Connect4();
// console.log(game.play(1))//=="Player 1 has a turn")
// console.log(game.play(1))//=="Player 2 has a turn")
// console.log(game.play(2))//=="Player 1 has a turn")
// console.log(game.play(2))//=="Player 2 has a turn")
// console.log(game.play(3))//=="Player 1 has a turn")
// console.log(game.play(3))//=="Player 2 has a turn")
// console.log(game.play(4))//=="Player 1 wins!")
// console.log(game.play(4))//r=="Game has finished!")


/*
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
*/
