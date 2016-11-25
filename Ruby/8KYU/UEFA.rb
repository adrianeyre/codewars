=begin

Finish the uefaEuro2016() function so it return string just
like in the examples below:

uefaEuro2016(['Germany', 'Ukraine'],[2, 0]) // "At match Germany - Ukraine, Germany won!"
uefaEuro2016(['Belgium', 'Italy'],[0, 2]) // "At match Belgium - Italy, Italy won!"
uefaEuro2016(['Portugal', 'Iceland'],[1, 1]) // "At match Portugal - Iceland, teams played draw."

=end

def uefa_euro_2016(teams, scores)
   "At match #{teams[0]} - #{teams[1]}, #{scores[0] > scores[1] ? teams[0] + " won!" : scores[0] == scores[1] ? "teams played draw." : teams[1] + " won!"}"
end
