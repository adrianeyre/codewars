function rowSumOddNumbers(n) {
  return Math.pow(n, 3);
}

function rowSumOddNumbers(n) {
  s = x=n*n-(n-1);
  f = s+((n-1)*2);
  result = 0;
  for(x=s;x<=f;x+=2){result += x;}
  return result;
}
