import Foundation

func drive(_ drinks: [[Double]], _ finished: String, _ drive_time: String) -> [Any] {
    var total_units = 0.0
    for drink in drinks {total_units += drink[0] * drink[1] / 1000}

    let fft = "2016-01-01 " + finished
    let ddt = "2016-01-01 " + drive_time

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
    let fftt = dateFormatter.date(from: fft)!
    var ddtt = dateFormatter.date(from: ddt)!

    if fftt > ddtt {ddtt += 86400}
    let time_when_can_drive = fftt + (total_units * 3600)

    return [round(100 * total_units) / 100 , time_when_can_drive < ddtt]
}

// alcohol = [[5.2,568],[12.0,175]];
// Test.assertDeepEquals(drive(alcohol, "16:00", "23:00"), [5.05, true], "Expected '[5.05, true]'");
//
// alcohol = [[5.2,568],[5.2,568],[5.2,568],[12.0,175],[12.0,175],[12.0,175]];
// Test.assertDeepEquals(drive(alcohol, "23:00", "08:15"), [15.16, false], "Expected '[15.16, false]'")
//
// alcohol = [[15.5,568]];
// Test.assertDeepEquals(drive(alcohol, "23:00", "06:45"), [8.8, false], "Expected '[8.8, false]'");
//
// alcohol = [[10.0,100]];
// Test.assertDeepEquals(drive(alcohol, "20:00", "21:00"), [1.0, false], "Expected '[1.0, false]'");
//
// alcohol = [[10.0,100]];
// Test.assertDeepEquals(drive(alcohol, "20:00", "21:01"), [1.0, true], "Expected '[1.0, true]'");
//
// function drive_tester(drinks2, finished2, drive_time2) {
//   total_units2 = 0;
//   for(var gg=0; gg < drinks2.length;gg++){
//     total_units2 += drinks2[gg][0].toPrecision() * drinks2[gg][1] / 1000;
//   }
//   fda2 = finished2.split(":");
//   finished2 = new Date(1990,00,01,fda2[0],fda2[1]);
//   dtt2 = drive_time2.split(":");
//   drive_time2 = new Date(1990,00,01,dtt2[0],dtt2[1]);
//   if (finished2 > drive_time2){drive_time2.setDate(drive_time2.getDate() + 1);}
//   var time_when_can_drive2 = new Date(finished2.getTime() + (total_units2*60*60*1000));
//   return [Number(total_units2.toFixed(2)),time_when_can_drive2 < drive_time2];
// }
//
// for (testsi = 1; testsi <= 250; testsi++) {
//   var drinks_li = [];
//   for (dr = 1; dr <= Math.floor(Math.random() * 10)+1; dr++) {
//     drinks_li.push([parseFloat((Math.random() * 20).toFixed(2)), Math.floor(Math.random() * 500)+75]);
//   }
//   ft = String(Math.floor(Math.random() * 12)+10) + ":" + String(Math.floor(Math.random() * 49)+10);
//   dt = String(Math.floor(Math.random() * 12)+10) + ":" + String(Math.floor(Math.random() * 49)+10);
//   solution = drive_tester(drinks_li, ft, dt);
//   Test.assertDeepEquals(drive(drinks_li, ft, dt), solution, "Expected '"+solution+"'");
// }
