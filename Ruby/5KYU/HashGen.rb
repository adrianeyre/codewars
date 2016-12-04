=begin

The marketing team are spending way too much time typing in hashtags.
Let's help them with out own Hashtag Generator!

Here's the deal:

If the final result is longer than 140 chars it must return false.
If the input is a empty string it must return false.
It must start with a hashtag (#).
All words must have their first letter capitalized.
Example Input to Output:

" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"

" Hello World " => "#HelloWorld"

=end

# My Solution
def generateHashtag(str)
  return false if str == "" || str == nil
  result = "#" + str.split(" ").each {|x| x.capitalize!}.join
  return false if result.length > 140
  result
end

# Another Solution
def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end

# Another Solution
def generateHashtag(str)
  return false  if str.empty? || str.length > 140
  "#" + str.gsub(/\w+/, &:capitalize).gsub(/\s+/, '')
end
