function wdm(talk){
  result = [];
  talk = talk.split(' ');
  for (a=0;a<talk.length;a++){
    if (talk[a] != "puke" && talk[a] != "hiccup" && talk[a] != "") {result.push(talk[a])}
  }
  return result.join(" ");
}