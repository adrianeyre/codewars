def super_street_fighter_selection(fighters, position, moves)
  x,y = position ; result = []
  moves.each do |move|
    begin
      case move.downcase
        when "up" ; x -= 1 if x != 0
        when "down" ; x += 1 if x != fighters.length - 1
        when "left" ; y -= 1
        when "right" ; y += 1
      end

      x += 1 if fighters[x][y] == "" && move == "up"
      (x = 0 ; move = "down") if x < 0

      x -= 1 if fighters[x][y] == "" && move == "down"
      x = fighters.length - 1 if (x > fighters.length - 1) && (fighters[x][y] != "")
      (x = fighters.length ; move = "up") if x > fighters.length

      y = fighters[x].length - 1 if y < 0
      y = 0 if y > fighters[x].length - 1

      break if fighters[x][y] != ""
    end while fighters[x][y] == ""

    result << fighters[x][y]
  end
  result
end



fighters5 = [
	[        "",     "Ryu",  "E.Honda",  "Cammy" ],
	[  "Balrog",     "Ken",  "Chun Li",       "" ],
	[    "Vega",        "", "Fei Long", "Balrog",],
    [  "Blanka",   "Guile",         "", "Chun Li"],
    [ "M.Bison", "Zangief",  "Dhalsim", "Sagat"  ],
    [  "Deejay",   "Cammy",         "", "T.Hawk" ]
]

(0..20).each do |rtest|
  moves =  []
  solution = []
  begin
    x = rand(fighters5.length)
    y = rand(fighters5[0].length)
    position = [x,y]
  end while fighters5[x][y] == ""

  amount = rand(29) + 1
  (0..amount).each do |z|
    dir = rand(4)
    case dir
      when 0 ; moves << "up"
      when 1 ; moves << "down"
      when 2 ; moves << "left"
      when 3 ; moves << "right"
    end
  end

  solution = super_street_fighter_selection(fighters5,position, moves)

  Test.it("should work with no selection cursor moves") do
    Test.assert_equals(super_street_fighter_selection(fighters5,position, moves), solution)
  end
end
