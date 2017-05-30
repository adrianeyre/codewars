def encode(str): return ende(str)
def decode(str): return ende(str)

def ende(str):
    code = ["gaderypolukiGADERYPOLUKI","agedyropulikAGEDYROPULIK"]
    str = list(str)
    for i in range(0,len(str)):
        if str[i] in code[0]:
            str[i] = code[1][list(code[0]).index(str[i])]
    return "".join(str)