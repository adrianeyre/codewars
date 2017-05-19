def escape(carpark):
    result = []
    level = 0; space = 0
    for i in range(0,len(carpark)):
        for a in range(0,len(carpark[i])):
            if carpark[i][a] == 2:
                level = i
                space = a

    while (True):
        if level == len(carpark) - 1:
            if space != len(carpark[0]) - 1:
                result.append("R"+str(len(carpark[0])-space-1))
            space = len(carpark[0]) - 1
        else:
            if carpark[level][space] == 1:
                count = 0
                while (carpark[level][space] == 1 and level != len(carpark)):
                    level += 1
                    count += 1
                result.append("D"+str(count))
            else:
                pos = carpark[level].index(1)
                if pos < space:
                    d = "L"
                else:
                    d = "R"
                result.append(d+str(abs(pos-space)))
                space = pos
        if (space == len(carpark[0]) - 1 and level == len(carpark) - 1): break
    return result

import random
def carparkmaker():
    spaces = 5
    levels = 2
    carpark = []
    for l in range(0,levels):
        temp = []
        for s in range(0,spaces):
            temp.append(0)
        carpark.append(temp)
    for l in range(0,levels-1):
        carpark[l][random.randint(0,spaces-1)] = 1
    done = False
    while(not done):
        s = random.randint(0,spaces-1)
        l = random.randint(0,levels-1)
        if carpark[l][s] == 0:
            carpark[l][s] = 2
            done = True        
    return carpark
