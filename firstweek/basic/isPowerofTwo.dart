isPowerOfTwo(n){
  if(n<1){
    return false;
  }
  while(n>1){
    if(n % 2!=0){
    
return false;
    }
    n=n/2;
  }
  return true;
}
void main(){
  print(isPowerOfTwo(1));
    print(isPowerOfTwo(2));

  print(isPowerOfTwo(5));

}

// bool isPowerOfTwo(int n) {
//   if (n < 1) {
//     return false;
//   }
//   return (n & (n - 1)) == 0;
// }

// void main() {
//   print(isPowerOfTwo(1)); // true
//   print(isPowerOfTwo(2)); // true
//   print(isPowerOfTwo(5)); // false
// }
