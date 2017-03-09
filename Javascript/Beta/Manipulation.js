// For a given large number (num), write a function which returns the number with
// the second half of digits changed to 0.
//
// In cases where the number has an odd number of digits, the middle digit onwards
// should be changed to 0.
//
// Example:
//
// 192827764920 --> 192827000000
//
// 938473 --> 938000
//
// 2837743 --> 2830000

// My Solution
function manipulate(num) {
  var result = "";
  var numWord = num.toString().split("");
  for(var i=0; i < Math.floor(numWord.length/2); i++){
    result += numWord[i];
  }
  for(i=0; i < Math.ceil(numWord.length/2); i++){
    result += "0";
  }
  return parseInt(result);
}
