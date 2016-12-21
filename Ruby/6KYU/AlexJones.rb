=begin

Alex Jones (radio show host) needs your help!

He has decided he wants to tone down the style of his show. No more yelling,
grunting and he has decided to only mention the Globalists one time per sentence

EXAMPLE: input: "THE GLOBALISTS ARE NOT GRUNT GONNA WIN, grunt grunt DERN
GLOBALISTS!!!! ==================>
output: "The globalists are not gonna win, dern sociopathic rich guys."

RULE1: Output should be all lowercase letters except for the first letter of the
sentence which should be uppercase.

RULE2: Output should not include any exclamation points. All sentences should
end with one period.

RULE3: The word globalists (case insensitive) should only be mentioned once per
sentence. Remove all instances of the word globalists except for the first.
Replace any instances of the word GLOBALISTS after the first with the phrase
sociopathic rich guys.

RULE4: Remove all instances of grunt or GRUNT.

=end

# My Solution
def tone_it_down(string)
  result = [] ; said = false
  string = string.upcase.gsub("!","").downcase
  string.split(" ").each_with_index do |x,i|
    if x[0..9] == "globalists"
      said == true ? x = "sociopathic rich guys" : said = true
    end
    x.gsub!("grunt","") if i != 0
    result << x if x != " " && x != ""
  end
  result = result.join(" ").capitalize
  result[-1] == "." ? result : result += "."
end

# "Grunt the government globalists kills nukes bombs sociopathic rich guys sociopathic rich guys the enemy sociopathic rich guys the truth sociopathic rich guys sociopathic rich guys bombs."
# "The government globalists kills nukes bombs sociopathic rich guys sociopathic rich guys the enemy sociopathic rich guys the truth sociopathic rich guys sociopathic rich guys bombs."


p tone_it_down("grunt the government GLOBALISTS kills nukes BOMBS globalists GLOBALISTS the enemy GLOBALISTS THE TRUTH globalists GRUNT globalists BOMBS!!!!!!!!")
# 'Keep ramming it into the heart of the globalists, yes those sociopathic rich guys.')
