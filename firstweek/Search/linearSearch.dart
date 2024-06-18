// int linearSearch( arr, int target) {
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] == target) {
//       return i;
//     }
//   }
//   return -1; 
// }

// void main() {
//   List<int> arr = [1, 3, 4, 5, 6];
//   int target = 6;
//   int foundIndex = linearSearch(arr, target);
//   print(foundIndex);
// }


// Linear(arr,tartget,target2){
// List<int>result=[];
// for(int i=0;i<arr.length;i++){
//   if(arr[i]==tartget||arr[i]==target2){
//     result.add(arr[i]);
//   }
// }
// return result;
// }
// void main(){
//   List<int>arr=[2,5,6,7,8,];
//   int target1=8,target2=2;
//   List<int> found=Linear(arr, target1,target2);
//   print(found);
// }


// change the target index to 0

// Linear( arr,int target){
  
// for(int i=0;i<arr.length;i++){
//   if(arr[i]==target){
//    arr[i] = 0;
//    return arr;
//   }
// }
// return false;
// }
// void main(){
//   print(Linear([1,33,6,7,8,], 10));
// }

linear(arr,target){
  for(int i=0;i<arr.length;i++){
    if(arr[i]==target){
      return i;
    }
  }
}
void main(){
  List<int>arr=[2,3,5,54,5];
  int target=54;
  int found=linear(arr, target);
  print(found);
}