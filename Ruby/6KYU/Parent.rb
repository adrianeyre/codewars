def find_children(dancing_brigade)
  dancing_brigade.chars.sort_by { |char| [char.downcase, char] }.join
end