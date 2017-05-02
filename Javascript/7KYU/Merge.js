function mergeArrays(a, b) {
  result = [];
  if(a.length>b.length){num=a.length}else{num=b.length}
  for(i=0;i<num;i++){
    if(a[i]!==undefined){result.push(a[i])}
    if(b[i]!==undefined){result.push(b[i])}
  }
  return result;
}