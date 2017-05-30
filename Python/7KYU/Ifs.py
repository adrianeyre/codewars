def no_ifs_no_buts(a, b):
    return {
        a == b: str(a) + " is equal to " + str(b),
        a < b: str(a) + " is smaller than " + str(b),
        a > b: str(a) + " is greater than " + str(b),
    }[True]