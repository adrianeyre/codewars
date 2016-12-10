=begin

Given n representing the number of floors build a beautiful multi-million
dollar mansions like the ones in the example below:

/*
     /\
    /  \
   /    \
  /______\  // number of floors 3
  |      |
  |      |
  |______|

     /\
    /  \
   /____\
   |    |   // 2 floors
   |____|

     /\
    /__\    // 1 floor
    |__|

*/

=end

# My Solution
def my_crib(n)
  house = ""
  # Top of roof
  house << (" " * n) + "/\\" + (" " * n) + "\n"

  # Middle of roof
  1.upto(n-1) do |x|
    num = (n-1)-(x-1)
    house << (" " * num) + "/" + (" " * (x * 2)) + "\\" + (" " * num) + "\n"
  end

  # Top of house
  house << "/" + ("_" * (n*2)) + "\\\n"

  # Middle of house
  1.upto(n-1) do |x|
    house << "|" + (" " * (n * 2)) + "|\n"
  end

  # Bottom of house
  house << "|" + ("_" * (n*2)) + "|"

  house
end

# Another Solution
def my_crib(n)
  "".tap do |house|
    n.downto(1) do |i|
      house << " " * i + "/" + " " * (n-i)*2 + "\\" + " " * i + "\n"
    end
    house << "/" + "_" * (n*2) + "\\\n"
    (n-1).times do
      house << "|" + " " * (n*2) + "|\n"
    end
    house << "|" + "_" * (n*2) + "|"
  end
end
