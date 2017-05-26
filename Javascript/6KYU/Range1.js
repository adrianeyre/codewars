function range(...n){
  result = []
  stop = n[n.length-1]
  n.length > 1 ? start = n[0] : start = 1
  n.length > 2 ? step = n[1] : step = 1
  for(i=start;i<=stop;i+=step){result.push(i);}
  return result;
}