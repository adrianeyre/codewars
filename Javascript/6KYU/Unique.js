function findUnique(numbers) {
  nums = {};
  for(i=0;i<numbers.length;i++){
    if(nums[numbers[i]]===undefined){nums[numbers[i]] = 1;} else {nums[numbers[i]]++;}
  }
  for(var i in nums){if(nums[i]===1){return parseInt(i);}}
}