class Arith
  NUMS = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"thirty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"forty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"fifty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"sixty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"seventy",nil,nil,nil,nil,nil,nil,nil,nil,nil,"eighty",nil,nil,nil,nil,nil,nil,nil,nil,nil,"ninety"]
  
  def initialize(first)
    @first = first
  end
  
  def add(second)
    number_to_word(word_to_number(@first)+word_to_number(second))
  end
  
  private 
  
  def word_to_number(word)
    result = 0
    word = word.split(" ")
    (0...word.length).each do |i|
      if word[i] == "hundred"
        result *= 100
      elsif word[i] != "and"
        result += NUMS.index(word[i])
      end
    end
    result
  end
  
  def number_to_word(num)
    result = []
    if (num / 1000).to_i > 0
      result << NUMS[(num / 1000).to_i]
      result << "thousand"
      num -= (num / 1000).to_i * 1000
    end
  
    if (num / 100).to_i > 0
      result << NUMS[(num / 100).to_i]
      result << "hundred"
      num -= (num / 100).to_i * 100
    end

    if num > 20
      result << "and" if result.length != 0
      if (num / 10).to_i > 0
        result << NUMS[(num / 10).to_i*10]
        num -= (num / 10).to_i * 10
        result << NUMS[(num / 1).to_i] if num != 0
      end
    else
      if num != 0
        result << "and" if result.length != 0
        result << NUMS[num.to_i]
      end
    end
    result.join(" ")
  end
  
end