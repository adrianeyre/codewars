def find_multiples(integer, limit):
    result = []
    for x in range(integer, limit+1, integer):
        result.append(x)
    return result