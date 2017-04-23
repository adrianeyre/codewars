function negationValue(string, value) {
  value = Boolean(value);
  if (string.length % 2 == 0){ return value} else { return !value}
}