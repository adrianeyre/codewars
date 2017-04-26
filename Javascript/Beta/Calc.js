function stickyCalc (operation, val1, val2){
    val1 = Math.round(val1)
    val2 = Math.round(val2)
    val3 = parseInt(val1.toString() + val2.toString());
    switch (operation){
      case "+": result = val3 + val2; break;
      case "-": result = val3 - val2; break;
      case "*": result = val3 * val2; break;
      case "/": result = val3 / val2; break;
    }
    return Math.floor(result);
}