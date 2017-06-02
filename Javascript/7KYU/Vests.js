function vestBuy(price, haggle){
  percent = 0;
  switch (haggle){
    case "light": percent = 20.0; break
    case "medium": percent = 30.0; break
    case "heavy": percent = 40.0; break
    case "walkandswear": percent = 90.0; break
  }
  return percent !== 0 ? parseFloat(price) - (parseFloat(price) / 100.0 * percent) : "Run!!"
}