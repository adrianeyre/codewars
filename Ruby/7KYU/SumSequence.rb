=begin

Your task is to make function, which returns the sum of a sequence of integers.

The sequence is defined by 3 non-negative values: begin, end, step.

If begin value is greater than the end, function should returns 0

=end

# My Solution
def sequence_sum(s, f, step)
  return 0 if s > f
  (s..f).step(step).each.inject(:+)
end

# Better Solution
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).reduce(0, :+)
end
