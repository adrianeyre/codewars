function onlyOne() {
  result = {true:0, false:0}
  for(i=0;i<arguments.length;i++) {result[arguments[i]]++;}
  return (result[true]===1 && result[false]!==0)
}