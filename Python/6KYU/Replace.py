def alphabet_position(text):
    result = []
    for i in text:
        val = ord(i.lower())
        if val > 96 and val < 123:
            result.append(str(val-96))
    return " ".join(result)