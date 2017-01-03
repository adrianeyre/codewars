=begin

In this kata, you will write a function that receives an array of string and
returns a string that is either 'naughty' or 'nice'. Strings that start with the
letters b, f, or k are naughty. Strings that start with the letters g, s, or n
are nice. Other strings are neither naughty nor nice.

If there is an equal amount of bad and good actions, return 'naughty'

Examples:

bad_actions = ['broke someone\'s window', 'fought over a toaster', 'killed a bug']
what_list_am_i_on(bad_actions)
#-> 'naughty'
good_actions = ['got someone a new car', 'saved a man from drowning', 'never got into a fight']
what_list_am_i_on(good_actions)
#-> 'nice'
actions = ['broke a vending machine', 'never got into a fight', 'tied someone\'s shoes']
what_list_am_i_on(actions)
#-> 'naughty'

=end

# My Solution
def what_list_am_i_on(actions)
  na = 0 ; ni = 0
  actions.each do |z|
    z = z.downcase
    na += 1 if z[0] == "b" || z[0] == "f" || z[0] == "k"
    ni += 1 if z[0] == "g" || z[0] == "s" || z[0] == "n"
  end
  return "naughty" if na > ni || na == ni
  ni > na ? "nice" : ""
end

# Better Solution
def what_list_am_i_on(actions)
  naughty = actions.select{|action| action[0].downcase =~ /[b, f, k]/ }.length
  nice = actions.select{|action| action[0].downcase =~ /[g, s, n]/ }.length
  naughty >= nice ? "naughty" : "nice"
end
