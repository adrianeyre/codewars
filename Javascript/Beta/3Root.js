function perfectRoots(n){
  for(i=0;i<3;i++){n = Math.sqrt(n);}
  return n % 1 === 0
}