function bulk(arr) {
  p = 0; c = 0;
  if (arr!==[]){
    for(i=0;i<arr.length;i++){
      items = arr[i].split(",")
      for(item=0;item<items.length;item++){
        unit = items[item].split("g ")
        protein = (parseInt(unit[0])/100) * food[unit[1]][0]
        carbohydrate  = (parseInt(unit[0])/100) * food[unit[1]][1]
        fat = (parseInt(unit[0])/100) * food[unit[1]][2]
        p += protein
        c += (protein * 4) + (carbohydrate * 4) + (fat * 9)
      }
    }
  }
  return "Total proteins: "+p.toString()+" grams, Total calories: "+c.toString();
}