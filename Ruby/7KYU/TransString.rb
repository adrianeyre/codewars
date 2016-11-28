=begin

You will be given an array that contains two strings.
Your job is to create a function that will take those
two strings and transpose them, so that the strings
go from top to bottom instead of left to right.

e.g. transposeTwoStrings(['Hello','World']);

should return

H W
e o
l r
l l
o d
A few things to note:

There should be one space in between the two characters

You don't have to modify the case (i.e. no need to change
to upper or lower)

If one string is longer than the other, there should be
a space where the character would be

=end

# My Solution
def transpose_two_strings(arr)
  newarr = ""
  arr[0].length > arr[1].length ? arrlen = arr[0].length : arrlen = arr[1].length
  arrlen.times do |char|
    arr[0][char] == nil ? a = " " : a = arr[0][char]
    arr[1][char] == nil ? b = " " : b = arr[1][char]
    newarr += "#{a} #{b}\n"
  end
  newarr[0..-2].to_s
end

# Better Solution
def transpose_two_strings(arr)
  max_length = arr.map(&:length).max
  arr.map { |s| s.ljust(max_length).chars }.transpose.map { |s| s.join(" ") }.join("\n")
end

# Other Solution
def transpose_two_strings(arr)
  (0...arr.map(&:length).max).map{|i| "#{arr[0][i] || " "} #{arr[1][i] || " "}"}.join("\n")
end
