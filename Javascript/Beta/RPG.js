function upgrade(hash, amount){
  num = Math.floor(amount/100);
  hash["atk"] += num;
  hash["def"] += num;
  hash["evasion"] += num;
  return hash;
}