/*

Shouldn't the two functions getMax1 and getMax2 be equivalent and return the
same value? Can you spot a problem and fix it? Can you learn something about
JavaScript style in this kata?

*/

// My Solution
function getMax1()
{
  var max =
  {
   name: 'Max Headroom'
  }
  return max;
}

function getMax2()
{
  var max =
  {
   name: 'Max Headroom'
  }
  return max;
}

// Better Solution
function getMax1() { return {name: 'Max Headroom'}; }

function getMax2() { return getMax1(); }
