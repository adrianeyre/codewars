function count (string) {  
  result = {};
  for(i=0;i<string.length;i++){
    if (result[string[i]]==undefined){
      result[string[i]] = 1;
    } else {
      result[string[i]] += 1;
    }
  }
  return result;
}