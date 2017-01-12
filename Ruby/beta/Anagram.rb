=begin

"Any word or phrase that exactly reproduces the letters in another order is an
anagram." (Wikipedia). Add numbers to this definition to be more interest.

Examples of anagrams:

William Shakespeare = I am a weakish speller
silent = listen
12345 = 54321
The challenge is to write the function isAnagram to return True if the word test
is an anagram of the word original and False if not.

Note: Anagrams are case insensitive, ignore all non-alphanumeric characters,
input will always be two strings. Also: two identical words may be considered to
be an edge case of an anagram, but for this kata they are still correct anagrams.

=end
# My Solution
def isAnagram(test, original)
  test = test.downcase
  original = original.downcase
  test_hash = Hash.new {|k,v| k[v] = 0}
  original_hash = Hash.new {|k,v| k[v] = 0}
  test.split("").each {|x| test_hash[x] += 1 if x =~ /[a-z0-9]/}
  original.split("").each {|x| original_hash[x] += 1 if x =~ /[a-z0-9]/}
  test_hash == original_hash
end

# Better Solution
def isAnagram(test, original)
  sum(test) == sum(original)
end

def sum(str)
  str.downcase.scan(/\w+/).join.sum
end
