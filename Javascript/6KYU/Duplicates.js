function reverseCase(string) {
  string = string.split("");
  result = "";
  for(i=0;i<string.length;i++){
    if(string[i]!==string[i+1] && string[i]!==string[i-1]){
      result += string[i]
    }else{
      result += string[i]===string[i].toLowerCase() ? string[i].toUpperCase() : string[i].toLowerCase()
    }
  }
  return result;
}