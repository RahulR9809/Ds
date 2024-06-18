

// fibo(n){
//   if(n<2){
//     return n;
//   }
//   return fibo(n-1)+fibo(n-2);
// }
// void main(){
//   print(fibo(5));
// }

// sequence
fib(n){
  if(n<2){
    return n;
  }
  return fib(n-1)+fib(n-2);
}
void main(){
  print(fib(2));
}