class Calculator(object):
    def evaluate(self, string):
        return round(eval(string), 12)