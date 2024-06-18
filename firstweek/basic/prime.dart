//  prime(n){
//   if(n<2){
//     return false;
//   }
//   for(int i=2;i<n;i++){
//     if(n%i==0){
//    return false;
//     }
//   }
//   return true;
// }
// void main(){
//   print(prime(1));
//   print(prime(2));
//   print(prime(5));
// }

prime(n){
  if(n<2){
    return false;
  }
  for(int i=2;i<n;i++){
    if(n%i==0){
      return false;
    }
  }
  return true;
}
void main(){
  print(prime(4));
}