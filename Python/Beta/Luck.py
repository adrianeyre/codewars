def filter_lucky(lst):
    result = []
    for l in lst:
        if "7" in str(l): result.append(l)
    return result