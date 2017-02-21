def bowlingScore(frames)
  frame = frames.split(" ")
  score = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0,0,0,0]]
  finalScore = 0
  (0..2).each do |i|
    score[9][i] = checkValue(frame[9][i])
    score[9][i] = addSpare(score[9][i-1]) if score[9][i]==="/"
  end
  (8).downto(0).each do |i|
    score[i][0] = checkValue(frame[i][0])
    score[i][1] = checkValue(frame[i][1])
    score[i][1] = addSpare(score[i][0]) if score[i][1]==="/"
  end
  (0..2).each do |i|
    finalScore+=10 if frame[9][i]=="X"
    finalScore+=score[9][i].to_i if frame[9][i]=="/"
    finalScore+=score[9][i].to_i if frame[9][i]!="X" && frame[9][i]!="/"
  end
  (8).downto(0).each do |i|
    if frame[i][0]=="X"
      finalScore+=10+score[i+1][0]
      if score[i+1][1]==nil
        finalScore+=score[i+2][0]
      else
        finalScore+=score[i+1][1]
      end
    else
      if frame[i][1]==="/"
        finalScore+=10+score[i+1][0]
      else
        finalScore+=score[i][0]+score[i][1]
      end
    end
  end
  return finalScore
end

def checkValue(pin)
  return 10 if pin == "X"
  return "/" if pin == "/"
  return nil if pin == nil
  return pin.to_i
end

def addSpare(pin)
  return 10 - pin.to_i
end

# Test.it("Main Tests") do
#   Test.assert_equals(bowlingScore('11 11 11 11 11 11 11 11 11 11'), 20)
#   Test.assert_equals(bowlingScore('X X X X X X X X X XXX'), 300)
#   Test.assert_equals(bowlingScore('00 5/ 4/ 53 33 22 4/ 5/ 45 XXX'), 115)
#   Test.assert_equals(bowlingScore('5/ 4/ 3/ 2/ 1/ 0/ X 9/ 4/ 8/8'), 150)
#   Test.assert_equals(bowlingScore('5/ 4/ 3/ 2/ 1/ 0/ X 9/ 4/ 7/2'), 143)
#   Test.assert_equals(bowlingScore('X X 9/ 80 X X 90 8/ 7/ 44'), 171)
#   Test.assert_equals(bowlingScore('6/ 5/ 6/ 2/ 3/ 0/ 1/ 8/ 3/ 6/5'), 139)
#   Test.assert_equals(bowlingScore('00 00 00 00 00 00 00 00 00 0/X'), 20)
# end
#
# Test.it("Example Tests") do
#   # maybe this bowler should put bumpers on
#   Test.assert_equals(bowlingScore('11 11 11 11 11 11 11 11 11 11'), 20)
#   # woah! Perfect game!
#   Test.assert_equals(bowlingScore('X X X X X X X X X XXX'), 300)
# end

Test.it("Random Tests") do
  (0..199).each do |tests|
    xframe = []
    (0..8).each do |pinchoice|
      xpin1 = rand(11)
      if xpin1 != 10
        xpin2 = rand(11-xpin1)
        if xpin1 + xpin2 == 10
          xframe << xpin1.to_s + "/"
        else
          xframe << xpin1.to_s + xpin2.to_s
        end
      else
        xpin1 = "X"
        xframe << xpin1.to_s
      end
    end
    xendframe = ["XXX","12","1/X","34","53","XX1"]
    xframe << xendframe[rand(xendframe.length)]
    xframe = xframe.join(" ")
    solution = bowlingScore2(xframe)
    Test.assert_equals(bowlingScore(xframe), solution)
  end
end
