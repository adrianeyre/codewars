function typist(s){
  n=0; s=s.split(""); lock = false;
  for(i=0;i<s.length;i++){
    n++
    if (s[i]===s[i].toUpperCase()){ 
      if (!lock){lock = !lock; n++;}
    } else {
      if (lock){lock = !lock; n++;}
    }
  }
  return n;
}