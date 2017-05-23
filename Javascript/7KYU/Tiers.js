function createArrayOfTiers(num) {
  result = []; num = num.toString();
  for(i=1;i<=num.length;i++){result.push(num.substring(0,i));}
  return result;
}