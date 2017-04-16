function box(coords) {
  var cornors={nw:[0,0], se:[0,0]};
  for (x=0; x<coords.length; x++){
    if (coords[x][0] > cornors['nw'][0]) {cornors['nw'][0] = coords[x][0]};
    if (coords[x][0] < cornors['se'][0]) {cornors['se'][0] = coords[x][0]};
    if (coords[x][1] < cornors['nw'][1]) {cornors['nw'][1] = coords[x][1]};
    if (coords[x][1] > cornors['se'][1]) {cornors['se'][1] = coords[x][1]};
  }
  return cornors;
}