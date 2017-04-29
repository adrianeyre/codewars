def fish(shoal):
    level = 1
    total = 0
    fishes = sorted(list(shoal))
    for fish in fishes:
        if int(fish) <= level:
            total += (1*int(fish))
            if total >= (level*4):
                total -= (level*4)
                level += 1
    return level
