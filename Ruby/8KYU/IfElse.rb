=begin

Complete function saleHotdogs, function accept 1 parameters:n, n is the number
of customers to buy hotdogs, different numbers have different prices (refer to
the following table), return a number that the customer need to pay how much
money.

+---------------+-------------+
|  numbers n    | price(cents)|
+---------------+-------------+
|n<5            |    100      |
+---------------+-------------+
|n>=5 and n<10  |     95      |
+---------------+-------------+
|n>=10          |     90      |
+---------------+-------------+
You can use if..else or ternary operator to complete it.

When you have finished the work, click "Run Tests" to see if your code is
working properly.

In the end, click "Submit" to submit your code pass this kata.

=end

# My Solution
def sale_hotdogs(n)
  n < 5 ? n*100 : n < 10 ? n*95 : n*90
end
