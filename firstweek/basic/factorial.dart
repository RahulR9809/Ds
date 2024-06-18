// factorial(n){

//   int result=1;
//   for(int i=1;i<=n;i++){
//    result=  result*i;
//   }

// return result ;
// }
// void main(){
//   print(factorial(0));
//     print(factorial(1));
//   print(factorial(5));

// }

fac(n){
  int result=1;
  for(int i=1;i<n;i++){
    result=result*i;
  }
  return result;
}
void main(){
  print(fac(3));
}