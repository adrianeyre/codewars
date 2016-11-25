=begin

For every good kata idea there seem to be quite a few bad ones!

In this kata you need to check the provided array (x)
for good ideas 'good' and bad ideas 'bad'. If there are
one or two good ideas, return 'Publish!', if there are
more than 2 return 'I smell a series!'. If there are no
good ideas, as is often the case, return 'Fail!'.

=end

# My solution
def well(x)
  good = 0
  x.each do |a|
    good += 1 if a == 'good'
  end
  if good > 2
    return 'I smell a series!'
  elsif good > 0
    return 'Publish!'
  else
    return 'Fail!'
  end
end

# Better solution
def well(x)
  goods = x.count('good')
  goods > 2 ? 'I smell a series!' : goods > 0 ? 'Publish!' : 'Fail!'
end
