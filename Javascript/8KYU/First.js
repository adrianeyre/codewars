function firstNonConsecutive (arr) {
  for (x=1; x<arr.length;x++){
    if (arr[x] !== arr[x-1] + 1){return arr[x];}
  }
  return null;
}