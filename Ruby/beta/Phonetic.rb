=begin

The idea for this Kata came from 9gag today.here

You'll have to translate a string to Pilot's alphabet (NATO phonetic alphabet)

Like this:

Input
If you can read

Output
Indian Foxtrot Yankee Oscar Uniform Charlie Alpha November Romeo Echo Alpha Delta

Some notes Keep the punctuation, and remove the spaces.

=end

# My Solution
def to_nato(words)
	alpha = %w(Alpha Bravo Charlie Delta Echo	Foxtrot	Golf Hotel India Juliet Kilo Lima	Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey X-ray Yankee Zulu)

  result = []
  words.split("").each do |letter|
    letter.downcase.ord > 96 && letter.downcase.ord < 123 ? result << alpha[letter.downcase.ord-97] : result << letter if letter != " "
  end
  result.join(" ")
end
