def order(sentence):
  result = []
  sentence = sentence.split(" ")
  for i in range(1,len(sentence)+1):
      for a in range(0,len(sentence)):
          if str(i) in sentence[a]: result.append(sentence[a])
  return " ".join(result)