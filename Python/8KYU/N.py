import math
def index(array, n):
    if n > len(array):
        return -1;
    return int(math.pow(array[n], n))