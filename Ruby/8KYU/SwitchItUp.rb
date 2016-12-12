=begin

When provided with a number between 0-9, return it in words.

Input :: 1

Output :: "One".

Try using "Switch" statements.

=end

# My Solution
def switch_it_up(number)
  %w"Zero One Two Three Four Five Six Seven Eight Nine"[number]
end
