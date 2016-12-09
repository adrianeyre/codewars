=begin

When given input such as "aabbcc", return the following string format a2b2c2

The goal is to count all the letters that appear in that string.

=end

# My Solution
def compress(input)
  result = "" ; final = ""
  new_hash = Hash.new {|x,k| x[k] = 0}
  input.split("").each {|x| new_hash[x] += 1}

  result = input.split("").to_a.uniq
  result.each {|x| final += "#{x}#{new_hash[x]}"}
  final
end

# Better Soltuion
def compress(input)
  input = input.split ''
  input.uniq.inject(""){|r,x|r<<"#{x}#{input.count x}"}
end

# Another Soltuion
def compress(input)
  input.split('').uniq.map{ |c| c+input.count(c).to_s }.join
end

# Another Solution
def compress(input)
  input.split('').map{ |x| "#{x}#{input.split('').count(x)}" }.uniq.join('')
end
