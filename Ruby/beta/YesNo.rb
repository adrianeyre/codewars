def yes_no(arr)
  result = []
  p arr
  loop do
    new_result = []
    if arr.length != 2
      arr.each_with_index {|x,i| new_result << x if i.even?}
    else
      arr.each_with_index {|x,i| new_result << x if i.odd?}
    end
    #arr.each {|x| result << x if x.even?}
    arr = arr - new_result

    p arr
    #arr.each {|x| new_result << x if x.odd?}
    result << new_result
    break if arr.length < 1
    #p result.flatten
  end
  result.flatten
end

p yes_no(['this', 'code', 'is', 'right', 'the'])
