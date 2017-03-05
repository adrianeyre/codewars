# For this problem you must create a program that says who ate the last cookie.
# If the input is a string then "Zach" ate the cookie. If the input is a float or
# an int then "Monica" ate the cookie. If the input is anything else "the dog" ate
# the cookie. The way to return the statement is: "Who ate the last cookie?
# It was (name)!"
#
# Ex: Input = "It was Monica" --> Output = "Who ate the last cookie? It was Zach!
# (The reason you return Zach is because the input is a string)
#
# Note: Make sure you return the correct message with correct spaces and punctuation.

# My Solution
def cookie(x):
    if type(x) is str: return "Who ate the last cookie? It was Zach!"
    if type(x) is int or type(x) is float: return "Who ate the last cookie? It was Monica!"
    return "Who ate the last cookie? It was the dog!"
