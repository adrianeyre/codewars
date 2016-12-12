=begin

Chingel was creating a function which would return true if the input followed
this time format 14-10-2016 01:12 and false otherwise. But looks like he has
messed it up. Could you help him out? Please!

=end

# My Solution
def is_it_bugged(code)
  code =~ /^[0-3][0-9]-[0-1][0-9]-[0-9]{4} [0-2][0-9]:[0-5][0-9]$/ ? true : false
end

# Better Solution
def is_it_bugged(code)
 return !! (code =~ /^\d\d\-\d\d\-\d\d\d\d\s\d\d\:\d\d$/)
end

# Another Solution
def is_it_bugged(code)
/\A\d{2}-\d{2}-\d{4} \d{2}:\d{2}\z/ === code
end
