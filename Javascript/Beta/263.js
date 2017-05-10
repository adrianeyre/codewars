function evenNumbersBeforeFixed(sequence, fixedElement) {
  num = 0;
  for(i=0;i<sequence.length;i++){
    if(sequence[i]===fixedElement){return num;}
    if(sequence[i]%2===0){num++;}
  }
  return -1;
}