=begin

Turn a given number (an integer > 0, < 1000) into the equivalent English words.
For the purposes of this kata, no hyphen is needed in numbers 21-99.

Examples:

wordify(1) == "one"
wordify(12) == "twelve"
wordify(17) == "seventeen"
wordify(56) == "fifty six"
wordify(90) == "ninety"
wordify(326) == "three hundred twenty six"

=end

# My Solution
def wordify(n)
  result = ""
  word = n.to_s
  if n > 99
    result = selectnum(word[0].to_i) + " hundred"
    n % 100 == 0 ? (return result) : (result += " ")
    n = (word[1] + word[2]).to_i
    word = n.to_s
  end

  if n < 20
    return result += selectnum(n)
  end
  if n < 100
    result += tens(word[0].to_i)
    result += " " + selectnum(word[1].to_i) if n % 10 != 0
    return result
  end
  result
end

def selectnum(n)
  %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
end

def tens(n)
  %w(zero zero twenty thirty forty fifty sixty seventy eighty ninety)[n]
end

# Better Solution
def wordify(n)
    if n<20 then return ["","one","two","three","four","five","six","seven","eight","nine","ten",
    "eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"][n] end
    if n<100 then return [["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"][(n-20)/10],wordify(n%10)].join(" ").rstrip end
    if n<1000 then return [wordify(n/100)+" hundred",wordify(n%100)].join(" ").rstrip end
end
