def bowlingScore(frames):
    frame = frames.split(" ")
    score = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0,0,0,0]]
    finalScore = 0
    frame[9]+="0"
    for i in range(0,3):
        score[9][i] = checkValue(frame[9][i])
        if score[9][i]=="/": score[9][i] = addSpare(score[9][i-1])
    for i in range(8,-1,-1):
        score[i][0] = checkValue(frame[i][0])
        if len(frame[i])!= 1:
            score[i][1] = checkValue(frame[i][1])
        else:
            score[i][1] = None
        if score[i][1]=="/": score[i][1] = addSpare(score[i][0])
    for i in range(0,3):
        if frame[9][i]=="X": finalScore+=10
        if frame[9][i]=="/": finalScore+=int(score[9][i])
        if frame[9][i]!="X" and frame[9][i]!="/": finalScore+=int(score[9][i])
    for i in range(8,-1,-1):
        if frame[i][0]=="X":
            finalScore+=10+score[i+1][0]
            if score[i+1][1]==None:
                finalScore+=score[i+2][0]
            else:
                finalScore+=score[i+1][1]
        else:
            if frame[i][1]=="/":
                finalScore+=10+score[i+1][0]
            else:
                finalScore+=score[i][0]+score[i][1]
    return finalScore

def checkValue(pin):
    if pin == "X": return 10
    if pin == "/": return "/"
    return int(pin)

def addSpare(pin):
    return 10 - int(pin)


# test.it("maybe this bowler should put bumpers on")
# test.assert_equals(bowlingScore('11 11 11 11 11 11 11 11 11 11'), 20)
# test.it("woah! Perfect game!")
# test.assert_equals(bowlingScore('X X X X X X X X X XXX'), 300)
#
# test.assert_equals(bowlingScore('11 11 11 11 11 11 11 11 11 11'), 20)
# test.assert_equals(bowlingScore('X X X X X X X X X XXX'), 300)
# test.assert_equals(bowlingScore('00 5/ 4/ 53 33 22 4/ 5/ 45 XXX'), 115)
# test.assert_equals(bowlingScore('5/ 4/ 3/ 2/ 1/ 0/ X 9/ 4/ 8/8'), 150)
# test.assert_equals(bowlingScore('5/ 4/ 3/ 2/ 1/ 0/ X 9/ 4/ 7/2'), 143)
# test.assert_equals(bowlingScore('X X 9/ 80 X X 90 8/ 7/ 44'), 171)
# test.assert_equals(bowlingScore('6/ 5/ 6/ 2/ 3/ 0/ 1/ 8/ 3/ 6/5'), 139)
# test.assert_equals(bowlingScore('00 00 00 00 00 00 00 00 00 0/X'), 20)
import random

for rtest in range(0,1):
    xframe = []
    for pinchoice in range(0,9):
        xpin1 = random.randint(0,10)
        if xpin1 != 10:
            xpin2 = random.randint(0,10-xpin1)
            if xpin1 + xpin2 == 10:
                xframe.append(str(xpin1)+"/")
            else:
                xframe.append(str(xpin1)+str(xpin2))
        else:
            xframe.append("X")
    xendframe = ["XXX","12","1/X","34","53","XX1"]
    xframe.append(xendframe[random.randint(0,len(xendframe)-1)])
    xframe = " ".join(xframe)
    print xframe
