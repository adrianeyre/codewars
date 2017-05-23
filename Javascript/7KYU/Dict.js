function createDict(keys, values){
  result = {};
  for(i=0;i<keys.length;i++){result[keys[i]] = values[i]!==undefined ? values[i] : null}
  return result;
}