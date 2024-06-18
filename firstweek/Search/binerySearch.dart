// int binarySearch(List<int> arr, int target) {
//   int left = 0;
//   int right = arr.length - 1;
//   while (left <= right) {
//     int middle = (left+ right) ~/ 2;
//     if (arr[middle] == target) {
//       return middle;
//     } else if (arr[middle] < target) {
//       left = middle + 1;
//     } else {
//       right = middle - 1;
//     }
//   }
//   return -1; // Return -1 if target is not found in the list
// }

// void main() {
//   print( binarySearch([1, 3, 5, 6, 7, 8], 5));
// }


// binary(arr,target){
// int left=0;
// int right=arr.length-1;
// while(left<=right){
//   int mid=(left+right)~/2;
//   if(target==arr[mid]){
// return mid;
//   }
//  if(target<arr[mid]){
//      right=mid-1;
//   }else{
//     left=mid+1;
//   }
// }
// return -1;

// }
// void main(){
//   print(binary([1,2,3,4,5,],5));
// }


// binary(arr,target){
// int left=0;
// int right=arr.length-1;
// while(left<=right){
//   int mid=(left+right)~/2;
//   if(target==arr[mid]){
//     arr[mid]=0;
//     return arr;
//   }
//   if(target<arr[mid]){
//    right=mid-1;
//   }else{
//    left=mid+1;
//   }
// }
// }
// void main(){
//   print(binary([1,3,5,6,7,8], 6));
// }





//  binary( arr,target,target2) {
//   List<int> a = [-1, -1];
  
//   int find(tar) {
//     int left = 0;
//     int right = arr.length - 1;
    
//     while (left <= right) {
//       int mid = (left + right) ~/ 2;
      
//       if (tar == arr[mid]) {
//         return arr[mid];
//       }
      
//       if (tar < arr[mid]) {
//         right = mid - 1;
//       } else {
//         left = mid + 1;
//       }
//     }
//     return -1; 
//   }

//   a[0] = find(target);
//   a[1] = find(target2);
  
//   return a;
// }

// void main() {
//   List<int> arr = [1, 3, 5, 6, 7, 8, 9];
//   int target = 6;
//   int target2 = 8;
//   List<int> found = binary(arr, target, target2);
//   print(found);
// }


// binary(arr,target){
// int left=0,right=arr.length-1;
// while(left<=right){
// int mid=(left+right)~/2;
// if(target==arr[mid]){
//   return mid;
// }
// if(target<arr[mid]){
//   right=mid-1;

// }else{
//   left=mid+1;
// }
// }
// }
// void main(){
//   print(binary([1,3,4,5,6,7], 7));
// }


binary(arr,left,right,target){
while(left<right){
  int mid=(left+right)~/2;
  if(target==arr[mid]){
    return mid;
  }
  if(target<arr[mid]){
    right=mid-1;
  }else{
    left=mid+1;
  }
}
}
void main(){
  List<int>arr=[2,3,4,5,6];
  int target=5;
  int found=binary(arr,0,arr.length-1,target);
  print(found);
}