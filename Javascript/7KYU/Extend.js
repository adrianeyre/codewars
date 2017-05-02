String.prototype.reverse = function(){
  result = "";
  for(i=this.length-1;i>=0;i--){result += this[i];}
  return result;
}