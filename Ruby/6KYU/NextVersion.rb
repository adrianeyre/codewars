=begin

Description:

You're fed up about changing the version of your software manually.
Instead, you will create a little script that will make it for you.

Exercice

Create a function nextVersion, that will take a string in parameter,
and will return a string containing the next version number.

For example:

nextVersion("1.2.3") === "1.2.4";
nextVersion("0.9.9") === "1.0.0.";
nextVersion("1") === "2";
nextVersion("1.2.3.4.5.6.7.8") === "1.2.3.4.5.6.7.9";
nextVersion("9.9") === "10.0";
Rules

All numbers, except the first one, must be lower than 10: if there are,
you have to set them to 0 and increment the next number in sequence.

You can assume all tests inputs to be valid.

=end

# My Solution
def nextVersion(version)
  return_string = ""
  new_hash = {}

  new_arr = version.split(".")
  new_arr.each_with_index {|n,i| new_hash[i] = n.to_i}
  new_hash[new_arr.length-1] += 1

  (new_arr.length-1).downto(1) do |i|
    if new_hash[i] > 9
      new_hash[i] = 0
      new_hash[i-1] += 1
    end
  end
  p new_hash
  0.upto(new_arr.length-1) do |i|
    x = i.to_i
    return_string += "#{new_hash[x]}."
  end
  return_string[0..-2]
end

# Better Solution
def nextVersion(version)
  version.succ
end

# Another Solution
def nextVersion(version)
  dots = version.count('.')
  next_version = version.delete('.').to_i + 1
  next_version = next_version.to_s.chars
  dots.times do |i|
    next_version.insert(-2-i*2, '.')
  end
  next_version.join
end
