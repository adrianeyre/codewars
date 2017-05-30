function stairs(n){
  result = [];
  for(i=1;i<=n;i++){
    temp = [];
    for(x=0;x<(n*2)-(i*2);x++){temp.push(" ");}
    for(x=1;x<=i;x++){temp.push(x%10);}
    for(x=i;x>=1;x--){temp.push(x%10);}
    result.push(temp.join(" "));
  }
  return result.join("\n");
}