function cutCancerCells(organism){
  return organism.replace(/([a-z]C[a-z])|([a-z]C)|(C[a-z])|C|c/g, '');
}