=begin

A bomb has been set to go off! You have to find the wire and cut it in order to
stop the timer. There is a global var that holds the numeric ID to which wire to
cut. Find that and then you can Bomb.CutTheWire(wireKey);

=end

# My Solution
p global_variables # Display all global variables
$wireCode = $boom6
bomb.cut_the_wire($wireCode);

# Better Solution
wire_var = global_variables.grep(/boom/).first
wire_code = eval("#{wire_var}")
bomb.cut_the_wire(wire_code)

# Another Solution
$wireCode = false # Find the wire.
bomb.cut_the_wire(bomb.instance_variable_get(:@bomb_code));
