class Game
  def initialize(board)
    @board = board
  end

  def play(squares)
    squares.each do |n|
      topbot = true
      num = 0
      (1..n).each do |x|
        num += 1
        if topbot && num == @board
          num = 0
          topbot = false
        elsif !topbot && num == @board + 1
          num = 0
          topbot = true
        end
      end
      topbot = !topbot if num == 0
      if topbot
        squares = checkmysquare(squares, [n-@board-1, n-@board, n-(@board*2)-1])
        squares = checkmysquare(squares, [n+@board+1, n+@board, n+(@board*2)+1])
      else
        if num != 0
          squares = checkmysquare(squares, [n+1, n-@board, n+@board+1])
        end
        if num != 1
          squares = checkmysquare(squares, [n-1, n+@board, n-@board-1])
        end
      end
    end
    squares.sort
  end

  def checkmysquare(squares, arr)
    num = 0
    xt = 0
    arr.each do |x|
      if squares.include? x
        num += 1
      else
        xt = x
      end
    end
    squares << xt if num == arr.length-1
    squares
  end
end

def makesquare(n)
  srand
  sq = []
  max = 2*n*n+(n*2)-1
  (1..rand(max*2)).each do |x|
    num = 0
    num = rand(max)+1
    sq << num if !sq.include? num
  end
  sq.sort
end


game = Game.new(4)
p game.play([20,21,24,26,33,34,35,38,39])
