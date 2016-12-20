=begin

You have to write a function pattern which returns the following Pattern(See
Examples) upto desired number of rows.

Note:Returning the pattern is not the same as Printing the pattern.
Parameters:

pattern(        n        ,        y        );
                ^                 ^
                |                 |
         Term upto which   Number of times
          Basic Pattern     Basic Pattern
            should be         should be
             created          repeated
                             vertically
Note: Basic Pattern means what we created in Complete The Pattern #12 i.e.
a simple X.

Rules/Note:

The pattern should be created using only unit digits.
If n < 1 then it should return "" i.e. empty string.
If y <= 1 then the basic pattern should not be repeated vertically.
The length of each line is same, and is equal to the length of longest line in
the pattern.
Range of Parameters (for the sake of CW Compiler) :
n ∈ (-∞,50]
y ∈ (-∞,25]
If only one argument is passed then the function pattern should run as if y <= 1
The function pattern should work when extra arguments are passed, by ignoring
the extra arguments.
Examples:

Having Two Arguments-

pattern(4,3):

1     1
 2   2
  3 3
   4
  3 3
 2   2
1     1
 2   2
  3 3
   4
  3 3
 2   2
1     1
 2   2
  3 3
   4
  3 3
 2   2
1     1
pattern(10,2):

1                 1
 2               2
  3             3
   4           4
    5         5
     6       6
      7     7
       8   8
        9 9
         0
        9 9
       8   8
      7     7
     6       6
    5         5
   4           4
  3             3
 2               2
1                 1
 2               2
  3             3
   4           4
    5         5
     6       6
      7     7
       8   8
        9 9
         0
        9 9
       8   8
      7     7
     6       6
    5         5
   4           4
  3             3
 2               2
1                 1

=end

# My Solution
def pattern(n,y=1,*arr)
  return "" if n < 1
  y = 1 if y < 1
  result = []
  1.upto(y) do |go|
    go == 1 ? start = 1 : start = 2
    num = start
    (start).upto(n-1) do |x|
      result << (" " * (x-1)) + "#{num}" + (" " * ((n-x)*2-1)) + "#{num}" + (" " * (x-1)) + "\n"
      num += 1
      num = 0 if num > 9
    end
    result << (" " * (n - 1)) + "#{num}" + (" " * (n - 1)) + "\n"
    num -= 1
    num = 9 if num < 0
    mid = 1
    (n-1).downto(1) do |x|
      result << (" " * (x-1)) + "#{num}" + (" " * ((n-x)*2-1)) + "#{num}" + (" " * (x-1))  + "\n"
      num -= 1
      num = 9 if num < 0
    end
  end
  result.join[0..-2]
end

# Better Solution
def pattern(n=1,y=1, *a)
  return '' unless n > 0
  y = [1,y].max
  h = (1..n).map{|x| (x%10).to_s.rjust(x).ljust(n)}.map{|s|s+s.reverse[1..-1]}
  f = h+h.reverse[1..-1]
  (f[0...-1]*y << f[-1]).join "\n"
end
