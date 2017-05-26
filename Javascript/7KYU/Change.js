function changeCount( change ){
  result = 0;
  change=change.split(" ");
  for(i=0;i<change.length;i++){
    result += CHANGE[change[i]];
  }
  return "$"+result.toFixed(2);
}