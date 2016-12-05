=begin

Everyone knows passphrases. One can choose passphrases from poems, songs,
movies names and so on but frequently they can be guessed due to common
cultural references. You can get your passphrases stronger by different means.
One is the following:

choose a text in capital letters including or not digits and non
alphabetic characters,

shift each letter by a given number but the transformed letter must be a letter (circular shift),
replace each digit by its complement to 9,
keep such as non alphabetic and non digit characters,
downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
reverse the whole result.
Example:

your text: "BORN IN 2015!", shift 1

1 + 2 + 3 -> "CPSO JO 7984!"

4 "CpSo jO 7984!"

5 "!4897 Oj oSpC"

=end

# My Solution
def play_pass(str, n)
    final = ""
    result = str.upcase.tr "A-Z", ("A".."Z").to_a.rotate(n).join
    result = result.tr "0-9", ("9876543210").split.to_a.join
    result.split("").each_with_index {|v,i|  final += i.odd? ? v.downcase : v.upcase}.join
    final.reverse!
end

# Better solution
def play_pass(str, n)
  str
    .downcase
    .tr('a-z', ('a'..'z').to_a.rotate(n).join)
    .tr('0-9', '9876543210')
    .gsub(/(..|.$)/, &:capitalize)
    .reverse
end

# Another Solution
def play_pass(str, n)
  str.downcase
  .tr('a-z',('a'..'z').to_a.rotate(n).join)
  .tr('0-9',(0..9).map { |i| (9-i).to_s }.join)
  .chars.map.with_index { |char,index| index.even? ? char.upcase : char.downcase }
  .join
  .reverse
end
