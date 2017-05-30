var noIfsNoButs = function (a,b) {
  switch(true) {
    case (a==b): return a.toString() + " is equal to " + b.toString(); break;
    case (a>b): return a.toString() + " is greater than " + b.toString(); break;
    case (a<b): return a.toString() + " is smaller than " + b.toString(); break;
  }
}