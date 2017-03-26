function damagedOrSunk (board, attacks){
  // console.log(board);
  // console.log(attacks);
  // console.log(board[attacks[x][0]][attacks[x][1]]);
  for(var x=0;x < attacks.length;x++){
    a = attacks[x][0];
    b = attacks[x][1];
    pos = board[a-1][b-1]
    console.log(board[a-1][b-1]);
  }
}


b = [ [ 0, 0, 1, 2, 2, 0 ],
 [ 0, 3, 0, 1, 0, 0 ],
  [ 0, 3, 0, 0, 0, 0 ],
  [ 0, 3, 0, 0, 0, 0 ] ];

a =  [ [ 3, 4 ], [ 4, 3 ], [ 4, 4 ] ];
console.log(damagedOrSunk(b,a));

// { sunk: 1, damaged: 1 , notTouched: 1, points: 0.5}
