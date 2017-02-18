def mastermind(game)
  colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"]
  amount = Hash.new {|key,value| key[value]=0}
  guess = []
  colours.each do |colour|
    answer = game.check([colour, colour, colour, colour])
    colour_amount = answer.count("Black")
    amount[colour] = colour_amount
    (1..colour_amount).each{|c| guess << colour}
  end
  answer = false

  while answer != "WON!"
    answer = game.check(guess.shuffle)
  end

end

class MasterMind

  Colours = ["Red", "Blue", "Green", "Orange", "Purple", "Yellow"]

  def initialize()
    @result = []
    (1..4).each do |colour|
      @result << Colours[rand(Colours.length)]
    end
    @amount = Hash.new {|key,value| key[value]=0}
    @result.each{|colour| @amount[colour]+=1}
  end

  def check(attempt)
    return "Error" if attempt.length != 4
    return "WON!" if attempt == @result
    amount = @amount
    result = []
    new_attempt = []
    attempt.each {|colour| new_attempt << colour}
    attempt.each_with_index do |colour, index|
      return "Error" if !Colours.include? colour
      if colour == @result[index]
        result << "Black"
        amount[colour] -= 1
        new_attempt.delete_at(index)
      end
    end

    new_attempt.each do |colour|
      if amount[colour] > 0
        result << "White"
        amount[colour] -= 1
      end
    end
    result.shuffle
  end
end

game = MasterMind.new
mastermind(game)
