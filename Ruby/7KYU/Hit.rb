def counter_effect(hit_count)
    result = []
    hit_count.split("").each{|i| result << (0..i.to_i).map{|a|a}}
    result
end