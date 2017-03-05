class GuessingGame

  def guess(low, high, n, count)
    guess = ((high - low) / 2) + low
    return count if guess == n
    low = guess if guess < n
    high = guess if guess > n
    guess(low, high, n, count + 1)
  end

  def solution(n)
    return guess(0,100,n, 1)
  end
end

# game = GuessingGame.new
# p game.solution(99)

# srand
# (0..199).each do |rtest|
#   game1 = GuessingGame2.new
#   game2 = GuessingGame.new
#   guess_num = rand(97) + 2
#   solution = game1.solution(guess_num)
#   Test.assert_equals(game2.solution(guess_num),solution,"Expected: '#{solution}'")
# end

# Test.assert_equals(GuessingGame.solution(42),4)
# Test.assert_equals(GuessingGame.solution(50),1)
# Test.assert_equals(GuessingGame.solution(23),6)
# Test.assert_equals(GuessingGame.solution(56),4)
# Test.assert_equals(GuessingGame.solution(99),7)
# Test.assert_equals(GuessingGame.solution(1),6)
