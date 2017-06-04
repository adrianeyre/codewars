function isAlt(word) {
  on = 2
  for(i=0;i<word.length;i++){
    if(word[i].match(/[aeiou]/)){
      if(on===false){return false;}
      on = false
    } else {
      if(on===true){return false;}
      on = true
    }
  }
  return true;
}