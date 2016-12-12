def count_vegetables(s)
  new_array = []
  new_hash = Hash.new {|value, key| value[key] = 0}

  s.split(" ").each {|x| new_hash[x] += 1}

  new_hash = new_hash.sort_by {|k, v| [v, k] }
  #new_hash = new_hash.sort {|a1,a2| a2[1]<=>a1[1]}
  #new_hash = new_hash.sort.reverse
  new_hash.each do |value,key|
    temp = []
    temp << key << value
    new_array << temp
  end
  new_array
end

p s1 = "potato tofu cucumber cabbage turnip pepper onion carrot celery mushroom potato tofu cucumber cabbage"
count_vegetables(s1)
