=begin

Welcome Adventurer. Your aim is to navigate the maze and reach the finish point
without touching any walls. Doing so will kill you instantly!

You will be given a 2D array of the maze and an array of directions. Your task
is to follow the directions given. If you reach the end point before all your
moves have gone, you should return “Finish”. If you hit any walls or go outside
the maze boarder, you should return “Dead”. If you find yourself still in the
maze after using all the moves, you should return “Lost”.

The Maze array will look like

maze = [[1,1,1,1,1,1,1],
        [1,0,0,0,0,0,3],
        [1,0,1,0,1,0,1],
        [0,0,1,0,0,0,1],
        [1,0,1,0,1,0,1],
        [1,0,0,0,0,0,1],
        [1,2,1,0,1,0,1]]
..with the following key

  0 = Safe place to walk
  1 = Wall
  2 = Start Point
  3 = Finish Point
The Maze array will always be square ie 7 x 7 but will alter from test to test.

The directions array will always be in upper case and will be in the format of
N = North, E = East, W = West and S = South.

  direction = ["N","N","N","N","N","E","E","E","E","E"] == "Finish"

=end

# My Solution
def maze_runner(maze, directions)
  startX = 0 ; startY = 0
  maze.each_with_index do |boardY, y|
    boardY.each_with_index {|boardX, x| (startX = x ; startY = y) if boardX == 2}
  end

  directions.each do |dire|
    case dire
      when "N" ; startY -= 1
      when "E" ; startX += 1
      when "S" ; startY += 1
      when "W" ; startX -= 1
    end

    return "Dead" if startY < 0 || startY > maze.length-1 || startX < 0 || startX > maze.length-1 || maze[startY][startX] == 1
    return "Finish" if maze[startY][startX] == 3
  end
  "Lost"
end

(0..49).each do |rtest|
  maze = []
  l = rand(60) + 5
  (1..l).each {|z| t = [] ; t += [0]*l ; maze << t}
  w = rand(l*l-10) + 1
  (1..w).each {|z| x = rand(l) ; y = rand(l) ; maze[x][y] = 1}
  x = rand(l) ; y = rand(l) ; maze[x][y] = 3
  x = rand(l) ; y = rand(l) ; maze[x][y] = 2

  directions = []
  m = rand(59) + 1
  (0..m).each do |x|
    d = rand(4)
    case d
      when 0 ; directions << "N"
      when 1 ; directions << "E"
      when 2 ; directions << "S"
      when 3 ; directions << "W"
    end
  end

  solution = maze_runner(maze, directions)

  Test.it("Random Tests") do
    Test.assert_equals(maze_runner(maze,directions), solution)
  end
end
