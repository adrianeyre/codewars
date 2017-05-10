def calculate(string)
  string = string.split(" ")
  string[-2] == "loses" ? string[2].to_i - string[-1].to_i : string[2].to_i + string[-1].to_i
end