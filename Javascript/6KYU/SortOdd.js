function sortArray(array) {
  temp = []
  for(i=0;i<array.length;i++){if(array[i]%2!==0){temp.push(array[i]);}}
  temp = temp.sort((a,b) => a-b); on = 0
  for(i=0;i<array.length;i++){if(array[i]%2!==0){array[i]=temp[on];on++;}}
  return array;
}