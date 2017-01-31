// My Solution
function mazeRunner(maze, directions) {
  var startX = 0; startY = 0;
  var boardX = 0; boardY = 0;
  for (y = 0; y < maze.length; y++) {
    boardY = maze[y]
    for (x = 0; x < boardY.length; x++) {
      boardX = boardY[x]
      if (boardX === 2){startX = x; startY = y}
    }
  }

  for (x = 0; x < directions.length; x++) {
    switch(directions[x]) {
      case "N": startY -= 1; break;
      case "E": startX += 1; break;
      case "S": startY += 1; break;
      case "W": startX -= 1; break;
    }
    if (startY < 0 || startY > maze.length-1 || startX < 0 || startX > maze.length-1 || maze[startY][startX] === 1){return "Dead"};
    if (maze[startY][startX] === 3){return "Finish"};
  }
  return "Lost";
}

/*
// Codewars Random Tests
var maze = [[1,1,1,1,1,1,1,1,0,1],
            [1,3,1,0,1,0,0,0,0,1],
            [1,0,1,0,0,0,1,1,0,1],
            [1,0,1,1,1,1,1,0,0,1],
            [1,0,1,0,0,0,0,0,0,1],
            [1,0,1,0,1,0,1,0,0,1],
            [1,0,1,0,1,0,0,0,0,0],
            [1,0,1,0,1,0,1,1,0,1],
            [1,0,0,0,1,0,0,0,0,1],
            [1,1,1,0,1,1,1,1,2,1]];

Test.expect(mazeRunner(maze,["N","N","N","W","W","W","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N"])=="Finish", "Should return Finish")
Test.expect(mazeRunner(maze,["N","N","N","N","N","N","N","N","W","W","W","S","W","W","N"])=="Lost", "Should return Lost")
Test.expect(mazeRunner(maze,["N","N","N","N","N","E","E","S","S","S","S","S","S"])=="Dead", "Should return Dead")
Test.expect(mazeRunner(maze,["N","W","W","W","W"])=="Dead", "Should return Dead");
Test.expect(mazeRunner(maze,["N","N","N","N","N","N","N","N","N","S","S","S","S","S","S","S","S","S"])=="Lost", "Should return Lost")
Test.expect(mazeRunner(maze,["N","E","E"])=="Dead", "Should return Dead")
Test.expect(mazeRunner(maze,["N","W","W","W","N","N","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N","S","S"])=="Finish", "Should return Finish")
Test.expect(mazeRunner(maze,["N","W","W","W","N","N"])=="Lost", "Should return Lost")
Test.expect(mazeRunner(maze,["N","N","N","E"])=="Lost", "Should return Lost")
Test.expect(mazeRunner(maze,["N","N","N","W","W","W","N","N","W","W","S","S","S","S","S","S"])=="Dead", "Should return Dead")
Test.expect(mazeRunner(maze,["N","W","W","W","N","N","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N"])=="Finish", "Should return Finish")

function mazeRunner2(maze, directions) {
  var startX = 0; startY = 0;
  var boardX = 0; boardY = 0;
  for (y = 0; y < maze.length; y++) {
    boardY = maze[y]
    for (x = 0; x < boardY.length; x++) {
      boardX = boardY[x]
      if (boardX === 2){startX = x; startY = y}
    }
  }

  for (x = 0; x < directions.length; x++) {
    switch(directions[x]) {
      case "N": startY -= 1; break;
      case "E": startX += 1; break;
      case "S": startY += 1; break;
      case "W": startX -= 1; break;
    }
    if (startY < 0 || startY > maze.length-1 || startX < 0 || startX > maze.length-1 || maze[startY][startX] === 1){return "Dead"};
    if (maze[startY][startX] === 3){return "Finish"};
  }
  return "Lost";
}

for (tests = 1; tests < 100; tests++) {
  var t = [];
  var directions = [];
  maze = [];
  var l = Math.floor(Math.random() * 60) + 5
  for (x = 1; x < l; x++) {
    t = [];
    for (y = 1; y < l; y++) {
      t.push(0);
    }
    maze.push(t)
  }
  w = Math.floor(Math.random() *l*l) + 1
  for (z = 1; z < w; z++) {
    x = Math.floor(Math.random() * (l-1));
    y = Math.floor(Math.random() * (l-1));
    maze[x][y] = 1;
  }
  x = Math.floor(Math.random() * (l-1));
  y = Math.floor(Math.random() * (l-1));
  maze[x][y] = 3;

  x = Math.floor(Math.random() * (l-1));
  y = Math.floor(Math.random() * (l-1));
  maze[x][y] = 2;

  m = Math.floor(Math.random() * 59) + 1;
  for (x = 0; x < m; x++) {
    d = Math.floor(Math.random() * 4);
    switch(d) {
      case 0: directions.push("N"); break;
      case 1: directions.push("E"); break;
      case 2: directions.push("S"); break;
      case 3: directions.push("W"); break;
    }
  }

  solution = mazeRunner2(maze, directions)
  Test.expect(mazeRunner(maze, directions) == solution, "Expected outcome to be "+solution);
}
*/
