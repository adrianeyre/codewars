def fruit(reels, spins)
  reel = ["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"]
  items = [reels[0][spins[0]], reels[1][spins[1]], reels[2][spins[2]]]
  return (10 - reel.index(items[0])) * 10 if items[0] == items[1] && items[0] == items[2]
  item = nil; extra = nil
  (item = items[0]; extra = items[2]) if items[0] == items[1]
  (item = items[0]; extra = items[1]) if items[0] == items[2]
  (item = items[1]; extra = items[0]) if items[1] == items[2]
  if item != nil
    num = 10 - reel.index(item)
    num = num * 2 if extra == "Wild"
    return num
  end
  return 0
end
