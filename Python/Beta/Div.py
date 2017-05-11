import math
def divisions(n, divisor):
    if n==divisor: return 1
    num = 0; sum = n;
    while(sum > divisor-1 and sum != 0):
        num += 1
        sum = round(math.floor(sum/divisor))
    return num