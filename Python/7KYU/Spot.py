def spot_diff(s1, s2):
    result = []
    for a in range(0,len(s1)):
        if s1[a] != s2[a]: result.append(a)
    return result