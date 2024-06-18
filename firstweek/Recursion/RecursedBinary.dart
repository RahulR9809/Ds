
// int binarySearch(List<int> arr, int left, int right, int target) {
//   if (left <= right) {
//     int mid = (left + right) ~/ 2;
//     if (target == arr[mid]) {
//       return mid;
//     }
//     if (target < arr[mid]) {
//       return binarySearch(arr, left, mid - 1, target);
//     } else {
//       return binarySearch(arr, mid + 1, right, target);
//     }
//   }
//   return -1;
// }
// void main() {
//   List<int> arr = [1, 4, 5, 6, 9, 10];
//   int target = 10 ;
//   int found= binarySearch(arr, 0, arr.length - 1, target);
//   print(found);
// }

// binary(arr,left,right,target){
// if(left<=right){
//   int mid=(left+right)~/2;
//   if(target==arr[mid]){
//     return mid;
//   }
//   if(target<arr[mid]){
//     return binary(arr, left, mid-1, target);
//   }
//   return binary(arr, mid+1, right, target);
// }
// }
// void main(){
//   List <int> arr=[1,2,3,4,5];
//   int target=5;
//   int found=binary(arr,0,arr.length-1,target);
//   print(found);
// }
binary(arr,left,right,target){
  if(left<right){
    int mid=(left+right)~/2;
    if(target==arr[mid]){
      return mid;
    }
    if(target<arr[mid]){
      return binary(arr, left, mid-1, target);
    }else{
      return binary(arr, mid+1, right, target);
    }
  }

}
void main(){
  List<int>arr=[3,4,5,6,7];
  int target=5;
  int found=binary(arr, 0, arr.length-1, target);
  print(found);
}