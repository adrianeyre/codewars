=begin

Create a class Ball.

Ball objects should accept one argument for "ball type" when instantiated.

If no arguments are given, ball objects should instantiate with a "ball type"
of "regular."

ball1 = Ball.new
ball2 = Ball.new "super"
ball1.ball_type  #=> "regular"
ball2.ball_type  #=> "super"
=end

# My Solution
class Ball
  attr_accessor :ball_type

  def initialize(type="regular")
    @ball_type = type
  end
end
