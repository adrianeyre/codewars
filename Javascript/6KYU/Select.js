function selReverse(array, length) {
  if(length===0){return array}
  result = [];
  for(x=0;x<array.length;x+=length){for(y=x+length-1;y>=x;y--){if (array[y]!==undefined){result.push(array[y]);}}}
  return result;
}