=begin
def mix(s1, s2)
  s3 = Hash.new {|data,key| data[key] = 0}
  s1_hash = Hash.new {|data,key| data[key] = 0}
  s1.split("").each {|x| s1_hash[x] += 1 if x =~ /[a-z]/}
  s1_hash.each {|x,y| s1_hash.delete(x) if y == 1}
  s3 = s1_hash.sort_by {|k, v| [v, k] }
  s3 = s3.reverse.to_h
  p s3

  s4 = Hash.new {|data,key| data[key] = 0}
  s2_hash = Hash.new {|data,key| data[key] = 0}
  s2.split("").each {|x| s2_hash[x] += 1 if x =~ /[a-z]/}
  s2_hash.each {|x,y| s2_hash.delete(x) if y == 1}
  s4 = s2_hash.sort_by {|k, v| [v, k] }
  s4 = s4.reverse.to_h
  p s4

  result = []
  (s3.keys | s4.keys).each do |k|
    if s3[k] == nil || s4[k] == nil
      if s4[k] == nil
        result << "1:" + (k * s3[k])
      else
        result << "2:" + (k * s4[k])
      end
    else
      if s3[k] > s4[k]
        result << "1:" + (k * s3[k])
      else
        result << "2:" + (k * s4[k])
      end
    end
  end
  result.join("/")
end
=end
def mix(s1, s2)
 s1_hash = Hash.new {|v,k| v[k] = 0}
 s2_hash = Hash.new {|v,k| v[k] = 0}

 s1.split("").each {|x| s1_hash[x] += 1 if x =~ /[a-z]/}
 s2.split("").each {|x| s2_hash[x] += 1 if x =~ /[a-z]/}

 #p s1_hash
 #p s2_hash

 result = []
 high = 0
 ("a".."z").each do |x|
   result << [1, x, s1_hash[x]] if s1_hash[x] > s2_hash[x] && s1_hash[x] > 1
   result << [2, x, s2_hash[x]] if s2_hash[x] > s1_hash[x] && s2_hash[x] > 1
   result << [0, x, s1_hash[x]] if s1_hash[x] == s2_hash[x] && s1_hash[x] > 1
   high = s1_hash[x] if s1_hash[x] > high
   high = s2_hash[x] if s2_hash[x] > high
 end

 output = []
 p result
 puts
 #p result = result.sort_by! {|a,b,c| b}.reverse
 #result.sort_by {|a,b,c| c}.reverse.each do |x|
 (high).downto(2) do |n|
   temp = []
   result.each do |x|
     if x[2] == n && x[0] != 0
       temp << [x[0],x[1],x[2]]
     end
   end
   temp = temp.sort_by! {|a,b,c| b}
   temp.each do |x|
     #puts "1=#{x[0]} 2=#{x[1]} 3=#{x[2]}"
     x[0] == 0 ? m = "=" : m = x[0].to_s
     output << "#{m}:#{x[1]*x[2]}"
   end
   temp = []
   result.each do |x|
     if x[2] == n && x[0] == 0
       temp << [x[0],x[1],x[2]]
     end
   end
   temp = temp.sort_by! {|a,b,c| b}
   temp.each do |x|
     #puts "1=#{x[0]} 2=#{x[1]} 3=#{x[2]}"
     x[0] == 0 ? m = "=" : m = x[0].to_s
     output << "#{m}:#{x[1]*x[2]}"
   end
 end

 output.join("/")
end

s1 = "A fffff aaaa bb cc"
s2 = "& aaa bbb c d"

p mix("Are they here", "yes, they are here")
