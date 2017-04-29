function fish(shoal){
  level = 1;
  total = 0;
  fishes = shoal.split("").sort();
  fishes.forEach(function(fish) {
    if (parseInt(fish) <= level){
      total += (1*parseInt(fish));
      if (total >= (level*4)){
        total -= (level*4)
        level++;
      }
    }
  });
  return total;
}
