=begin

Given a map of words and their translations, generate a list of all possible
unique combinations of translations, sorted lexically.

For example, given the map of words:

words = {
  life:   %w{ vida vie Leben },
  death:  %w{ muerte mort Tode }
}
The method should return the result:

 {
  life: [
    ['Leben'],
    ['Leben', 'vida'],
    ['Leben', 'vida', 'vie'],
    ['Leben', 'vie'],
    ['vida'],
    ['vida', 'vie'],
    ['vie']
  ],
  death: [
    ['Tode'],
    ['Tode', 'mort'],
    ['Tode', 'mort', 'muerte'],
    ['Tode', 'muerte'],
    ['mort'],
    ['mort', 'muerte'],
    ['muerte']
  ]
}

=end

# My Solution
def possibilities(words)
  l = [] ; d = []; temp = []
  (1..words[:life].length).each do |x|
    temp = words[:life].to_a.combination(x).to_a
    l += temp.each {|x| x.sort!}
  end
  words[:life] = l.sort!

  (1..words[:death].length).each do |x|
    temp = words[:death].to_a.combination(x).to_a
    d += temp.each {|x| x.sort!}
  end
  words[:death] = d.sort!

  {:life=>words[:life], :death=>words[:death]}
end

# Better Solution
def possibilities(words)
  Hash[words.map { |k,v|
    [k, v.sort.repeated_combination(v.size).map(&:uniq).uniq.sort]
  }]
end
