// recursiveFactorial(n){
//   if(n==0){
//     return 1;
//   }
//   return n*recursiveFactorial(n-1);
// }
// void main(){
//   print(recursiveFactorial(0));
//   print(recursiveFactorial(1));
//   print(recursiveFactorial(4));
// }


fac(n){
  if(n<2){
    return 1;
  }
  return n*fac(n-1);
}
void main(){
  print(fac(3));
}