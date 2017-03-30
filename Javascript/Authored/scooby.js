function scoobydoo(villian, villians) {
  villian = villian.toLowerCase();

  // Step 1 - Rotate Right by 5
  villian = rotate(villian.split(""),5, true).join("");

  // Step 2 - Reverse
  villian = villian.split("").reverse().join("");

  // Step 3 - Change even letters by 5
  villian = villian.split("");
  for (var i = 0; i < villian.length; i++) {
    if ((i+1) % 2 === 0){villian[i] = shift(villian[i],5);}
  }
  villian = villian.join("");

  for (i = 0; i < villians.length; i++) {
    if (villians[i].split(" ").join("").toLowerCase() === villian){return villians[i];}
  }
  return "";
}
