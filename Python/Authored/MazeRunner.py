def maze_runner(maze, directions):
    startX = 0 ; startY = 0
    for y in range(len(maze)):
        for x in range(len(maze)):
            if maze[x][y] == 2:
                startX = y
                startY = x

    for dire in directions:
        if dire == "N": startY = startY - 1
        if dire == "E": startX = startX + 1
        if dire == "S": startY = startY + 1
        if dire == "W": startX = startX -1
        if startY < 0 or startY > len(maze)-1 or startX < 0 or startX > len(maze)-1 or maze[startY][startX] == 1: return "Dead"
        if maze[startY][startX] == 3: return "Finish"

    return "Lost"

# import random
# test.describe("Random tests")
#
# maze = [[1,1,1,1,1,1,1,1,0,1],
#         [1,3,1,0,1,0,0,0,0,1],
#         [1,0,1,0,0,0,1,1,0,1],
#         [1,0,1,1,1,1,1,0,0,1],
#         [1,0,1,0,0,0,0,0,0,1],
#         [1,0,1,0,1,0,1,0,0,1],
#         [1,0,1,0,1,0,0,0,0,0],
#         [1,0,1,0,1,0,1,1,0,1],
#         [1,0,0,0,1,0,0,0,0,1],
#         [1,1,1,0,1,1,1,1,2,1]]
#
# test.describe("Example tests")
#
# test.it("Should return Finish")
# test.assert_equals(maze_runner(maze,["N","N","N","W","W","W","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N"]), "Finish", "Should return Finish")
# test.it("Should return Lost")
# test.assert_equals(maze_runner(maze,["N","N","N","N","N","N","N","N","W","W","W","S","W","W","N"]), "Lost")
# test.it("Should return Dead")
# test.assert_equals(maze_runner(maze,["N","N","N","N","N","E","E","S","S","S","S","S","S"]), "Dead")
# test.it("Should return Dead")
# test.assert_equals(maze_runner(maze,["N","W","W","W","W"]), "Dead")
# test.it("Should return Lost")
# test.assert_equals(maze_runner(maze,["N","N","N","N","N","N","N","N","N","S","S","S","S","S","S","S","S","S"]), "Lost")
# test.it("Should return Dead")
# test.assert_equals(maze_runner(maze,["N","E","E"]), "Dead")
# test.it("Should return Finish")
# test.assert_equals(maze_runner(maze,["N","W","W","W","N","N","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N","S","S"]), "Finish")
# test.it("Should return Lost")
# test.assert_equals(maze_runner(maze,["N","W","W","W","N","N"]), "Lost")
# test.it("Should return Lost")
# test.assert_equals(maze_runner(maze,["N","N","N","E"]), "Lost")
# test.it("Should return Dead")
# test.assert_equals(maze_runner(maze,["N","N","N","W","W","W","N","N","W","W","S","S","S","S","S","S"]), "Dead")
# test.it("Should return Finish")
# test.assert_equals(maze_runner(maze,["N","W","W","W","N","N","N","N","W","W","S","S","S","S","W","W","N","N","N","N","N","N","N"]), "Finish")
#
# def maze_runner2(maze, directions):
#     startX = 0 ; startY = 0
#     for y in range(len(maze)):
#         for x in range(len(maze)):
#             if maze[x][y] == 2:
#                 startX = y
#                 startY = x
#
#     for dire in directions:
#         if dire == "N": startY = startY - 1
#         if dire == "E": startX = startX + 1
#         if dire == "S": startY = startY + 1
#         if dire == "W": startX = startX -1
#         if startY < 0 or startY > len(maze)-1 or startX < 0 or startX > len(maze)-1 or maze[startY][startX] == 1: return "Dead"
#         if maze[startY][startX] == 3: return "Finish"
#
#     return "Lost"
#
# for rtest in range(139):
#     maze = []
#     l = random.randint(5, 7)
#     for z in range(l):
#         t = []
#         t.extend([0] * l)
#         maze.extend([t])
#     w = random.randint(1, l*l-10)
#     for z in range(w):
#         x = random.randint(0,l-1)
#         y = random.randint(0,l-1)
#         maze[x][y] = 1
#     x = random.randint(0,l-1)
#     y = random.randint(0,l-1)
#     maze[x][y] = 3
#     x = random.randint(0,l-1)
#     y = random.randint(0,l-1)
#     maze[x][y] = 2
#
#     directions = []
#     m = random.randint(1,60)
#     for x in range(0,m):
#         d = random.randint(0,4)
#         if d == 0: directions.extend("N")
#         if d == 0: directions.extend("E")
#         if d == 0: directions.extend("S")
#         if d == 0: directions.extend("W")
#
#     solution = maze_runner2(maze, directions)
#     test.it("Should return "+solution)
#     test.assert_equals(maze_runner(maze,directions), solution)
