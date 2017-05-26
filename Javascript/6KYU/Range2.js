function range(...n) {
  result = [];
  step = 1;
  stop = n[n.length-1]
  n.length > 1 ? start = n[0] : start = 0
  if (n.length > 2){ step = n[2], stop = n[1];}
  if(step===0){return [start, start, start]}
  for(i=start;i<stop;i+=step){result.push(i);}
  return result;
}