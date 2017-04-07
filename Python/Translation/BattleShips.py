def damaged_or_sunk (board, attacks):
    ships = {1:0, 2:0, 3:0}
    hits = {1:0, 2:0, 3:0}
    sunk = 0; damaged = 0; not_touched = 0; points = 0
    for x in range(0,len(board)):
        for y in range(0,len(board[x])):
            if board[x][y] != 0: ships[board[x][y]] += 1
    for x in range(0,len(attacks)):
        ship = board[len(board)-attacks[x][1]][attacks[x][0]-1]
        if ship > 0: hits[ship] += 1
    for x in range(1,4):
        if ships[x] != 0:
            ships[x] = ships[x] - hits[x]
            if ships[x] == 0:
                points += 1
                sunk += 1
            else:
                if hits[x] == 0:
                    not_touched += 1
                    points -= 1
                else:
                    damaged += 1
                    points = points + .5
    return { 'sunk': sunk, 'damaged': damaged , 'not_touched': not_touched, 'points': points}