=begin

A string is considered to be in title case if each word in the string is either
(a) capitalised (that is, only the first letter of the word is in upper case) or
(b) considered to be an exception and put entirely into lower case unless it is
the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional
list of exceptions (minor words). The list of minor words will be given as a
string with each word separated by a space. Your function should ignore the case
of the minor words string -- it should behave in the same way even if the case
of the minor word string is changed.

Arguments (Haskell)

First argument: space-delimited list of minor words that must always be
lowercase except for the first word in the string.
Second argument: the original string to be converted.
Arguments (Other languages)

First argument (required): the original string to be converted.
Second argument (optional): space-delimited list of minor words that must always
be lowercase except for the first word in the string.
The JavaScript/CoffeeScript tests will pass undefined when this argument
is unused.

Example

title_case('a clash of KINGS', 'a an the of') # return: 'A Clash of Kings'
title_case('the quick brown fox') # return: 'The Quick Brown Fox'

=end

# My Solution
def title_case(title, minor_words="")
  result = []
  minor_words = minor_words.downcase.split(" ")
  title.split(" ").each_with_index do |x,i|
    if (minor_words.include? x.downcase) && (i != 0)
      result << x.downcase
    else
      result << x.capitalize
    end
  end
  result.join(" ")
end

# Better Solution
def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end
