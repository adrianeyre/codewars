=begin

Triangular numbers are so called because of the equilateral triangular shape
that they occupy when laid out as dots. i.e.

1st (1)   2nd (3)    3rd (6)
*          **        ***
           *         **
                     *
You need to return the nth triangular number. You should return 0 for out of
range values:

  triangular(0)==0,
  triangular(2)==3,
  triangular(3)==6,
  triangular(-10)==0

=end

# My Solution
def triangular( n )
  num = 0
  1.upto(n) {|x| num += x}
  num
end

# Better Solution
def triangular( n )
  n < 0 ? 0 : (n*n+n)/2
end

# Another Solution
def triangular(n)
  (1..n).reduce(0, &:+)
end
