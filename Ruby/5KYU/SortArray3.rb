=begin

This time the input is an array of course-ids that are formatted in the
following way:

name-yymm
The return of the function shall first be sorted by yymm, then by the name
(which varies in length).

=end

# My Solution
def sortme(courses)
  result = []
  final = []
  courses.each do |x|
    s,f = x.split("-")
    result << [f,s]
  end
  final = result.sort_by {|a,b| a+b}
  result = []
  final.each {|x| result << [x[1]+"-"+x[0]]}
  result.flatten
end

# Better Solution
def sortme(courses)
  courses.sort_by{|a| a.split('-').reverse}
end
