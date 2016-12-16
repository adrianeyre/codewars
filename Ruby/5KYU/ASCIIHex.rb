=begin

Write a module Converter that can take ASCII text and convert it to hexadecimal.
The class should also be able to take hexadecimal and convert it to ASCII text.

Example

Converter.to_hex("Look mom, no hands")
=> "4c6f6f6b206d6f6d2c206e6f2068616e6473"

Converter.to_ascii("4c6f6f6b206d6f6d2c206e6f2068616e6473")
=> "Look mom, no hands"

=end

# My Solution
module Converter
  def self.to_ascii(hex)
    [hex].pack('H*')
  end

  def self.to_hex(ascii)
    result = ""
    ascii.split("").each {|x| result += ("%02X" % [x.ord]).downcase}
    result
  end
end

# Better Solution
module Converter
  def self.to_ascii(hex)
    [hex].pack("H*")
  end

  def self.to_hex(ascii)
   ascii.unpack("H*")[0]
  end
end
