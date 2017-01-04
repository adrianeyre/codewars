=begin

Create a combat function that takes the player's current health and the amount
of damage recieved, and returns the player's new health. Health can't be less
than 0.

=end

# My Solution
def combat(health, damage)
  health - damage > 0 ? health - damage : 0
end

# Better Solution
def combat(health, damage)
  [health-damage,0].max
end
