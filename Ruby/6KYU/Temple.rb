=begin

You've made it through the moat and up the steps of knowledge. You've won the
temples games and now you're hunting for treasure in the final temple run.
There's good news and bad news. You've found the treasure but you've triggered a
nasty trap. You'll surely perish in the temple chamber.

With your last movements, you've decided to draw an "X" marks the spot for the
next archeologist.

Given an odd number, n, draw an X for the next crew. Follow the example below.

If n = 1 return 'X\n' and if you're given an even number or invalid input,
return '?'.

The output should be a string with no spaces after the final X on each line,
but a \n to indicate a new line.

=end

# My Solution
def mark_spot(n)
  return "?" if !n.is_a? Integer
  return "?" if n.even? || n < 1
  num1 = n * 2 - 3
  num2 = 0
  result = ""
  while num1 > 2
    result += (" " * num2) + "X" + (" " * num1) + "X\n"
    num1 -= 4 ; num2 += 2
  end
  result += (" " * num2) + "X\n"
  while num1 < n*2-3
    num1 += 4 ; num2 -= 2
    result += (" " * num2) + "X" + (" " * num1) + "X\n"
  end
  result
end

# Better Solution
def mark_spot(n)
  return '?' if !n.is_a?(Fixnum) || n.even? || n<1
  a=(0..n/2-1).map{|i|' '*2*i+'X'+' '*(2*n-3-4*i)+'X'+"\n"}
  a << ' '*(n-1)+'X'+"\n"
  a << a[0..-2].reverse
  return a.join
end
