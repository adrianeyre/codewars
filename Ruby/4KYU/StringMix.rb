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


s1 = "A aaaa bb c"
s2 = "& aaa bbb c d"

puts mix("Are they here", "yes, they are here")
