=begin

The function is not returning the correct values. Can you figure out why?

get_planet_name(3) # should return 'Earth'
get_planet_name(3) # should return 'Earth'

=end

# My Solution
def get_planet_name(id)
  case id
    when 1; name = "Mercury"
    when 2; name = "Venus"
    when 3; name = "Earth"
    when 4; name = "Mars"
    when 5; name = "Jupiter"
    when 6; name = "Saturn"
    when 7; name = "Uranus"
    when 8; name = "Neptune"
    else ; name = ""
  end
  name
end

# Better Solution
def get_planet_name(id)
  %w[0 Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune][id]
end
