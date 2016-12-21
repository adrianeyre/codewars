=begin

altERnaTIng cAsE <=> ALTerNAtiNG CaSe

Define to_alternating_case(char*) such that each lowercase letter becomes
uppercase and each uppercase letter becomes lowercase

=end

# My Solution
class String
  def to_alternating_case
    self.split("").map {|x| x == x.upcase ? x.downcase : x.upcase}.join
  end
end

# Better Solution
class String
  def to_alternating_case
    swapcase
  end
end
