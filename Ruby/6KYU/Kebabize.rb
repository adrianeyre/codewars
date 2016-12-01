=begin

Modify the kebabize function so that it converts a camel case
string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes: - the returned string should only contain lowercase letters

=end

# My Solution
def kebabize(str)
  puts "word = #{str}"
  return_word = ""
  0.upto(str.length-1) do |x|
    if str[x].to_s.ord > 64 && str[x].to_s.ord < 91
      return_word += "-" if return_word.length != 0
      return_word += "#{str[x].downcase}"
    elsif str[x].to_s.ord > 96 && str[x].to_s.ord < 123
      return_word += str[x].downcase
    end
  end
  return_word
end

# Better Solution
def kebabize(str)
  str.gsub(/([0-9])/, '').split(/(?=[A-Z])/).join('-').downcase
end

# Another Solution
def kebabize(str)
  new_str = str.gsub(/[^A-z]/, "")
  new_str = new_str[0].downcase + new_str[1..-1]
  new_str.gsub(/[A-Z]/) { |c| "-" + c.downcase }
end
