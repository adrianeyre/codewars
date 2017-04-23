function getPassword(grid, directions) {
  xpos=0;ypos=0;result="";
  for (x=0;x<grid.length;x++){for (y=0;y<grid[x].length;y++){if (grid[x][y]==="x"){xpos=x;ypos=y};}}
  for (x=0;x<directions.length;x++){
    switch (directions[x]) {
      case "left": ypos--;break;
      case "right": ypos++;break;
      case "up": xpos--;break;
      case "down": xpos++;break;
      case "leftT": ypos--;result+=grid[xpos][ypos];break;
      case "rightT": ypos++;result+=grid[xpos][ypos];break;
      case "upT": xpos--;result+=grid[xpos][ypos];break;
      case "downT": xpos++;result+=grid[xpos][ypos];break;
    }
  }
  return result;
}