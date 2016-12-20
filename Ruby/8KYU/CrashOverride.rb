=begin

Your task is to create a function that, given a proper first and last name, will
return the correct alias.

I have created two objects that return a one word name in response to the first
letter of your first name and one for the first letter of your surname.
If the first character of either of the names given to the function is not a
letter from A - Z, you should return "Your name must start with a letter from
A - Z."
Sometimes people might forget to capitalize the first letter of their name so
your function should accommodate for these grammatical errors.
FIRST_NAME = {'A': 'Alpha', 'B': 'Beta', 'C': 'Cache', ...}
SURNAME = {'A': 'Analogue', 'B': 'Bomb', 'C': 'Catalyst' ...}

alias_gen('Larry', 'Brentwood') == 'Logic Bomb'
alias_gen('123abc', 'Petrovic') == 'Your name must start with a letter from
A - Z.'

=end

# My Solution
def alias_gen(f,s)
  if FIRST_NAME[f[0].upcase] != nil && SURNAME[s[0].upcase] != nil
    "#{FIRST_NAME[f[0].upcase]} #{SURNAME[s[0].upcase]}"
  else
    "Your name must start with a letter from A - Z."
  end
end

# Better Solution
def alias_gen(first,last)
  FIRST_NAME[first[0].upcase] + " " + SURNAME[last[0].upcase]
  rescue
    return "Your name must start with a letter from A - Z."
end
