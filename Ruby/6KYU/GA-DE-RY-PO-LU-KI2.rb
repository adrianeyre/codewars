def encode(str, key) ende(str, key) end
def decode(str, key) ende(str, key) end

def ende(str, key)
  key+=key.upcase
  rkey = ""
  (0..key.length-1).step(2).each {|l| rkey+=key[l+1]+key[l]}
  str.tr(key,rkey)
end