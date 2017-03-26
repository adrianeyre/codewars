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
