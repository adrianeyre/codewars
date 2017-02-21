function bowlingPins(arr){
  result = "";
  line = [[],[],[],[]];
  for (i=7;i<=10;i++){if (arr.includes(i)){line[0].push(" ");}else{line[0].push("I");}}
  result = line[0].join(" ") + "\n";
  for (i=4;i<=6;i++){if (arr.includes(i)){line[1].push(" ");}else{line[1].push("I");}}
  result += " " + line[1].join(" ") + " \n";
  for (i=2;i<=3;i++){if (arr.includes(i)){line[2].push(" ");}else{line[2].push("I");}}
  result += "  " + line[2].join(" ") + "  \n";
  if (arr.includes(1)){line[3].push(" ");}else{line[3].push("I");}
  result += "   " + line[3].join(" ") + "   ";
  return result;
}
