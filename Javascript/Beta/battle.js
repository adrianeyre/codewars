function damagedOrSunk (board, attacks){
  // console.log(board);
  // console.log(attacks);
  // console.log(board[attacks[x][0]][attacks[x][1]]);
  var sunk = 0;
  var damaged = 0;
  var notTouched = 0;
  var points = 0;
  var hits = {1:0, 2:0, 3:0, 4:0, 5:0};

  for(var x=0;x < attacks.length;x++){
    // a = attacks[x][0];
    // b = attacks[x][1];
    pos = board[attacks[x][0]-1][attacks[x][1]-1];
    // console.log(board[a-1][b-1]);
    // hits[pos] ++;
    if (pos > 0){sunk++; hits[pos] ++;}
  }
  console.log(hits);
  points = (sunk * 1);
  return {sunk: sunk,damaged: damaged,notTouched: notTouched,points: points};
}


board = [[3, 0, 1],
         [3, 0, 1],
         [0, 2, 1],
         [0, 2, 0]];

attacks = [[2, 1], [2, 2], [3, 2]];

result = damagedOrSunk(board, attacks);
console.log(result);
console.log(result.sunk);
console.log(result.damaged);
console.log(result.notTouched);
console.log(result.points);

// { sunk: 1, damaged: 1 , notTouched: 1, points: 0.5}
