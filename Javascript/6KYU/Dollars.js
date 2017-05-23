function money_value(s){
  s = parseFloat(s.replace(/[$]/g, '').replace(/ /g, ''))
  return isNaN(s) ? 0.0 : s
}