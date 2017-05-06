def order_word(s)
  s == '' || s == nil ? "Invalid String!" : s.split('').sort.join
end