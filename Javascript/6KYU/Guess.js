Guesser.prototype.getNumber = function() {
  bot = 1; top = 1000;
  for(myi=0;myi<10;myi++){
    num =Math.round((top-bot)/2) + bot
    a = this.guess(num);
    if(a==="Too low!"){bot = num;}
    if(a==="Too high!"){top = num;}
    if(a==="Correct!"){return num;}
  }
  return num;
}