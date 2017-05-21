function findSum(n) {
  result = 0;
  for(i=3;i<=n;i++){
    if(i%3===0 || i%5===0){result += i;}
  }
  return result;
}