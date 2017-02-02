class VendingMachine():

    def __init__(self, items, money):
        self.items = items
        self.money = float(money)

    def vend(self, selection, item_money):
        for item in range(len(self.items)):
            if self.items[item]['code'].lower() == selection.lower():
                if item_money < self.items[item]['price']: return "Not enough money!"
                if self.items[item]['quantity'] - 1 < 0: return "{name}: Out of stock!".format(name=self.items[item]['name'])
                change = self.items[item]['price']-item_money
                self.money = self.money + self.items[item]['price']
                self.items[item]['quantity'] = self.items[item]['quantity'] - 1
                result = "Vending {vending}".format(vending=self.items[item]['name'])
                if item_money > self.items[item]['price']: result = result + " with {changegive} change.".format(changegive=format(abs(change), '.2f'))
                return result
        return "Invalid selection! : Money in vending machine = {moneychange}".format(moneychange=format(self.money, '.2f'))


items = [{'name': "Smarties", 'code': "A01", 'quantity': 10, 'price': 0.60},
         {'name':"Caramac Bar", 'code':"A02", 'quantity':5, 'price':0.60},
         {'name':"Dairy Milk", 'code':"A03", 'quantity':1, 'price':0.65},
         {'name':"Freddo", 'code':"A04", 'quantity':1, 'price':0.25},
         {'name':"Crunchie", 'code':"A05", 'quantity':10, 'price':0.70},
         {'name':"Starbar", 'code':"A06", 'quantity':1, 'price':0.99},
         {'name':"Snickers", 'code':"A07", 'quantity':7, 'price':0.89},
         {'name':"Yorkie", 'code':"A08", 'quantity':20, 'price':0.87},
         {'name':"Toblerone", 'code':"A09", 'quantity':1, 'price':1.99},
         {'name':"Flake", 'code':"A10", 'quantity':10, 'price':0.27},
         {'name':"Ready Salted Crisps", 'code':"B01", 'quantity':7, 'price':0.55},
         {'name':"Sweet Chilli Crisps", 'code':"B02", 'quantity':12, 'price':1.20},
         {'name':"Smoky Barbecue Crisps", 'code':"B03", 'quantity':10, 'price':0.65},
         {'name':"Salt and Vinegar Crisps",'code':"B04", 'quantity':5, 'price':0.60},
         {'name':"Roast Chicken Crisps", 'code':"B05", 'quantity':10, 'price':0.59},
         {'name':"Cheese and Onion Crisps", 'code':"B06", 'quantity':0, 'price':0.67},
         {'name':"Prawn Cocktail Crisps", 'code':"B07", 'quantity':10, 'price':0.77},
         {'name':"Thai Sweet Chicken Crisps", 'code':"B08", 'quantity':10, 'price':0.88},
         {'name':"Flamed Steak Crisps", 'code':"B09", 'quantity':10, 'price':0.43},
         {'name':"Coke", 'code':"C02", 'quantity':50, 'price':0.75},
         {'name':"Diet Coke", 'code':"C03", 'quantity':50, 'price':0.75},
         {'name':"Coke Zero", 'code':"C04", 'quantity':0, 'price':0.75},
         {'name':"Dandelion and Burdock", 'code':"C05", 'quantity':10, 'price':0.68},
         {'name':"Cream Soda", 'code':"C06", 'quantity':5, 'price':0.69},
         {'name':"Irn Bru", 'code':"C07", 'quantity':3, 'price':0.79},
         {'name':"Cherry Coke", 'code':"C08", 'quantity':1, 'price':0.75},
         {'name':"Orange Soda", 'code':"C09", 'quantity':10, 'price':0.79},
         {'name':"Parma Violets", 'code':"D01", 'quantity':10, 'price':1.27},
         {'name':"Refresher Chews", 'code':"D02", 'quantity':10, 'price':4.27},
         {'name':"Mini Love Hearts", 'code':"D03", 'quantity':10, 'price':2.02},
         {'name':"Popping Candy", 'code':"D04", 'quantity':10, 'price':1.01},
         {'name':"Drumstick Lollies", 'code':"D05", 'quantity':10, 'price':5.12},
         {'name':"Double Candy Lollies", 'code':"D06", 'quantity':10, 'price':10.00},
         {'name':"Wham Bars", 'code':"D07", 'quantity':10, 'price':50.00},
         {'name':"Double Dip", 'code':"D08", 'quantity':10, 'price':1.04},
         {'name':"Candy Sticks", 'code':"D09", 'quantity':10, 'price':2.14},
         {'name':"Jelly Cubes", 'code':"D10", 'quantity':10, 'price':1.18}]

# # Codewars Random Tests
# import random
# test.describe("Random tests")
# machine1 = VendingMachine2(items2, 10.0)
# machine2 = VendingMachine(items, 10.0)
# for rtest in range(200):
#     n = random.randint(0,11)
#     code = "A B C D".split(" ")[random.randint(0,3)]
#     if n < 10:
#         code = code + "0" + str(n)
#     else:
#         code = code + str(n)
#     money = round(random.uniform(0.0,20.0),2)
#     solution = machine1.vend(code, money)
#     test.it("Expect to be {sol}".format(sol=solution))
#     test.assert_equals(machine2.vend(code, money), solution)
