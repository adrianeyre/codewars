function mergeArrays(arr1, arr2) {
  result = [];
  for(i=0;i<arr1.length;i++){result.push(arr1[i])}
  for(i=0;i<arr2.length;i++){if(!result.includes(arr2[i])){result.push(arr2[i])}}
  return result.sort((a,b) => a-b);
}