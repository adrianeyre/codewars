=begin

Count the number of exclamation marks and question marks, return the product.
The string only contains ! and ?.
Examples

product("") === 0
product("!") === 0
product("!!") === 0
product("!??") === 2
product("!???") === 3
product("!!!??") === 6
product("!!!???") === 9
product("!???!!") === 9
product("!????!!!?") === 20

=end

# My Solution
def product(s)
  s.count("!") * s.count("?")
end
