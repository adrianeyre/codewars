function Game(board){
  this.board = board;
}

Game.prototype.play = function(lines){
  function checkmysquare(squares, arr){
    num2 = 0;
    xt = 0;
    arr.forEach(function(x) {
      if (squares.includes(x)){num2++}else{xt=x}
    })
    if (num2==arr.length-1){squares.push(xt)}
    return squares;
  }

  board = this.board;

  for(z=0;z<lines.length;z++){
    n = lines[z];
    topbot = true;
    num = 0;
    for(x=1;x<=n;x++){
      num++;
      if (topbot && num == board){
        num = 0;
        topbot = false;
      }
      else if (!topbot && num == board+1) {
        num = 0;
        topbot = true;
      }
    }
    if (num==0){topbot = !topbot};
    if (topbot){
      lines = checkmysquare(lines, [n-board-1, n-board, n-(board*2)-1])
      lines = checkmysquare(lines, [n+board+1, n+board, n+(board*2)+1])
    } else {
      if (num != 0){lines = checkmysquare(lines, [n+1, n-board, n+board+1])}
      if (num != 1){lines = checkmysquare(lines, [n-1, n+board, n-board-1])}
    }
  }
  return lines.sort(function(a, b){return a - b});
}

function makesquare(n){
  sq = [];
  max = 2*n*n+(n*2)-1;
  for (x=1;x<Math.floor(Math.random()*(max*2)); x++){
    num = Math.floor(Math.random()*max))+1;
    if (!sq.includes(num)){sq.push(num)}
  }
  return sq.sort();
}

for (cwtests=0;cwtests<2;cwtests++){
  board = Math.floor(Math.random()*25))+1;
  squares = makesquare(board);
  game1 = new Game(board);
  game2 = new Game2(board);
  result = game2.play(squares);
  Test.assert_equals(game1.play(squares), result, "Should return '#{result}'")
}
