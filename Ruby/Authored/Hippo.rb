class Game
  def initialize(board)
    @amount = 0
    @board = board
    @done = []
    (0..@board.length-1).each do |x|
      temp = []
      (0..@board.length-1).each do |y|
        temp << false
      end
      @done << temp
    end
  end

  def play()
    (0..@board.length-1).each do |x|
      (0..@board.length-1).each do |y|
        checkmysquare(x,y) if @board[x][y] == 1 && !@done[x][y]
      end
    end
    @amount
  end

  def checkmysquare(x,y)
    @amount += 1
    temp = [[x,y]]
    num = 0
    while (num < temp.length) do
      x = temp[num][0]
      y = temp[num][1]
      @done[x][y] = true
      if x != 0
        if @board[x-1][y] == 1 && !@done[x-1][y]
          temp << [x-1,y]
          @done[x-1][y] = true
        end
      end
      if x != @board.length - 1
        if @board[x+1][y] == 1 && !@done[x+1][y]
          temp << [x+1,y]
          @done[x+1][y] = true
        end
      end
      if y != 0
        if @board[x][y-1] == 1 && !@done[x][y-1]
          temp << [x,y-1]
          @done[x][y-1] = true
        end
      end
      if y != @board.length - 1
        if @board[x][y+1] == 1 && !@done[x][y+1]
          temp << [x,y+1]
          @done[x][y+1] = true
        end
      end
      num += 1
    end
  end
end

def randomBoard()
  srand
  board = []
  boardSize = rand(45)+5
  blocks = rand(boardSize*boardSize)
  p boardSize
  p blocks
  (0..boardSize).each do |x|
    temp = []
    (0..boardSize).each do |y|
      temp << 0
    end
    board << temp
  end
  (0..blocks).each do |x|
    x = rand(boardSize)
    y = rand(boardSize)
    board[x][y] = 1
  end
  board
end
