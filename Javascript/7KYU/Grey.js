var color2grey = function (image) {
  result = [];
  for(a=0;a<image.length;a++){
    temp = [];
    for(i=0;i<image[a].length;i++){
      num = 0;
      for(x=0;x<3;x++){num += image[a][i][x]}
      grey = Math.round(num/3)
      temp.push([grey,grey,grey])
    }
    result.push(temp)
  }
  return result;
}