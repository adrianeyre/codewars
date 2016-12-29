=begin

You will be given a string (x) featuring a cat 'C' and a mouse 'm'. The rest of
the string will be made up of '.'.

You need to find out if the cat can catch the mouse from it's current position.
The cat can jump three characters. So:

C.....m returns 'Escaped!' <-- more than three characters between

C...m returns 'Caught!' <-- as there are three characters between the two, the
cat can jump.

=end

# My Solution
def cat_mouse(x)
  c = 0 ; m = 0
  x.split("").each_with_index do |x,i|
    c = i if x == "C"
    m = i if x == "m"
  end
  m - c - 1 <= 3 ? "Caught!" : "Escaped!"
end

# Better Solution
def cat_mouse(x)
  x.include?('....') ? 'Escaped!' : 'Caught!'
end

# Another Solution
def cat_mouse(x)
  x.split("").count(".") > 3 ? "Escaped!" : "Caught!"
end

# Another Solution
def cat_mouse(x)
  x =~ /C\.{0,3}m/ ? (return "Caught!") : (return "Escaped!")
end
