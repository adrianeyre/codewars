def wave(str):
    result = []
    str = list(str)
    for b in range(0,len(str)):
        if str[b] != " ":
            temp = []
            for i in range(0, len(str)):
                if i == b:
                    temp.append(str[i].upper())
                else:
                    temp.append(str[i])
            result.append("".join(temp))
    return result

import random
letters = list("abcd efghi jklmno pqrstu vwxyz")
for cwtests in range (1,2):
    word = []
    for wordloop in range(0,random.randint(0,200)):
        word.append(letters[random.randint(0,len(letters)-1)])
    word = "".join(word)
    print(word)
