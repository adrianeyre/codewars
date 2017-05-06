var kookaCounter = function(laughing) {
  result = 0;
  updown = null;
  for(i=0;i<laughing.length;i+=2){
    if (laughing[i] === laughing[i].toUpperCase() && updown !== true){
      updown=true; result++;
    } else if (laughing[i] === laughing[i].toLowerCase() && updown !== false){
      updown=false; result++;
    }
  }
  return result;
}