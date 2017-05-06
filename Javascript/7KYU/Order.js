function orderWord(s){
  return s == "" || s == null ? "Invalid String!" : s.split("").sort().join("");
}