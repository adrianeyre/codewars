def damaged_or_sunk (board, attacks)
  ships = {1=>0, 2=>0, 3=>0}
  hits = {1=>0, 2=>0, 3=>0}
  result = { 'sunk'=>0, 'damaged'=>0 , 'not_touched'=>0, 'points'=>0}
  (0..board.length-1).each do |x|
    (0..board[x].length-1).each do |y|
      ships[board[x][y]] += 1 if board[x][y] != 0
    end
  end
  (0..attacks.length-1).each do |x|
    ship = board[board.length-attacks[x][1]][attacks[x][0]-1]
    hits[ship] += 1 if ship > 0
  end
  (1..3).each do |x|
    if ships[x] != 0
      ships[x] = ships[x] - hits[x]
      if ships[x] == 0
        result["points"] += 1
        result['sunk'] += 1
      else
        if hits[x] == 0
          result['points'] -= 1
          result['not_touched'] += 1
        else
          result['points'] += 0.5
          result['damaged'] += 1
        end
      end
    end
  end
  result
end

def board_maker(zx,zy)
  srand
  board = []
  (0..zx).each do |za|
    ztemp = []
    (0..zy).each do |zb|
      ztemp << 0
    end
    board << ztemp
  end
  (1..rand(2..3)).each do |za|
    zcount = 0; zsize = 10
    while(zcount < zsize-1)
      zcount = 0
      zsize = rand(1..3)
      zdirection = rand(1..2)
      zxc = rand(0..zx-1)
      zyc = rand(0..zy-1)
      (0..zsize).each do |zb|
        if zdirection == 1
          if zxc+zb<zx-1
            zcount =+ 1 if board[zxc+zb][zyc] == 0
          end
        else
          if zyc+zb<zy-1
            zcount =+ 1 if board[zxc][zyc+zb] == 0
          end
        end
      end
    end
    (0..zsize).each do |zb|
      if zdirection == 1
        board[zxc+zb][zyc] = za
      else
        board[zxc][zyc+zb] = za
      end
    end
  end
  board
end

def attack_maker(zx,zy)
  attack = []
  amount = rand(2..10)
  (0..amount).each do |zz|
    pos = true
    while(pos)
      zxc = rand(1..zx-1)
      zyc = rand(1..zy-1)
      pos = false if !attack.include? [zxc, zyc]
    end
    attack << [zxc, zyc]
  end
  attack
end
