def make_checkered_board(n):
    result = []
    for x in range(0,n):
        temp = []
        for y in range(0,n):
            temp.append("X") if (x+y) % 2 == 0 else temp.append("O")
        result.append(temp)
    return result