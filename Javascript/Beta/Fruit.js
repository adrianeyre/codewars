function mixFruit (arr) {
  total = 0;
  for(i=0;i<arr.length;i++){
    if (["banana","orange","apple","lemon","grapes"].includes(arr[i].toLowerCase())){
      total += 5;
    } else if (["avocado","strawberry","mango"].includes(arr[i].toLowerCase())){
      total += 7;
    } else {
      total += 9;
    }
  }
  return Math.round(total/arr.length);
}