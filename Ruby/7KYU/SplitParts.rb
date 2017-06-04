def split_in_parts (s, p)
  (0...s.length).step(p).map {|w| s[w...w+p]}.join(" ")
end