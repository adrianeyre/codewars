def guess_my_number(guess, number = '123-451-2345'):
    number = list(number)
    guess = list(guess)
    for num in range(0, len(number)):
        if not number[num] in guess and number[num] != "-":
            number[num] = "#"
    return "".join(number)