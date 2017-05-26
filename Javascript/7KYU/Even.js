function evenChars(string) {
  if(string.length<2 || string.length>100){return "invalid string";}
  result = []; 
  for(i=1;i<string.length;i+=2){result.push(string[i]);}
  return result;
}