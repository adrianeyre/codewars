function flattenAndSort(array) {
  return [].concat.apply([], array).sort(function(a,b){return a - b});
}