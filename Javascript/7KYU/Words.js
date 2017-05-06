function smallWordHelper(sentence){
  a = sentence.split(" ");
  result = [];
  for(i=0;i<a.length;i++){
    if(a[i].length < 4){
      result.push(a[i].toUpperCase())
    } else {
      result.push(a[i].replace(/[aeiou]/gi, ''));
    }
  }
  return result.join(" ");
}