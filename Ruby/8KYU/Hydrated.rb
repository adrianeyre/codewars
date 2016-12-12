=begin

Nathan loves cycling.

Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres
of water per hour of cycling.

You get given the time and you need to return the number of litres Nathan
will drink, rounded to the smallest value.

For example:

time = 3 ----> litres = 1

time = 6.7---> litres = 3

time = 11.8--> litres = 5

=end

# My Solution
def litres(time)
  (time * 0.5).floor
end

# Better Solution
def litres(time)
  time.div(2)
end

# Another Solution
def litres(time)
  (time / 2).floor
end
