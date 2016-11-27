=begin

This kata is all about adding numbers.

You will create a function named add. This function will return the
sum of all the arguments. Sounds easy, doesn't it??

Well here's the twist. The inputs will gradually increase with
their index as parameter to the function.

  add(3,4,5) #returns (3*1)+(4*2)+(5*3)=26
Remember the function will return 0 if no arguments are passed.

Example

  add() #=> 0
  add(1,2,3) #=> 14
  add(1,4,-5,5) #=> 14

=end

# My Solution
def add(*args)
  @x = 0
  args.each_with_index {|num,index| @x += num * (index+1)}
  return @x
end

# Better Solution
def add(*args)
  args.map.with_index(1){|a,i| a*i}.reduce(:+) || 0
end
