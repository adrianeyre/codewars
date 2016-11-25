=begin

Suzuki needs help lining up his students!

Today Suzuki will be interviewing his students to ensure they are progressing in their training. He decided to schedule the interviews based on the length of the students name in descending order. The students will line up and wait for their turn.

You will be given a string of student names. Sort them and return a list of names in descending order.

=end

students = 'Tadashi Takahiro Takao Takashi Takayuki Takehiko Takeo Takeshi Takeshi'

# Split the string into and array where it find a ' '
# Sort by length with .sort_by
# Reverse the results with .reverse

puts students.split(' ').sort_by{|str| str.length}.reverse
