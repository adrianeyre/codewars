=begin

A vending machine is a machine that dispenses items such as snacks and beverages
to customers automatically, after the customer inserts currency or credit into
the machine. The first modern vending machines were developed in England in the
early 19th century and dispensed postcards. (Source Wikipedia)

Vending Machine
In this simple Kata aimed at beginners you task is to recreate a vending machine.
You will have to make a class called VendingMachine with at least one method
called vend. On creation of a new instance of VendingMachine the items Array and
Initial vending machine money is passed. The vend method should take two
arguments 1. Selection code of the item and 2. Amount of money the user inserts
into the machine.

An example call of the vend method

machine.vend("A01", 0.90)
where the selected item is A01 and the money given to the machine is 90p

An example of the items Array is below

items = [{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
         {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
         {:name=>"Dairy Milk", :code=>"A03", :quantity=>1, :price=>0.65},
         {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25}]
The rules

1. If the money given to the machine is less than the item cost
return "Not enough money!"

2. If the quantity is 0 for an item
return "Item Name: Out of stock!". Where "Item Name" is the name of the item
selected

3. If an item is correctly selected
return "Vending Item Name with 9.40 change.". Where "Item Name" is the name of
the item and change if any given.

4. If an item is correclty selected and there is no change needed then
return "Vending Item Name". Where "Item Name" is the name of the item.

5. If an invalid item is selected return "Invalid selection!".
Good luck and Enjoy

=end

# My Solution
class VendingMachine
  def initialize(items,money)
    @items = items
    @money = money.to_f
  end

  def vend(selection, item_money)
    @items.each do |item|
      if item[:code].downcase == selection.downcase
        return "Not enough money!" if item_money < item[:price]
        return "#{item[:name]}: Out of stock!" if item[:quantity] - 1 < 0
        change = item[:price]-item_money
        @money += item_money - item[:price]
        item[:quantity] -= 1
        result = "Vending #{item[:name]}"
        result += " with #{"%.02f" % (change).abs} change." if item_money > item[:price]
        return result
      end
    end
    "Invalid selection!"
  end
end

items = [{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
         {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
         {:name=>"Dairy Milk", :code=>"A03", :quantity=>1, :price=>0.65},
         {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25},
         {:name=>"Crunchie", :code=>"A05", :quantity=>10, :price=>0.70},
         {:name=>"Starbar", :code=>"A06", :quantity=>1, :price=>0.99},
         {:name=>"Snickers", :code=>"A07", :quantity=>7, :price=>0.89},
         {:name=>"Yorkie", :code=>"A08", :quantity=>20, :price=>0.87},
         {:name=>"Toblerone", :code=>"A09", :quantity=>1, :price=>1.99},
         {:name=>"Flake", :code=>"A10", :quantity=>10, :price=>0.27},
         {:name=>"Ready Salted Crisps", :code=>"B01", :quantity=>7, :price=>0.55},
         {:name=>"Sweet Chilli Crisps", :code=>"B02", :quantity=>12, :price=>1.20},
         {:name=>"Smoky Barbecue Crisps", :code=>"B03", :quantity=>10, :price=>0.65},
         {:name=>"Salt and Vinegar Crisps",:code=>"B04", :quantity=>5, :price=>0.60},
         {:name=>"Roast Chicken Crisps", :code=>"B05", :quantity=>10, :price=>0.59},
         {:name=>"Cheese and Onion Crisps", :code=>"B06", :quantity=>0, :price=>0.67},
         {:name=>"Prawn Cocktail Crisps", :code=>"B07", :quantity=>10, :price=>0.77},
         {:name=>"Thai Sweet Chicken Crisps", :code=>"B08", :quantity=>10, :price=>0.88},
         {:name=>"Flamed Steak Crisps", :code=>"B09", :quantity=>10, :price=>0.43},
         {:name=>"Coke", :code=>"C02", :quantity=>50, :price=>0.75},
         {:name=>"Diet Coke", :code=>"C03", :quantity=>50, :price=>0.75},
         {:name=>"Coke Zero", :code=>"C04", :quantity=>0, :price=>0.75},
         {:name=>"Dandelion and Burdock", :code=>"C05", :quantity=>10, :price=>0.68},
         {:name=>"Cream Soda", :code=>"C06", :quantity=>5, :price=>0.69},
         {:name=>"Irn Bru", :code=>"C07", :quantity=>3, :price=>0.79},
         {:name=>"Cherry Coke", :code=>"C08", :quantity=>1, :price=>0.75},
         {:name=>"Orange Soda", :code=>"C09", :quantity=>10, :price=>0.79},
         {:name=>"Parma Violets", :code=>"D01", :quantity=>10, :price=>1.27},
         {:name=>"Refresher Chews", :code=>"D02", :quantity=>10, :price=>4.27},
         {:name=>"Mini Love Hearts", :code=>"D03", :quantity=>10, :price=>2.02},
         {:name=>"Popping Candy", :code=>"D04", :quantity=>10, :price=>1.01},
         {:name=>"Drumstick Lollies", :code=>"D05", :quantity=>10, :price=>5.12},
         {:name=>"Double Candy Lollies", :code=>"D06", :quantity=>10, :price=>10.00},
         {:name=>"Wham Bars", :code=>"D07", :quantity=>10, :price=>50.00},
         {:name=>"Double Dip", :code=>"D08", :quantity=>10, :price=>1.04},
         {:name=>"Candy Sticks", :code=>"D09", :quantity=>10, :price=>2.14},
         {:name=>"Jelly Cubes", :code=>"D10", :quantity=>10, :price=>1.18}]

=begin
# Codewars random tests
machine1 = VendingMachine2.new(10.00)
machine2 = VendingMachine.new(items,10.00)
(0..199).each do |rtest|
  n = rand(11)
  code = "#{"ABCD".split("")[rand(4)]}#{"0" if n < 10}#{n}"
  money = (rand(0.0..20.0)).round(2)
  solution = machine1.vend(code, money)
  Test.it("Random Tests") do
    Test.assert_equals(machine2.vend(code, money), solution, "Should return: '#{solution}'")
  end
end
=end
