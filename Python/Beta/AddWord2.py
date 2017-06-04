class Arith():
    def __init__(self, first):
        self.NUMS = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty","","","","","","","","","","thirty","","","","","","","","","","forty","","","","","","","","","","fifty","","","","","","","","","","sixty","","","","","","","","","","seventy","","","","","","","","","","eighty","","","","","","","","","","ninety"]
        self.first = first
        
    def add(self, second):
        return self.number_to_word(self.word_to_number(self.first) + self.word_to_number(second))
    
    def word_to_number(self, word):
        result = 0
        word = word.split(" ")
        for i in range (0,len(word)):
            if word[i] == "hundred":
                result *= 100
            elif word[i] != "and":
                result += self.NUMS.index(word[i])
        return result
        
    def number_to_word(self, num):
        result = []
        if int(num / 1000) > 0:
            result.append(self.NUMS[int(num / 1000)])
            result.append("thousand")
            num -= int(num / 1000) * 1000
  
        if int(num / 100) > 0:
            result.append(self.NUMS[int(num / 100)])
            result.append("hundred")
            num -= int(num / 100) * 100

        if num > 20:
            if len(result) != 0: result.append("and")
            if int(num / 10) > 0:
                result.append(self.NUMS[int(num / 10)*10])
                num -= int(num / 10) * 10
                if num != 0: result.append(self.NUMS[int(num / 1)])
        else:
            if num != 0:
                if len(result) != 0: result.append("and")
                result.append(self.NUMS[int(num)])

        return " ".join(result)