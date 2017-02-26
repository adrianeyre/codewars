function fish(arr){
  if(arr.length===1){return "no catch";}
  var result = {};
  for(var i = 0; i< arr.length; i++) {result[arr[i]] = result[arr[i]] ? result[arr[i]]+1 : 1;}
  for(var key in result) {if(result[key]===1){return key;}}
  return "no catch";
}

x = fish(["red herring","blue herring","yellow herring"])

console.log(x)
