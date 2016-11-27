=begin

Given a string made up of letters a, b, and/or c,
switch the position of letters a and b
(change a to b and vice versa). Leave any incidence
of c untouched.

Example:

'acb' --> 'bca'
'aabacbaa' --> 'bbabcabb'

=end

# My Solution
def switcheroo(x)
  word = ""
  x.split("").each do |l|
    if l == 'a'
      word += 'b'
    elsif l == 'b'
      word += 'a'
    else
      word += l
    end
  end
  word
end

# Better Solution
def switcheroo(x)
  x.tr('ab','ba')
end
