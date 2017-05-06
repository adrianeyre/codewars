class Guesser
  def get_number
    bot = 1; top = 1000
    (0..9).each do |x|
      num = ((top-bot)/2).round + bot
      a = guess(num);
      bot = num if a=="Too low!"
      top = num if a=="Too high!"
      return num if a=="Correct!"
    end
    return "Nope!"
  end
end