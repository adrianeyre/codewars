function cubeOdd(arr) {
  result = 0;
  for(i=0;i<arr.length;i++){
    if(isNaN(arr[i])){return undefined;}
    if(arr[i]%2!==0){result += Math.pow(arr[i], 3);}
  }
  return result;
}