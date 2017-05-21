function digitSum (str) {
  while(str.length > 1){
    str = str.split("")
    temp = 0;
    for(i=0;i<str.length;i++){
      temp += parseInt(str[i]);
    }
    str = temp.toString();
  }
  return str;
}