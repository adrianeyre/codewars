=begin

Create a function called shoppingList which calculates the total price for items
on a shopping list. The function should return the total.

Assume that only one of each item on the list is purchased.

shoppingLists will be presented in the following form:

var shoppingList1 = [ { itemName : 'Bread', price : 11.00 },
{ itemName : 'Milk', price : 7.00 }, { itemName : 'Cheese', price : 19.50 }];

=end

# My Solution
def shoppingList(list)
  list.map {|h| h[:price] }.reduce(:+).round(2)
end

=begin
# Codewars tests
words = ["Apples","Bread","Cheese","Tea","Coffee","Eggs","Sugar","Chocolate",
        "Toys","Ice Cream","Cakes","Coke","Fanta","Water","Crisps","Beans","Bacon","Rice"]
(1..200).each do |rtest|
  list = []
  (1..rand(50)).each do |x|
    list << { itemName: words[rand(words.length)], price: rand(1.0..40.0).round(2) }
  end
  solution = shoppingList2(list)
  temp = solution.to_s
  if solution.to_s.index(".") == solution.to_s.length - 2
    list << { itemName: words[rand(words.length)], price: 0.01 }
    solution += 0.01
    solution = solution.round(2)
  end
  Test.assert_equals(shoppingList(list),solution,"Expected: '#{solution}'")
end
=end
