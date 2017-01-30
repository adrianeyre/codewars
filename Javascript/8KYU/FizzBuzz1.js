/*

This is the first step to understanding FizzBuzz.

Your inputs: a positive integer, n, greater than or equal to one. n is provided,
you have NO CONTROL over its value.

Your expected outputs: an array of positive integers from 1 to n

Your job is to write an algorithm that gets you from the input to the output.

*/

// My Solution
function preFizz(n) {
  var result = [];
  var step;
  for (step = 1; step <= n; step++) {
    result.push(step);
  }
  return result;
}

// Better Solution
let preFizz = n => [...Array(n)].map((x, i) => i+1);
