function tenGreenBottles(n) {
  result = [];
  numbers = ["no","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"];
  for (i=n;i>=2;i--){
    if (i!==1){p = "s";}else{p = "";}
    for(a=0;a<=1;a++){result.push(numbers[i]+" green bottle" + p + " hanging on the wall,\n")};
    result.push("And if one green bottle should accidentally fall,\n");
    if (i-1!==1){p = "s";}else{p = "";}
    result.push("There'll be "+numbers[i-1].toLowerCase()+" green bottle" + p + "  hanging on the wall.\n\n");
  }
  result.push("One green bottle hanging on the wall,\nOne green bottle hanging on the wall,\nIf that one green bottle should accidentally fall,\nThere'll be no green bottles hanging on the wall.\n");
  return result.join("");
}


console.log(tenGreenBottles(10));


// Expected: 'Two green bottles hanging on the wall,\nTwo green bottles hanging on the wall,\nAnd if one green bottle should accidentally fall,\nThere\'ll be one green bottle hanging on the wall.\n\nOne green bottle hanging on the wall,\nOne green bottle hanging on the wall,\nIf that one green bottle should accidentally fall,\nThere\'ll be no green bottles hanging on the wall.\n'
// instead : 'Two green bottles hanging on the wall,\nTwo green bottles hanging on the wall,\nAnd if one green bottle should accidentally fall,\nThere\'ll be one green bottle hanging on the wall.\n\nOne green bottle hanging on the wall,\nOne green bottle hanging on the wall,\nIf that one green bottle should accidentally fall,\nThere\'ll be no green bottles hanging on the wall.\n'
