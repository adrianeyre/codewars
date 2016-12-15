=begin

Alice and Bob were on a holiday. Both of them took many pictures of the places
they've been, and now they want to show Charlie their entire collection.
However, Charlie doesn't like this sessions, since the motive usually repeats.
He isn't fond of seeing the Eiffel tower 40 times. He tells them that he will
only sit during the session if they show the same motive at most N times.
Luckily, Alice and Bob are able to encode the motive as a number. Can you help
them to remove numbers such that their list contains each number only up to N
times, without changing the order?

Task

Given a list lst and a number N, create a new list that contains each number of
lst at most N times without reordering. For example if N = 2, and the input is
[1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would
lead to 1 and 2 being in the result 3 times, and then take 3, which leads to
[1,2,3,1,2,3].

Example

  delete_nth ([1,1,1,1],2) # return [1,1]

  delete_nth ([20,37,20,21],1) # return [20,37,21]

=end

# My Solution
def delete_nth(order,max_e)
  result = []
  new_hash = Hash.new {|value,key| value[key] = 0}
  order.each do |x|
    new_hash[x] += 1
    result << x if new_hash[x] <= max_e
  end
  result
end

# Better Solution
def delete_nth(order, max_e)
  occurrences = Hash.new(0)
  order.reject { |item| (occurrences[item] += 1) > max_e }
end
