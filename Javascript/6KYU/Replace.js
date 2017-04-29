function alphabetPosition(text) {
  result = [];
  for(i=0;i<text.length;i++){
    val = text[i].toLowerCase().charCodeAt(0);
    if (val > 96 && val < 123){result.push(val-96)};
  }
  return result.join(" ");
}