=begin

Personalized greeting

Create a function that gives a personalized greeting.
This function takes two parameters: name and owner.

Use conditionals to return the proper message:

case	                     return
name equals owner	         'Hello boss'
otherwise	                 'Hello guest'

=end

# Condition to check if name = owner
# If TRUE return 'Hello boss'
# Else return 'Hello guest'

def greet(name,owner)
  name == owner ? 'Hello boss' : 'Hello guest'
end
