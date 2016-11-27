=begin

The new £5 notes have been recently released in the UK and they've
certainly became a sensation! Even those of us who haven't been
carrying any cash around for a while, having given in to the convenience
of cards, suddenly like to have some of these in their purses and pockets.
But how many of them could you get with what's left from your salary
after paying all bills? The programme that you're about to write will
count this for you!

Given a salary and the array of bills, calculate your disposable income
for a month and return it as a number of new £5 notes you can get with
that amount. If the money you've got (or do not!) doesn't allow you
to get any £5 notes return 0.

£££ GOOD LUCK! £££

=end

# My Solution
def get_new_notes(salary,bills)
  num = 0
  bills.map {|n| num += n}
  amount = (salary - num) / 5
  amount > 0 ? amount : 0
end

# Better Solution
def get_new_notes(salary,bills)
  (salary - bills.reduce(:+)) / 5 > 0 ? (salary - bills.reduce(:+)) / 5 : 0
end
