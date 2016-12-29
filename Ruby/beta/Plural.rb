=begin

Your code should take an English noun with a regular plural form and return its
plural.

Rules for pluralization in English:

If a singular noun ends in '-s', '-x', '-z', '-ch' or '-sh', add '-es'

If a singular noun ends with a consonant and '-y', change '-y' to '-ies'.

All other words just add '-s'

None of the tests end in '-f' or '-o' and none are irregular nouns (e.g. child,
mouse etc.)

Examples

table -> tables,
window -> windows,
church -> churches,
watch -> watches,
bus -> buses,
box -> boxes,
buzz -> buzzes,
fly -> flies

=end

# My Solution
def pluralize(word)
  return word+"es" if word =~ /(\w{1,}s$)|(\w{1,}x$)|(\w{1,}z$)|(\w{1,}ch$)|(\w{1,}sh$)/
  return word[0..-2]+"ies" if word =~ /\w{1,}[^aeiou]y/
  return word+"s"
end
