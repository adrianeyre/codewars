function caseUnification(s) {
  t = s.match(/[A-Z]/g, "")
  if(t!==null){n=t.length}else{n=0}
  if (s.length-n<n){return s.toUpperCase();}else{return s.toLowerCase();}
}