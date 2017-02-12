// Write function avg which calaculates average of numbers in given list.

// My Solution
function find_average(array) {
  return array.reduce((a, b) => a + b, 0) / array.length;
}
