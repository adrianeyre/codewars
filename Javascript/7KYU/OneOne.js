function consecutiveOnes(nums) {
   result = 0; amount = 0;
   for(i=0;i<nums.length;i++){
      if(nums[i]===1){
        amount ++;
        if (amount >= result){result = amount;}
      } else {
        amount = 0;
      }
   }
   return result;
};