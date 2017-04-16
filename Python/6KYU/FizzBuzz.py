def solution(number):
    a=0;b=0;c=0
    for x in range(1,number):
        if x%15==0:
            c += 1
        elif x%5==0:
            b += 1
        elif x%3==0: 
            a += 1
    return [a,b,c]