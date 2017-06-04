function splitter(str){
  result = str[0] || "";
  for(i=1;i<str.length;i++){
    if(str[i].match(/[A-Z]/) && !str[i-1].match(/[A-Z]/) && str[i-1] !== " "){result += " "}
    result += str[i]
  }
  return result
}