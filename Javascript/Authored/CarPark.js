function escape(carpark){
  result = [];
  level = 0; space = 0;
  for(i=0;i<carpark.length;i++){
    if(carpark[i].indexOf(2)>-1){level = i; space = carpark[i].indexOf(2);}
  }

  do {
    if(level===carpark.length-1){
      if(space !== carpark[0].length - 1){
        result.push("R"+(carpark[0].length - space - 1).toString());
      }
      space = carpark[0].length - 1;
    } else {
      if(carpark[level][space] === 1){
        count = 0;
        while(carpark[level][space] === 1 && level != carpark.length){
          level ++; count ++;
        }
        result.push("D" + count.toString())
      } else {
        pos = carpark[level].indexOf(1);
        d = pos < space ? "L" : "R"
        result.push(d + Math.abs(pos-space).toString());
        space = pos;
      }
    }
    if (space === carpark[0].length - 1 && level === carpark.length - 1){break;}
  }
  while (true);
  return result;
}

function carparkmaker(){
  spaces = Math.floor(Math.random() * 200) + 2;
  levels = Math.floor(Math.random() * 200) + 1;
  carpark = [];
  for(l=0;l<levels;l++){
    temp = [];
    for(s=0;s<spaces;s++){
      temp.push(0);
    }
    carpark.push(temp);
  }
  for(l=0;l<levels-1;l++){
    carpark[l][Math.floor(Math.random() * spaces)] = 1;
  }
  done = false;
  while(!done){
    s = Math.floor(Math.random() * spaces);
    l = Math.floor(Math.random() * levels);
    if(carpark[l][s] === 0){
      carpark[l][s] = 2;
      done = true;
    }
  }
  return carpark;
}
