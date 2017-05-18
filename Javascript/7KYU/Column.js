function buildRowText(i, c) {
  return "| ".repeat(i) + "|" + c.toString() + "|" + " |".repeat(9-i-1);
}