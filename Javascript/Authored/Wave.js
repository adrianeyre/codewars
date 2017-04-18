function wave(){
  result = [];
  str = str.split("");
  for(b=0;b<str.length;b++){
    if (str[b] !== " "){
      temp = [];
      for(i=0;i<str.length;i++){
        if (i===b){temp.push(str[i].toUpperCase();}else{temp.push(str[i]);}
      }
      result.push(temp.join(""));
    }
  }
  return result
}

letters = "abcd efghi jklmno pqrstu vwxyz".split("");
for(cwtests=0;cwtests<96;cwtests++){
  word = []
  for(wordnum=0;wordnum<Math.floor(Math.random() * 100);wordnum++){
    word.push(letters[Math.floor(Math.random() * (letters.length - 1))]);
  }
  word = word.join("");
  result = wave2(word)
  Test.assertDeepEquals(wave(word), result, "Should return: '"+result+"'");
}
