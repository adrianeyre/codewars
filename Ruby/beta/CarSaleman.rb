=begin

These salesmen talk too much!

Write a function that parses a car salesman's pitch and returns the total price
of the vehicle.

As the salesman talks, eventually there will be three numbers mentioned. The
down payment, the monthly fee, and the total number of months.

The monthly payment is always less than the down payment and both numbers will
be preceeded by a dollar sign.

The number of months will not be preceded by a dollar sign, and will be less
than 10 years.

=end

# My Solution
def car_price (salespitch)
  salespitch.gsub!(",","")
  temp = salespitch.scan /([$]\d{1,})/
  monthly, downpayment = temp.flatten.map {|i| i[1..-1].to_i}.sort

  temp = salespitch.scan /(\d{1,}\s([y]|[m]))/
  months, n = temp[0][0].split(" ")
  temp[0][1].downcase == "y" ? months = 12 * months.to_i : months = months.to_i

  return (monthly*months)+downpayment
end

# Better Solution
def car_price (salespitch)
  a,b,c = salespitch.gsub( /[^0-9$ ]/, '').strip.split.sort.map{ |v| v.tr("$","").to_i }
  [a,b].min*(c < 11 ? c*12 : c) + [a,b].max
end
