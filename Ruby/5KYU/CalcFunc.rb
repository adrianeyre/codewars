=begin

This time we want to write calculations using functions and get the results.
Let's have a look at some examples:

seven(times(five)) # must return 35
four(plus(nine)) # must return 13
eight(minus(three)) # must return 5
six(divided_by(two)) # must return 3
Requirements:

There must be a function for each number from 0 ("zero") to 9 ("nine")
There must be a function for each of the following mathematical operations:
plus, minus, times, dividedBy (divided_by in Ruby)
Each calculation consist of exactly one operation and two numbers
The most outer function represents the left operand, the most inner function
represents the right operand

=end

# My Solution
def zero(op="")
  return 0 if op == ""
  check(0,op[1].to_i,op[0])
end
def one(op="")
  return 1 if op == ""
  check(1,op[1].to_i,op[0])
end
def two(op="")
  return 2 if op == ""
  check(2,op[1].to_i,op[0])
end
def three(op="")
  return 3 if op == ""
  check(3,op[1].to_i,op[0])
end
def four(op="")
  return 4 if op == ""
  check(4,op[1].to_i,op[0])
end
def five(op="")
  return 5 if op == ""
  check(5,op[1].to_i,op[0])
end
def six(op="")
  return 6 if op == ""
  check(6,op[1].to_i,op[0])
end
def seven(op="")
  return 7 if op == ""
  check(7,op[1].to_i,op[0])
end
def eight(op="")
  return 8 if op == ""
  check(8,op[1].to_i,op[0])
end
def nine(op="")
  return 9 if op == ""
  check(9,op[1].to_i,op[0])
end
def plus(num,num2="")
  return "+#{num}" if num2 == ""
  return num + num2
end
def minus(num,num2="")
  return "-#{num}" if num2 == ""
  return num - num2
end
def times(num,num2="")
  return "*#{num}" if num2 == ""
  return num * num2
end
def divided_by(num,num2="")
  return "/#{num}" if num2 == ""
  return num.to_f / num2.to_f
end
def check (num1, num2, op)
  case op
  when "+" ; plus(num1,num2)
  when "-" ; minus(num1,num2)
  when "*" ; times(num1,num2)
  when "/" ; divided_by(num1,num2)
  end
end

# Better Solution
class Object
  %w[zero one two three four five six seven eight nine].each_with_index do |name, n|
    define_method(name) do |args = nil|
      args ? n.send(*args) : n.to_f
    end
  end

  %w[plus + minus - times * divided_by /].each_slice(2) do |name, symbol|
    define_method(name) do |n|
      [symbol, n]
    end
  end
end
