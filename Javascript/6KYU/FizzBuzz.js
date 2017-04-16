function solution(number){
  a=0;b=0;c=0
  for(x=1;x<number;x++){
    if(x%15==0){c++}
    else if(x%5==0){b++}
    else if(x%3==0){a++}
  }
  return [a,b,c]
}