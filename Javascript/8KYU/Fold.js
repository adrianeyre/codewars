function foldTo(distance) {
  num = 0.0001; result = 0
  while(num < distance){ result++; num = num * 2;}
  return distance <= 0 ? null : result;
}