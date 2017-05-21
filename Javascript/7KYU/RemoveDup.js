function removeDuplication(arr){
  result = [];
  for(i=0;i<arr.length;i++){
    count = 0;
    for(a=0;a<arr.length;a++){if(arr[i]===arr[a] && arr[a] !== undefined){count++;}}
    if(count===1){result.push(arr[i]);}
  }
  return result;
}