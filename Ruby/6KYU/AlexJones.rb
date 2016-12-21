=begin



=end

# My Solution
def tone_it_down(string)
  result = [] ; said = false
  string = string.upcase.gsub("!","").downcase
  string.split(" ").each_with_index do |x,i|
    if x[0..9] == "globalists"
      said == true ? x = "sociopathic rich guys" : said = true
    end
    if i != 0
      x.gsub!("grunt","")
    end
    result << x if x != " " && x != ""
  end
  result = result.join(" ").capitalize
  result[-1] == "." ? result : result += "."
end

# "Grunt the government globalists kills nukes bombs sociopathic rich guys sociopathic rich guys the enemy sociopathic rich guys the truth sociopathic rich guys sociopathic rich guys bombs."
# "The government globalists kills nukes bombs sociopathic rich guys sociopathic rich guys the enemy sociopathic rich guys the truth sociopathic rich guys sociopathic rich guys bombs."


p tone_it_down("grunt the government GLOBALISTS kills nukes BOMBS globalists GLOBALISTS the enemy GLOBALISTS THE TRUTH globalists GRUNT globalists BOMBS!!!!!!!!")
# 'Keep ramming it into the heart of the globalists, yes those sociopathic rich guys.')
