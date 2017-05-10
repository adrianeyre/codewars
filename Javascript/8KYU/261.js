function whoseMove(lastPlayer, win) {
  lastPlayer === "black" ? nextPlayer = "white" : nextPlayer = "black";
  return win ? lastPlayer : nextPlayer;
}