def bowlingPins(arr):
    result = ""
    line = [[],[],[],[]]
    for x in range(7,11): line[0].append(" ") if x in arr else line[0].append("I")
    result = " ".join(line[0]) + "\n"
    for x in range(4,7): line[1].append(" ") if x in arr else line[1].append("I")
    result += " " + " ".join(line[1]) + " \n"
    for x in range(2,4): line[2].append(" ") if x in arr else line[2].append("I")
    result += "  " + " ".join(line[2]) + "  \n"
    line[3].append(" ") if 1 in arr else line[3].append("I")
    result += "   " + " ".join(line[3]) + "   "
    return result

# import random
# for rtest in range(0,5):
#     pinnumbers = []
#     for rtest2 in range(0,random.randint(0,11)):
#         pinnumbers.append(random.randint(0,9)+1)
#     list_unique = list(set(pinnumbers))
#     solution = bowlingPins2(list_unique)
#     test.it("Should return "+solution)
#     test.assert_equals(bowlingPins(list_unique), solution)
