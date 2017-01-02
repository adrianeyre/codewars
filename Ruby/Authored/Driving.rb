=begin

In the United Kingdom, the driving licence is the official document which
authorises its holder to operate various types of motor vehicle on highways and
some other roads to which the public have access. In England, Scotland and Wales
they are administered by the Driver and Vehicle Licensing Agency (DVLA) and in
Northern Ireland by the Driver & Vehicle Agency (DVA). A driving licence is
required in the UK by any person driving a vehicle on any highway or other road
defined in s.192 Road Traffic Act 1988[1] irrespective of ownership of the land
over which the road passes, thus including many which allow the public to pass
over private land; similar requirements apply in Northern Ireland under the Road
Traffic (Northern Ireland) Order 1981. (Source Wikipedia)

Driving
The UK driving number is made up from the personal details of the driver. The
individual letters and digits can be code using the below information

1–5: The first five characters of the surname (padded with 9s if less than 5
characters)

6: The decade digit from the year of birth (e.g. for 1987 it would be 8)

7–8: The month of birth (7th character incremented by 5 if driver is female i.e
 51–62 instead of 01–12)

9–10: The date within the month of birth

11: The year digit from the year of birth (e.g. for 1987 it would be 7)

12–13: The first two initials of the first names, padded with a 9 if no middle
name

14: Arbitrary digit – usually 9, but decremented to differentiate drivers with
the first 13 characters in common. We will always use 9

15–16: Two computer check digits. We will always use "AA"
Your task is to code a UK driving license number using an Array of data. The
Array will look like

data = ["John","James","Smith","01-Jan-2000","M"]
Where the elements are as follows

0 = Forename
1 = Middle Name (if any)
2 = Surname
3 = Date of Birth (UK format)
4 = M-Male or F-Female
You will need to output the full 16 digit driving license number.

Good luck and enjoy!

=end

# My Solution
def driver(data)
  result = ""
  require 'time'
  time = Time.parse(data[3])
  day,month,year = time.strftime("%d/%m/%y").split("/")
  result = data[2][0..4].upcase
  result += ("9" * (5-data[2].length)) if data[2].length < 5
  result += year[0]
  data[4] == "M" ? result += month.to_s : result += (month[0].to_i + 5).to_s + month[1]
  result += day.to_s + year[1].to_s + data[0][0]
  result += data[1] == "" ? "9" : data[1][0]
  result += "9AA"
  result
end


# Random Tests
names = ["Eugene","Kade","Johanna","Andrew","Maddison","Marin","Wayne","Nick","Mccullough","Sandoval","Hurst",
"Gibbs","Benson","Holland","Crane","Lee","Wilson","Clara","Zhang","Cummings","Richmond","Kadyn","Stevens","Laila",
"Alan","Angel","Yadiel","Saul","Jovan","Faith","King","Milagros","Scott","Brennan","Ashanti","Dayton","Lindsey",
"Gilbert","Jamya","Sam","Madeleine","Levine","Luna","Addison","Bethany","Zoie","Landyn","Mireya","Mcgee","Kirk",
"Kirsten","Kamren","Vega","Stephany","Brooks","Issac","Hays","Jasmin","Benitez","Alfonso","Shepherd","Jenkins"]

(0..99).each do |rtest|
  day = rand(10..28)
  month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  year = rand(1930..2000)
  d = day.to_s + "-" + month[rand(12)] + "-" + year.to_s
  rand(2) == 0 ? g = "M" : g = "F"

  data = [names[rand(names.length)],names[rand(names.length)],names[rand(names.length)],d,g]
  solution = driver(data)

  Test.it("should work for random tests") do
    Test.assert_equals(driver(data), solution)
  end
end
