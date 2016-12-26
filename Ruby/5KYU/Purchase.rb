=begin

A website named "All for Five", sells many products to registered clients that
cost all the same (5 dollars, the price is not relevant). Every user receives an
alphanumeric id code, like D085. The page tracks all the purchases, that the
clients do. For each purchase of a certain client, his/her id user will be
registered once.

You will be given an uncertain number of arrays that contains strings (the id
code users). Each array will represent the purchases that the users do in a
month. You should find the total number of purchases of the users that have
bought in all the given months (the clients that their id code are present in
all the arrays). e.g.:

a1 = ['A042', 'B004', 'A025', 'A042', 'C025']
a2 = ['B009', 'B040', 'B004', 'A042', 'A025', 'A042']
a3 = ['A042', 'A025', 'B004']
The result will be:

'A042'---> 5 times
'A025'---> 3 times
'B004'---> 3 times
It may be that not even a single user has purchased in all the months

a1 = ['A043', 'B004', 'A025', 'A042', 'C025']
a2 = ['B009', 'B040', 'B003', 'A042', 'A027', 'A044']
a3 = ['A041', 'A026', 'B005']
Even though '0042' is present in two arrays, is not present in all the arrays.

The function that solves this challenge will be called as: id_best_users().

The entries of the function and the output for the cases above will be:

a1 = ['A042', 'B004', 'A025', 'A042', 'C025']
a2 = ['B009', 'B040', 'B004', 'A042', 'A025', 'A042']
a3 = ['A042', 'A025', 'B004']
id_best_users(a1, a2, a3) == [[5, ['A042']], [3, ['A025', 'B004']]]

a1 = ['A043', 'B004', 'A025', 'A042', 'C025']
a2 = ['B009', 'B040', 'B003', 'A042', 'A027', 'A044']
a3 = ['A041', 'A026', 'B005']
id_best_users(a1, a2, a3) == []
As you can see the output will have the total number of purchases in decreasing
order. If two users have the same amount of total purchases, they will be sorted
by their id user string value.

More examples will be given in the example tests.

Features of the Random Tests:

Low Performance Tests
number of tests: 60
maximum amount of users: 200
maximum number of months: 8
maximum amount of purchases per month: 100

High Performance Tests
number of tests: 34
maximum amount of users: 90000
maximum number of months: 12
maximum amount of purchases per month: 80000

=end

# My Solution

# SOLUTION TIMES OUT!!!!
def id_best_users(*args)
    total_purchase = Hash.new {|v,k| v[k] = 0}
    purchase_in_all = {}
    max = 0
    (1..args.length).each do |x|
      args[x-1].each {|y| total_purchase[y] += 1}
      max = args[x-1].length if args[x-1].length > max
    end
    total_purchase.each do |v,k|
      temp = true
      (1..args.length).each{|x| (temp = false;break) if !args[x-1].include? v}
      purchase_in_all[v] = temp
    end
    result = []
    (max).downto(args.length).each do |x|
      temp = []
      total_purchase.each {|v,k| temp << v if purchase_in_all[v] == true && total_purchase[v] == x}
      (temp.sort! ; result << [x, temp]) if temp != []
    end
    result
end
