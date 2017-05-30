def encode(str, key): return ende(str, key)
def decode(str, key): return ende(str, key)

def ende(str, key):
    key+=key.upper()
    rkey = ""
    for l in range(0,len(key),2):
        rkey+=key[l+1]+key[l]
    str = list(str)
    for i in range(0,len(str)):
        if str[i] in key:
            str[i] = rkey[list(key).index(str[i])]
    return "".join(str)