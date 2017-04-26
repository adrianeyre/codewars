function findLongest(array){
  result = 0; len = 0;
  for(x=0;x<array.length;x++){if (array[x].toString().length > len){result=array[x];len=array[x].toString().length}}
  return result;
}