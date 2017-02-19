function Mastermind() {
  this.colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"];
  this.amount = {"Red": 0, "Blue": 0, "Green": 0, "Orange": 0, "Purple": 0, "Yellow": 0, "": 0};
  this.result = [];
  this.goes = 0;
  for (i = 1; i < 5; i++) {
    this.result.push(this.colours[Math.floor(Math.random() * this.colours.length)]);
  }
  for (i = 0; i < 4; i++) {
    this.amount[this.result[i]]+=1;
  }
}

Mastermind.prototype.check = function(attempt){
  if (attempt.length !== 4) {return "Error";}
  this.goes += 1;
  if (this.goes > 60) {return "Error";}
  if (attempt.join(',')=== this.result.join(',')){return "WON!";}
  var amount = {"Red": 0, "Blue": 0, "Green": 0, "Orange": 0, "Purple": 0, "Yellow": 0, "": 0};
  var self = this;
  Object.keys(this.amount).forEach(function (key) {
    amount[key] = self.amount[key];
  });
  var result = [];
  var new_attempt = [];
  for (i = 0; i < 4; i++) {
    new_attempt.push(attempt[i]);
  }
  for (i = 0; i < 4; i++) {
    if (!this.colours.includes(attempt[i])){return "Error";}
    if (attempt[i]===self.result[i]){
      result.push("Black");
      amount[attempt[i]] -= 1;
      new_attempt[i] = "";
    }
  }

  for (i = 0; i < 4; i++) {
    if (new_attempt[i] !== ""){
      if (amount[new_attempt[i]] > 0){
        result.push("White");
        amount[new_attempt[i]] -= 1;
      }
    }
  }
  return shuffle(result);
};

function shuffle(array) {
    var counter = array.length;
    while (counter > 0) {
        var index = Math.floor(Math.random() * counter);
        counter--;
        var temp = array[counter];
        array[counter] = array[index];
        array[index] = temp;
    }
    return array;
}

function mastermind(game){
  var colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"];
  var amount = {"Red": 0, "Blue": 0, "Green": 0, "Orange": 0, "Purple": 0, "Yellow": 0, "": 0};
  var guess = [];
  for (b = 0; b < 6; b++) {
    colour = colours[b];
    answer = game.check([colour,colour,colour,colour]);
    amount[colour] = answer.length;
    for (a = 0; a < answer.length; a++) {
      guess.push(colour);
    }
  }

  var answer = false;
  while (answer !== "WON!" && answer != "Error"){
    answer = game.check(shuffle(guess));
  }
}

var game = new Mastermind();
mastermind(game);
