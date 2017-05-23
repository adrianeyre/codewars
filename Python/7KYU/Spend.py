def getTotal(costs, items, tax):
    total = 0
    for i in items:
        if i in costs:
            total += costs[i]
    return round(total*tax+total, 2)