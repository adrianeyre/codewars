=begin

In this first kata in the series, you need to define a Hero prototype to be used
in a terminal game. The hero should have the following attributes:

attribute	value
name        = 'Hero'
position    =	'00'
health	    = 100
damage	    = 5
experience	= 0

=end

# My Solution
class Hero
  attr_accessor :name, :experience, :health, :position, :damage
  def initialize(name="Hero")
    @name = name
    @experience = 0
    @health = 100
    @position = "00"
    @damage = 5
  end
end

# Another Solution
Hero = Struct.new(:name, :experience, :health, :position, :damage) do
  def initialize(*)
    super
    self.name ||= "Hero"
    self.experience ||= 0
    self.health ||= 100
    self.position ||= "00"
    self.damage ||= 5
  end
end
