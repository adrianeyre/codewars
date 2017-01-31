// My Solution
function driver(data) {
  var result = ""
  var dataArray = new Array();
  var months = {'Jan' : '01','Feb' : '02', 'Mar' : '03', 'Apr' : '04', 'May' : '05', 'Jun' : '06', 'Jul' : '07', 'Aug' : '08', 'Sep' : '09', 'Oct' : '10', 'Nov' : '11', 'Dec' : '12'};
  dateArray = data[3].split('-');
  var month = months[dateArray[1].substring(0,3)];

  // 1-5
  data[2] += "99999"
  result += data[2].substring(0,5)

  // 6
  result += dateArray[2][2];

  // 7-8
  if (data[4] === "M") { result += month} else { result +=  String(parseInt(month) + 50)}

  // 9-10
  result += dateArray[0];

  // 11
  result += dateArray[2][3];

  // 12-13
  result += data[0][0]
  if (data[1] === "") {result+="9"} else {result+=data[1][0]};

  // 14-16
  result += "9AA";

  return result.toUpperCase();
}

/*
Codewars Random Tests

function driver2(data) {
  var result = ""
  var dataArray = new Array();
  var months = {'Jan' : '01','Feb' : '02', 'Mar' : '03', 'Apr' : '04', 'May' : '05', 'Jun' : '06', 'Jul' : '07', 'Aug' : '08', 'Sep' : '09', 'Oct' : '10', 'Nov' : '11', 'Dec' : '12'};
  dateArray = data[3].split('-');
  var month = months[dateArray[1].substring(0,3)];
  data[2] += "99999"
  result += data[2].substring(0,5)
  result += dateArray[2][2];
  if (data[4] === "M") { result += month} else { result +=  String(parseInt(month) + 50)}
  result += dateArray[0];
  result += dateArray[2][3];
  result += data[0][0]
  if (data[1] === "") {result+="9"} else {result+=data[1][0]};
  result += "9AA";
  return result.toUpperCase();
}

names = ["Eugene","Kade","Johanna","Andrew","Maddison","Marin","Wayne","Nick","Mccullough","Sandoval","Hurst",
"Gibbs","Benson","Holland","Crane","Lee","Wilson","Clara","Zhang","Cummings","Richmond","Kadyn","Stevens","Laila",
"Alan","Angel","Yadiel","Saul","Jovan","Faith","King","Milagros","Scott","Brennan","Ashanti","Dayton","Lindsey",
"Gilbert","Jamya","Sam","Madeleine","Levine","Luna","Addison","Bethany","Zoie","Landyn","Mireya","Mcgee","Kirk",
"Kirsten","Kamren","Vega","Stephany","Brooks","Issac","Hays","Jasmin","Benitez","Alfonso","Shepherd","Jenkins"]

for (i = 0; i < 100; i++) {
  var day = Math.floor(Math.random() * 17 + 10);
  var month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
  var m = Math.floor(Math.random() * 12);
  var year = Math.floor(Math.random() * (2000 - 1930 + 1)) + 1930;
  var d = day.toString() + "-" + month[m] + "-" + year.toString()
  if (Math.floor(Math.random() * 2) === 0) {g = "M"} else {g = "F"};

  var data = [names[Math.floor(Math.random() * names.length)], names[Math.floor(Math.random() * names.length)],names[Math.floor(Math.random() * names.length)],d,g];
  var solution = driver2(data);
  Test.expect(driver(data) == solution);
}
*/
