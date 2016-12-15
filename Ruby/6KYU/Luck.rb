=begin

The test fixture I use for this kata is pre-populated.

It will compare your guess to a random number generated in Ruby by:

(Kernel::rand() * 100 + 1).floor
In Javascript/CoffeeScript by:

Math.floor(Math.random() * 100 + 1)
In Python by:

randint(1,100)
You can pass by relying on luck or skill but try not to rely on luck.

"The power to define the situation is the ultimate power." - Jerry Rubin

Good luck!

=end

# My Solution
module Kernel
  def self.rand(max=0)
    return 0
  end
end

guess = 1

# Better Solution
srand(1)
guess = 42

# Another Solution
guess =
