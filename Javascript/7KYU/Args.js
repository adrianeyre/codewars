function objectType(obj) {
  console.log(obj);
  if (arguments.length == 0){obj=null}
  return Object.prototype.toString.call(obj);
}