function holaDora (val) {
  val.push("");
  result = 0;
  for(x=0; x<val.length; x++){
    if ((val[x]=="x" && val[x+1].match(/[AEIOUaeiou]/)) || (val[x].match(/[AEIOUaeiou]/) && val[x+1]=="x")){return "Swiper, no swiping!"}
    if (val[x].match(/[AEIOUaeiou]/)){result = 1;}
  }
  if (result==1){return "Keep your eyes peel Dora!";}
  return "You're safe Dora!"
}