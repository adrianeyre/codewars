# You will be provided with 3 numbers. num1, num2 and a target number target.
# Your job is to write a program that will return the correct operator to get
# num1 and num2 to the target variable.
#
# It can return either: add, subtract, multiply or divide appropriately.

# My Solution
def get_op(num1, num2, target):
    if num1 + num2 == target: return "add"
    if num1 - num2 == target: return "subtract"
    if num1 * num2 == target: return "multiply"
    return "divide"
