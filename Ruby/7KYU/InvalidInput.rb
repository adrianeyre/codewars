=begin

Error Handling is very important in coding and seems to be overlooked or not
implemented properly.

#Task

Your task is to implement a function which takes a string as input and return
an object containing the properties vowels and consonants. The vowels property
must contain the total count of vowels {a,e,i,o,u}, and the total count of
consonants {a,..,z} - {a,e,i,o,u}. Handle invalid input and don't forget to
return valid ones.

#Input

The input is any random string. You must then discern what are vowels and what
are consonants and sum for each category their total occurrences in an object.
However you could also receive inputs that are not strings. If this happens
then you must return an object with a vowels and consonants total of 0 because
the input was NOT a string. Refer to the Example section for a more visual
representation of which inputs you could receive and the outputs expected. :)

Example:

Input: get_count('test')
Output: {vowels=>1,consonants=>3}

Input: get_count('tEst')
Output: {vowels=>1,consonants=>3}

Input get_count('    ')
Output: {vowels=>0,consonants=>0}

Input get_count()
Output: {vowels=>0,consonants=>0}

=end

# My Solution
def get_count(words=nil)
  result = {"vowels"=>0, "consonants"=>0}
  return result if !words.is_a? String || words == nil
  words = words.to_s.gsub(/[^a-zA-Z]/, "")
  puts "words = #{words}"
  words.split("").each {|x| x.downcase =~ /[aeiou]/ ? result["vowels"] += 1 : result["consonants"] += 1}
  result
end

# Better Solution
def get_count(words = "")
  string = words.is_a?(String) ? words.downcase : ""
  {
    "vowels"     => string.count("aeiou"),
    "consonants" => string.count("bcdfghjklmnpqrstvwxyz")
  }
end
