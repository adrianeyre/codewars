=begin



=end

# My Solution
def anchorize(text)
  start,url,endText = text.match(/(^.*)\s(.*)\s(.*)/i).captures
  puts start
  puts url
  puts endText
  return "#{start} <a href=\"#{url}\">#{url}</a> #{endText}"
end

p anchorize("hello http://world.com ! hello http://world.com !")

# "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>"
# "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>"

# Expected:    "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>"
# instead got: "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>"

# Expected: "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>", instead got: "<xmp>hello <a href=\"http://world.com\">http://world.com</a> !</xmp>"
