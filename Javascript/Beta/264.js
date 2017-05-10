function compareIntegers(a, b) {
  if(a===b){return "equal";}
  if(a.length>b.length){return "greater";}
  if(a.length<b.length){return "less";}
  if(a>b){return "greater";}
  return "less"; 
}