

// reverse(n){
//   if(n.isEmpty){
//     return '';
//   }else{
//     return reverse(n.substring(1))+n[0];
//   }
// }
// void main(){
//   String a='rahul';
//   String b=reverse(a);
//   print(b);
// }




reverse(n){
  if(n.isEmpty){
    return n;
  }
  else{
    return reverse(n.substring(1))+n[0];
  }
}
void main(){
  String a='rahul';
  String b=reverse(a);
  print(b);
}