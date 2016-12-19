=begin



=end

# My Solution
=begin
def order_weight(strng)
  weight = Hash.new {|value,key| value[key] = 0}
  original = {}
  strng = strng.to_s.split(" ")
  #p strng
  convert = strng
  #p convert
  strng.to_s.split(" ").sort.reverse.each_with_index do |x,i|
    x.split("").each do |y|
      weight[i] += y.to_i
      original[i]
    end
    #original[i] = x.to_i
  end
  #p original
  convert = strng.sort
  p strng
  p original
  p Hash[weight.sort_by{|k, v| v}]
  #p weight
  p convert
end
=end

def order_weight(strng)
  weight = Hash.new {|value,key| value[key] = 0}
  weightArray = []
  strng = strng.to_s.split(" ").sort
  strng.each_with_index do |x,i|
    num = 0
    x.split("").each do |y|
      num += y.to_i
    end
    weight[x] = num
  end
  p strng
  p weight
  Hash[weight.sort_by{|k, v| v}].each do |v,k|
    puts "v=#{v}   k=#{k}"
    weightArray.push([k,v])
  end
  p weightArray
  #p Hash[weight.sort_by{|k, v| v}]
end

order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")
#              "11 11 2000 10003 22 123 1234000 44444444 9999"
