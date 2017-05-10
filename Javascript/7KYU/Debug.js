function multi(arr) {
  return arr.reduce(function(a,b){return a*b;});
}
function add(arr) {
  return arr.reduce(function(a,b){return a+b;});
}
function reverse(str) {
  return str.split('').reverse().join('');
}