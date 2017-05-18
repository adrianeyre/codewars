def most_frequent_item_count(c)
  c.count(c.max_by{|x| c.count(x)})
end