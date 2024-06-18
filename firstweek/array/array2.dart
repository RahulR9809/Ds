
// Question 2: Remove duplicates from an array.

// void main() {
//   List<int> nums = [1, 2,6,7,77,7,];
//   List<int> unique = [];

//   for (int i = 0; i < nums.length; i++) {
//     if (!unique.contains(nums[i])) {
//       unique.add(nums[i]);
//     }
//   }

//   print(unique); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
// }

void main(){
List <int> nums=[1,2,3,4,4,5];
List<int> unique=[];
for(int i=0;i<nums.length;i++){
  if(!unique.contains(nums[i])){
    unique.add(nums[i]);
  }
}
print(unique);
}