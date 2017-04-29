function getCard() {
  result = [];
  letters = ['B','I','N','G','O'];
  times = [5,5,4,5,5];
  for(a=0;a<5;a++){
    temp = [];
    for(b=0;b<times[a];b++){
      x = 0; done = false;
      while (!done){
        x = Math.floor(Math.random()*15)+1;
        x = (a*15)+x;
        if (!temp.includes(x)){temp.push(x);done = true;}
      }
    }
    for(b=0;b<temp.length;b++){
      result.push(letters[a]+String(temp[b]));
    }
  }
  return result;
}