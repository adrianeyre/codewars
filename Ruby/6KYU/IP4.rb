=begin

Implement String#ipv4_address?, which should return true if given object is an
IPv4 address - four numbers (0-255) separated by dots.

It should only accept addresses in canonical representation, so no leading 0s,
spaces etc.

=end

# My Solution
class String
  def ipv4_address?
    result = 0
    result += 10 if self[-1] =~ /[\D]/
    self.split(".").each do |x|
      result += 10 if x =~ /.*[\D].*/
      result += 10 if x[0] == "0" && x[1] != nil
      result += 10 if x == ""
      if x.to_i >= 0 && x.to_i <= 255
        result += 1
      end
    end
    result == 4 ? true : false
  end
end

# Better Solution
class String
  def ipv4_address?
    byte = /(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])/
    !!(self =~ /\A#{byte}\.#{byte}\.#{byte}\.#{byte}\z/)
  end
end

# Another Solution
class String
  def ipv4_address?
    /\A(([1-9]?\d|1\d\d|2[0-4]\d|25[0-5])(\.(?!$)|$)){4}\z/ === self
  end
end
