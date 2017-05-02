function x(n){
  if(n===1){return "\n■\n";}
  result = "";
  // Top
  for(i=0;i<(n-1)/2;i++){
    for(g=0;g<i;g++){result+="□";}
    result += "■";
    for(g=0;g<n-2-(i*2);g++){result+="□";}
    result += "■";
    for(g=0;g<i;g++){result+="□";}
    result += "\n";
  }
  // Middle
  for(g=0;g<(n-1)/2;g++){result+="□";}
  result += "■";
  for(g=0;g<(n-1)/2;g++){result+="□";}
  result += "\n";
  // Bottom
  for(i=(n-1)/2-1;i>=0;i--){
    for(g=0;g<i;g++){result+="□";}
    result += "■";
    for(g=0;g<n-2-(i*2);g++){result+="□";}
    result += "■";
    for(g=0;g<i;g++){result+="□";}
    if (i!==0){result += "\n";}
  }
  return result;
}
