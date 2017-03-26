function drive(drinks, finished, drive_time) {
  total_units = 0;
  for(var i=0; i< drinks.length;i++){
    total_units += drinks[i][0].toPrecision() * drinks[i][1] / 1000;
  }
  fda = finished.split(":");
  finished = new Date(1990,00,01,fda[0],fda[1]);
  dtt = drive_time.split(":");
  drive_time = new Date(1990,00,01,dtt[0],dtt[1]);
  if (finished > drive_time){drive_time.setDate(drive_time.getDate() + 1);}
  var time_when_can_drive = new Date(finished.getTime() + (total_units*60*60*1000));
  return [Number(total_units.toFixed(2)),time_when_can_drive < drive_time];
}

for (tests = 1; tests <= 250; tests++) {
  var drinks_li = [];
  for (dr = 1; dr <= Math.floor(Math.random() * 20)+1; dr++) {
    drinks_li.push([parseFloat((Math.random() * 20).toFixed(2)), Math.floor(Math.random() * 500)+75]);
  }
  ft = String(Math.floor(Math.random() * 12)+10) + ":" + String(Math.floor(Math.random() * 49)+10);
  dt = String(Math.floor(Math.random() * 12)+10) + ":" + String(Math.floor(Math.random() * 49)+10);
  solution = drive(drinks_li, ft, dt);
  console.log(solution);
}
