nums = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty",,,,,,,,,,"thirty",,,,,,,,,,"forty",,,,,,,,,,"fifty",,,,,,,,,,"sixty",,,,,,,,,,"seventy",,,,,,,,,,"eighty",,,,,,,,,,"ninety"]

function Arith(first){this.first = first;}

Arith.prototype.add = function(second){
  return nameNumber(workOut(this.first)+workOut(second));
}

function workOut(num){
  result = 0
  num = num.split(" ");
  for(i=0;i<num.length;i++){
    if(num[i] === "hundred"){
      result *= 100; }
    else if(num[i] !== "and"){
      result += nums.indexOf(num[i]);
    }
  }
  return result;
}

function nameNumber(num){
  result = [];
  if(parseInt(num / 1000) > 0){
    result.push(nums[parseInt(num / 1000)]);
    result.push("thousand");
    num-=(parseInt(num / 1000) * 1000);
  }

  if(parseInt(num / 100) > 0){
    result.push(nums[parseInt(num / 100)]);
    result.push("hundred");
    num-=(parseInt(num / 100) * 100);
  }

  if(num>20){
    if(result.length !==0){result.push("and");}
    if(parseInt(num / 10) > 0){
      result.push(nums[parseInt(num / 10)*10]);
      num-=(parseInt(num / 10) * 10)
      if(num!==0){result.push(nums[parseInt(num / 1)]);}
    }
  } else {
    if(num!==0){
      if(result.length !==0){result.push("and");}
      result.push(nums[parseInt(num)]);
    }
  }
  return result.join(" ")
}