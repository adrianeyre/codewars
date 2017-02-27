function GuessWho (character){
  this.character = character;
  this.goes = 0;
  this.characteristic = [["Jean-Claude",["Male","Glasses","Brown eyes","Bald","White hair","Small mouth","Small nose"]],
                         ["Pierre",["Male","Mustache","Brown eyes","Brown hair","Big mouth","Small nose"]],
                         ["Jean",["Male","White hair","Big nose","Big mouth","Blue eyes"]],
                         ["Amelie",["Female","Hat","Brown hair","Small mouth","Long hair","Brown eyes","Small nose"]],
                         ["Mirabelle",["Female","Black hair","Earrings","Small mouth","Brown eyes","Big nose"]],
                         ["Isabelle",["Female","Blonde hair","Glasses","Hat","Small mouth","Small nose","Brown eyes"]],
                         ["Antonin",["Male","Brown eyes","Black hair","Small nose","Big mouth"]],
                         ["Bernard",["Male","Brown eyes","Brown hair","Small nose","Hat"]],
                         ["Owen",["Male","Blue eyes","Blonde hair","Small nose","Small mouth"]],
                         ["Dylan",["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Bald","Beard"]],
                         ["Herbert",["Male","Brown eyes","Blonde hair","Big nose","Small mouth","Bald"]],
                         ["Christine",["Female","Blue eyes","Blonde hair","Small nose","Small mouth","Long hair"]],
                         ["Luc",["Male","Brown eyes","White hair","Small nose","Small mouth","Glasses"]],
                         ["Cecilian",["Male","Brown eyes","Ginger hair","Small nose","Small mouth"]],
                         ["Lionel",["Male","Brown eyes","Brown hair","Big nose","Big mouth","Mustache"]],
                         ["Benoit",["Male","Brown eyes","Brown hair","Small mouth","Small nose","Mustache","Beard"]],
                         ["Robert",["Male","Blue eyes","Brown hair","Big nose","Big mouth"]],
                         ["Charline",["Female","Brown hair","White hair","Small nose","Big mouth"]],
                         ["Renaud",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Mustache"]],
                         ["Michel",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Beard"]],
                         ["Pierre-Louis",["Male","Blue eyes","Brown hair","Small nose","Small mouth","Bald","Glasses"]],
                         ["Etienne",["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Glasses"]],
                         ["Henri",["Male","Brown eyes","White hair","Small nose","Big mouth","Hat"]],
                         ["Damien",["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Hat"]]];
}

GuessWho.prototype.guess = function (guess){
  this.goes ++;
  for (myvari=0;myvari<this.characteristic.length;myvari++){
    if (this.characteristic[myvari][0] === this.character){character_index = myvari;break;}else{character_index = null;}
  }
  var character_guess = -1;
  for (myvari=0;myvari<this.characteristic.length;myvari++){if (guess === this.characteristic[myvari][0]){character_guess = myvari;}}
  if (character_guess !== -1){
    if (guess === this.character){return ["Correct! in "+this.goes.toString()+" turns"];}
    this.characteristic.splice(character_guess,1);
    return return_array(this.characteristic);
  }
  has_it = !this.characteristic[character_index][1].includes(guess);
  that = this;
  for (myvari=this.characteristic.length-1;myvari>=0;myvari--){
    if (this.characteristic[myvari][1].includes(guess) === has_it){this.characteristic.splice(myvari,1);}
  }
  return return_array(this.characteristic);
};

function return_array(characters){
  var return_array = [];
  for (myvaria=0;myvaria<characters.length;myvaria++){
    return_array.push(characters[myvaria][0]);
  }
  return return_array;
}

function GuessWhoGuesser (){
  this.char_options = ["Male","Female","Glasses","Brown eyes","Bald","White hair","Small mouth",
                       "Mustache","Brown hair","Big mouth","Small nose","Blue eyes","Hat","Long hair",
                       "Black hair","Earrings","Blonde hair","Ginger hair","Beard","Big nose"];
  this.characteristic = ["Jean-Claude","Pierre","Jean","Amelie",
                         "Mirabelle","Isabelle","Antonin","Bernard",
                         "Owen","Dylan","Herbert","Christine",
                         "Luc","Cecilian","Lionel","Benoit",
                         "Robert","Charline","Renaud","Michel",
                         "Pierre-Louis","Etienne","Henri","Damien"];
  this.guess_character = this.characteristic[Math.floor(Math.random() * this.characteristic.length)];
  this.game1 = new GuessWho2(this.guess_character);
  this.game2 = new GuessWho(this.guess_character);
}


GuessWhoGuesser.prototype.play = function (){
  var guess = [];
  var game_result = [];
  var game_result2 = [];
  for(myvar=0;myvar<=2;myvar++){
    if (game_result.length != 1){
      guess_it = this.char_options[Math.floor(Math.random() * (this.char_options.length - 1))];
      this.char_options.splice(this.char_options.indexOf(guess_it),1);
    } else {
      guess_it = game_result[0];
    }
    game_result = this.game1.guess(guess_it);
    game_answer = this.game2.guess(guess_it);
    Test.expect(game_answer=game_result,"Expected: " + game_result);
    if (guess_it === this.guess_character){break;}
  }
};

// for(rtests=0;rtests<=50;rtests++){
//   guesser = new GuessWhoGuesser();
//   guesser.play();
// }

// game = new GuessWho("Amelie");
// console.log(game.guess("Female")) //# ["Amelie", "Mirabelle", "Isabelle", "Christine", "Charline"]
// console.log(game.guess("Hat")) // ["Amelie", "Isabelle"]
// console.log(game.guess("Isabelle")) //# ["Amelie"]
// console.log(game.guess("Amelie")) //# ["Correct! in 4 turns"]
//
// game = new GuessWho("Herbert");
// console.log(game.guess("Female")) // # ["Jean-Claude", "Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Luc", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Pierre-Louis", "Etienne", "Henri", "Damien"]
// console.log(game.guess("Glasses")) // # ["Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Henri", "Damien"]
// console.log(game.guess("Blonde hair")) // # ["Owen", "Dylan", "Herbert", "Renaud", "Michel", "Damien"]
// console.log(game.guess("Bald")) // # ["Dylan", "Herbert"]
// console.log(game.guess("Herbert")) // # ["Correct! in 5 turns"]

// var game = new GuessWho("Amelie");
// result = ["Amelie", "Mirabelle", "Isabelle", "Christine", "Charline"];
// guess = game.guess("Female")
// Test.expect(guess==result);
//
// result = ["Amelie", "Isabelle"];
// guess = game.guess("Hat")
// Test.expect(guess==result);
//
// result = ["Amelie"];
// guess = game.guess("Isabelle")
// Test.expect(guess==result);
//
// result = ["Correct! in 4 turns"];
// guess = game.guess("Amelie")
// Test.expect(guess==result);
//
// var game = new GuessWho("Herbert");
// result = ["Jean-Claude", "Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Luc", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Pierre-Louis", "Etienne", "Henri", "Damien"];
// guess = game.guess("Female")
// Test.expect(guess==result);
//
// result = ["Pierre", "Jean", "Antonin", "Bernard", "Owen", "Dylan", "Herbert", "Cecilian", "Lionel", "Benoit", "Robert", "Renaud", "Michel", "Henri", "Damien"];
// guess = game.guess("Glasses")
// Test.expect(guess==result);
//
// result = ["Owen", "Dylan", "Herbert", "Renaud", "Michel", "Damien"];
// guess = game.guess("Blonde hair")
// Test.expect(guess==result);
//
// result = ["Dylan", "Herbert"];
// guess = game.guess("Bald")
// Test.expect(guess==result);
//
// result = ["Correct! in 5 turns"];
// guess = game.guess("Herbert")
// Test.expect(guess==result);
