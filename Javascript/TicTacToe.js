function TicTacToe() {
  this.grid = [null,null,null,null,null,null,null,null,null];
  this.ideal_moves = [4,0,2,6,8,1,3,5,7];
  this.winning_lines = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
  this.won = false;
}

TicTacToe.prototype.move = function(field=null) {
  if(this.won===true){return[0, "Game ended"];}
  if(this.grid[field-1]!==null && field!==null){return [0, "Illegal move"];}else{
  if(field!==null){this.grid[field-1]=false;}}
  var position = null;
  for(var i=0;i<this.ideal_moves.length;i++){
    if(this.grid[this.ideal_moves[i]]===null){
      position = this.ideal_moves[i]+1;
      this.grid[this.ideal_moves[i]] = true;
      break;
    }
  }
  var player_check = false;
  var winning_text = null;
  for(var player=0; player<=1;player++){
    player_check = !player_check;
    for(i=0; i<this.winning_lines.length;i++){
      var winner = 0;
      for(var x=0;x<3;x++){if(this.grid[this.winning_lines[i][x]]===player_check){winner++;}}
      if(winner===3){if(player_check){winning_text = [position, "I win!"];}else{winning_text = [position, "You win!"];}}
    }
  }
  if(position===null){return [0, "Draw!"];}
  if(winning_text!==null){this.won=true;return winning_text;}
  return [position, "Your move?"];
};


ttt = new TicTacToe();
console.log(ttt.move(5));
console.log(ttt.move(1));
console.log(ttt.move(3));
