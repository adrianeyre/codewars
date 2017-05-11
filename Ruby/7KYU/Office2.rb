def boredom(staff)
  scores = {'accounts'=>1,'finance'=>2, 'canteen'=>10, 'regulation'=>3, 'trading'=>6, 'change'=>6, 'IS'=>8, 'retail'=>5, 'cleaning'=>4, 'pissing about'=>25}
  total = 0
  staff.each {|name, dept| total += scores[dept]}
  total <= 80 ? "kill me now" : total < 100 ? "i can handle this" : "party time!!"
end