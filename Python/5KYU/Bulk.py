def bulk(arr):
    p = 0; c = 0
    if arr!=[]:
        for i in range(0,len(arr)):
            items = arr[i].split(",")
            for item in range(0,len(items)):
                unit = items[item].split("g ")
                units = int(unit[0])/100
                protein = units * food[unit[1]][0]
                carbohydrate = units * food[unit[1]][1]
                fat = units * food[unit[1]][2]
                p += protein
                c += (protein * 4) + (carbohydrate * 4) + (fat * 9)
    if p % 1 == 0: p = int(p)
    if c % 1 == 0: c = int(c)
    return "Total proteins: "+str(p)+" grams, Total calories: "+str(c)