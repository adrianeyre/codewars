=begin

Complete the Compute method/function so that if a block is given it
will run else it returns "Do not compute".

=end

# My solution
def compute (&block)
  return "Do not compute" if block == nil
  block.call
end

# Better solution
def compute
  block_given? ? yield : "Do not compute"
end

# Another solution
def compute
  yield rescue "Do not compute"
end
