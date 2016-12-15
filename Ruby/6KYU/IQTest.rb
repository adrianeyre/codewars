=begin

Bob is preparing to pass IQ test. The most frequent task in this test is to find
out which one of the given numbers differs from the others. Bob observed that
one number usually differs from the others in evenness. Help Bob — to check his
answers, he needs a program that among the given numbers finds one that is
different in evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means
indexes of the elements start from 1 (not 0)

Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers
are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers
are odd

=end

# My Solution
def iq_test(numbers)
  odd_val = []
  even_val = []
  numbers.split(" ").each_with_index {|x,i| x.to_i.odd? ? odd_val << i+1 : even_val << i+1}
  odd_val.length == 1 ? odd_val[0] : even_val[0]
end

# Better Solution
def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end
