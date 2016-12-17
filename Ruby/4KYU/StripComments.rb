=begin

Complete the solution so that it strips all text that follows any of a set of
comment markers passed in. Any whitespace at the end of the line should also be
stripped out.

Example:

Given an input string of:

apples, pears # and bananas
grapes
bananas !apples
The output expected would be:

apples, pears
grapes
bananas
The code would be called like so:

solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
should == "apples, pears\ngrapes\nbananas"

=end

# My Solution
def solution(input, markers)
  input = input.split("\n")
  result = []
  input.each do |x|
    line = ""
    0.upto(x.length-1) do |a|
      if markers.include? x[a]
        break
      else
        line += x[a]
      end
    end
    result << line.strip
  end
  result.join("\n")
end

# Better Solution
def solution(input, markers)
  input.gsub(/\s+[#{markers.join}].*/, "")
end
