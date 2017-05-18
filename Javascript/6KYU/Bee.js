howManyBees = function(hive) {
  if(hive===null || hive===[]){return 0;}
  result = 0;
  for(x=0;x<hive.length;x++){
    for(y=0;y<hive[0].length;y++){
      if (x>1 && hive[x][y]=="b"){if (hive[x-1][y]=="e" && hive[x-2][y]=="e"){result++;}}
      if (x<hive.length-2 && hive[x][y]=="b"){if (hive[x+1][y]=="e" && hive[x+2][y]=="e"){result++;}}
      if (y>1 && hive[x][y]=="b"){if (hive[x][y-1]=="e" && hive[x][y-2]=="e"){result++;}}
      if (y<hive[x].length-2 && hive[x][y]=="b"){if (hive[x][y+1]=="e" && hive[x][y+2]=="e"){result++;}}
    }
  }
  return result;
}