=begin

A traveling salesman has to visit clients. He got each client's address e.g.
"432 Main Long Road St. Louisville OH 43071" as a list.

The basic zipcode format usually consists of two capital letters followed by a
white space and five digits. The list of clients to visit was given as a string
of all addresses, each separated from the others by a comma, e.g. :

"123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville
OH 43071,786 High Street Pollocksville NY 56432".

To ease his travel he wants to group the list by zipcode.

Task

The function travel will take two parameters r (list of all clients' addresses)
and zipcode and returns a string in the following format:

zipcode:street and town,street and town,.../house number,house number,...

The street numbers must be in the same order as the streets where they belong.

If a given zipcode doesn't exist in the list of clients' addresses return "zipcode:/"

Examples

r = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville
OH 43071,786 High Street Pollocksville NY 56432"

travel(r, "OH 43071") --> "OH 43071:Main Street St. Louisville,Main Long Road
St. Louisville/123,432"

travel(r, "NY 56432") --> "NY 56432:High Street Pollocksville/786"

travel(r, "NY 5643") --> "NY 5643:/"
Note: You can see the list of all addresses and zipcodes in the test cases.

=end

# My Solution
def travel(r, zipcode)
  return ":/" if zipcode == ""
  r = r.split(",")
  result = [] ; post = "" ; street = [] ; house = []
  search = "\\d{1,}.*"
  zipcode.split("").each {|x| x == " " ? post += "\\s" : post += "[" + x + "]"}
  search += post
  r.each {|x| result << x if x =~ /#{search}/}
  final = zipcode + ":"
  result.each_with_index do |x,i|
    temp = x.scan(/(\d{1,})\s(.*)\s(#{post}$)/)
    if temp != []
      street << temp[0][1]
      house  << temp[0][0]
    end
  end
  final += street.join(",") + "/" + house.join(",")
  final
end

# Better Solution
def travel(r, zipcode)
  addresses = r.split(",").select { |addr| (addr.split(" ")[-2] + " " + addr.split(" ")[-1])  == zipcode}
  format = addresses.map { |addr| addr.split(" ")[1...-3].join(" ") + " " + addr.split(" ")[-3] }.join(",")
  houses = addresses.map { |addr| addr.split(" ")[0] }.join(",")
  zipcode + ":" + format + "/" + houses
end
