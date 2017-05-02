function hiddenWord(num) {
  key = {"6":"a", "1":"b", "7":"d", "4":"e", "3":"i", "2":"l", "9":"m", "8":"n", "0":"o", "5":"t"};
  word = num.toString().split("");
  result = "";
  for(i=0;i<word.length;i++){result += key[word[i]];}
  return result;
}