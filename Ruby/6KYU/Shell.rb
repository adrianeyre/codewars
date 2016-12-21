=begin



=end

# My Solution
def find_the_ball start, swaps
  p swaps
  swap = 0
  swaps.each do |x|
    if x[0] == start
      start = x[1]
      swap += 1
    end
  end
  swap
end

swaps = [[0, 1], [1, 2], [2, 0], [0, 1], [1, 2], [2, 1], [2, 0], [0, 2]]
p find_the_ball(0, swaps)
