function differentDigitsNumberSearch(arr) {
  for (i=0;i<arr.length;i++){
    t = arr[i].toString()
    isit = true
    for (x=0;x<t.length;x++){
      if (t.match(new RegExp(t[x], "g")).length > 1){isit = false}
    }
    if (isit){return parseInt(t);}
  }
  return -1;
}