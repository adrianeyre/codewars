function randomCase(x) {
  result = []; x = x.split("")
  for(i=0;i<x.length;i++){
    Math.floor(Math.random() * 2) == 1 ? result.push(x[i].toLowerCase()) : result.push(x[i].toUpperCase()) 
  }
  return result.join("");
}