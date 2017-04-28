function Game(board){
  this.amount = 0;
  this.board = board;
  this.done = [];
  for(x=0;x<this.board.length;x++){
    temp = [];
    for(y=0;y<this.board.length;y++){
      temp.push(false);
    }
    this.done.push(temp);
  }
}

Game.prototype.play = function(lines){

  function checkmysquare(x,y){
    this.amount++;
    temp = [[x,y]];
    num = 0;
    while (num < temp.length){
      x = temp[num][0];
      y = temp[num][1];
      this.done[x][y] = true;
      if (x != 0){
        if (this.board[x-1][y] == 1 && !this.done[x-1][y]){
          temp.push([x-1,y]);
          this.done[x-1][y] = true;
        }
      }
      if (x != this.board.length - 1){
        if (this.board[x+1][y] == 1 && !this.done[x+1][y]){
          temp.push([x+1,y]);
          this.done[x+1][y] = true;
        }
      }
      if (y != 0){
        if (this.board[x][y-1] == 1 && !this.done[x][y-1]){
          temp.push([x,y-1]);
          this.done[x][y-1] = true;
        }
      }
      if (y != this.board.length - 1){
        if (this.board[x][y+1] == 1 && !this.done[x][y+1]){
          temp.push([x,y+1]);
          this.done[x][y+1] = true;
        }
      }
      num++;
    }
  }

  board = this.board; done = this.done; amount = this.amount;
  for(x=0;x<board.length;x++){
    for(y=0;y<board.length;y++){
      if (board[x][y] == 1 && !done[x][y]){checkmysquare(x,y);}
    }
  }
  return amount;
}

function randomBoard(){
  board = [];
  boardSize = Math.floor(Math.random()*45)+5);
  blocks = Math.floor(Math.random()*(boardSize*boardSize)));
  for(x=0;x<boardSize;x++){
    temp = [];
    for(y=0;y<boardSize;y++){
      temp.push(0);
    }
    board.push(temp);
  }
  for(x=0;x<blocks;x++){
    x = Math.floor(Math.random()*boardSize));
    y = Math.floor(Math.random()*boardSize));
    board[x][y] = 1;
  }
  return board;
}
