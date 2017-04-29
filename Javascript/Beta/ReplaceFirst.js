function surviveFirst(str) {
  result = str[0];
  for(i=1;i<str.length;i++){result+="*"}
  return result;
}