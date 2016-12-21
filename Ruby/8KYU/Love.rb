=begin

Who remembers back to their time in the schoolyard, when girls would take a
flower and tear its petals, saying each of the following phrases each time a
petal was torn:

I love you
a little
a lot
passionately
madly
not at all
When the last petal was torn there were cries of excitement, dreams, surging
thoughts and emotions.

Your goal in this kata is to determine which phrase the girls would say for a
flower of a given number of petals, where nb_petals > 0.

=end

# My Solution
def how_much_i_love_you(nb_petals)
  case nb_petals % 6
    when 1 ; "I love you"
    when 2 ; "a little"
    when 3 ; "a lot"
    when 4 ; "passionately"
    when 5 ; "madly"
    when 0 ; "not at all"
  end
end

# Better Solution
def how_much_i_love_you(n)
  ["I love you", "a little", "a lot", "passionately", "madly", "not at all"][(n-1)%6]
end
