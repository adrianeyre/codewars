function censorThis(text, forbiddenWords) {
  text = text.split(" ");
  for(i=0;i<text.length;i++){
    if(forbiddenWords.indexOf(text[i].toLowerCase()) > -1) {
      text[i] = "*".repeat(text[i].length);
    }
  }
  return text.join(" ");
}