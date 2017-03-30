def scoobydoo(villian, villians):
    villian = villian.lower()

    # Step 1 - Rotate Right by 5
    villian = ''.join(shift(villian, 5))

    # Step 2 - Reverse
    villian = villian[::-1]

    # Step 3 - Change even letters by 5
    badguy = ""
    num = 0
    for le in villian:
        num += 1
        if num % 2 == 0:
            le = le.translate(str.maketrans('abcdefghijklmnopqrstuvwxyz','fghijklmnopqrstuvwxyzabcde'))
        badguy += le

    for bg in villians:
        if ''.join(bg.lower().split(' ')) == badguy: return bg
