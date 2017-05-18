names = [];

function handOutGift(name) {
  if (names.indexOf(name) > -1) {throw "ERROR";}
  names.push(name);
}