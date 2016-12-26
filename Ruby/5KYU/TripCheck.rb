=begin

A friend of yours is planning a trip across the country via train, but they
can't read the train information! They've asked you to help and they want you to
check if they can get from place to place on the rail network. You hit a snag
while trying to help when you've found that the trains don't always return to a
station they've departed from! That is to say that a train route might go from
Station X to Station Y, but it might not go from Station Y to Station X.

They love train trips so they don't care how many trains it takes as long as
it's possible to reach their target destination.

You've decided to write a program to help you with the job and the format you've
decide to use is as follows:

check_trip( start, target, stations, station_links )
You want the method to return "Possible" if the trip is possible and
"Impossible" if otherwise

Example usages:

stations = ["ADL", "BRI", "MEL", "SYD"]

links = {"ADL" => ["MEL"], "MEL" => ["ADL", "SYD"],  "SYD" => ["BRI"]}

check_trip( "ADL", "BRI", stations, links ) # => "Possible"
check_trip( "MEL", "BRI", stations, links ) # => "Possible"
check_trip( "SYD", "ADL", stations, links ) # => "Impossible"
Note: The Hash provided for the 'links' argument will always have default = []

=end

# My Solution
def check_trip( start, target, stations, station_links )
  return "Impossible" if (!stations.include? start) || (!stations.include? target)
  station_been = []
  station_at = start
  station_num = 0
  last_station = ""
  #station_been << start
  while station_at != target
    puts
    puts "Station at    = #{station_at}"
    puts "Next station  = #{station_links[station_at]}"
    station_at = last_station if station_links[station_at] == nil

    temp = station_at
    station_at = station_links[station_at][0]
    station_links[temp].shift
    puts "station update = #{station_links[temp]}"
    last_station = station_at
    puts "Last Station   = #{last_station}"
  end
  "Possible"
end
