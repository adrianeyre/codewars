function bowlingScore(frames) {
  var frame = frames.split(" ");
  score = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0,0,0,0]];
  finalScore = 0;
  for (i=0; i<=2; i++){
    score[9][i] = checkValue(frame[9][i]);
    if (score[9][i]==="/"){score[9][i] = addSpare(score[9][i-1]);}
  }
  for (i=8; i>= 0; i--){
    score[i][0] = checkValue(frame[i][0]);
    score[i][1] = checkValue(frame[i][1]);
    if (score[i][1]==="/"){score[i][1] = addSpare(score[i][0]);}
  }
  for (i=0; i<=2; i++){
    if (frame[9][i]==="X"){finalScore+=10;}
    if (frame[9][i]==="/"){finalScore+=score[9][i];}
    if (frame[9][i]!=="X" && frame[9][i]!=="/"){finalScore+=score[9][i];}
  }
  for (i=8; i>= 0; i--){
    if (frame[i][0]==="X"){
      finalScore+=10+score[i+1][0];
      if (score[i+1][1]===null){
        finalScore+=score[i+2][0];
      } else {
        finalScore+=score[i+1][1];
      }
    } else {
      if (frame[i][1]==="/"){
        finalScore+=10+score[i+1][0];
      } else {
        finalScore+=score[i][0]+score[i][1];
      }
    }
  }
  return finalScore;
}

function checkValue(pin){
  if (pin==="X"){return 10;}
  if (pin==="/"){return "/";}
  if (isNaN(pin)){return null;}
  return parseInt(pin);
}

function addSpare(pin){
  return 10 - pin;
}

// bowlingScore('11 11 11 11 11 11 11 11 11 11');
// bowlingScore('0 0 0 0 0 0 0 0 0 XXX');
bowlingScore('X X X X X X X X X XXX');
