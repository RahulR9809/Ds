void insertionSort(arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int temp = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > temp) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = temp;
  }
}

void main() {
  List<int> numbers = [5, 3, 8, 2, 1];
  insertionSort(numbers);
  print(numbers);
}
 


 
// Certainly! Let's visualize how the insertion sort algorithm works step by step using the example array [5, 3, 8, 2, 1].

// Initial Array: [5, 3, 8, 2, 1]
// Pass 1:
// Start with the second element (3) and store it in key.
// Compare key with the elements to its left in the sorted portion of the array (5).
// Since 5 > 3, shift 5 one position to the right.
// Insert 3 into the correct position.
// Array after Pass 1: [3, 5, 8, 2, 1]
// Pass 2:
// Start with the third element (8) and store it in key.
// Compare key with the elements to its left in the sorted portion of the array (5).
// Since 5 < 8, no shifting is needed.
// Array after Pass 2: [3, 5, 8, 2, 1] (no change)
// Pass 3:
// Start with the fourth element (2) and store it in key.
// Compare key with the elements to its left in the sorted portion of the array (8, 5, 3).
// Since 3 > 2, shift 3 one position to the right.
// Compare key with 5 and 5 > 2, so shift 5 one position to the right.
// Compare key with 8 and 8 > 2, so shift 8 one position to the right.
// Insert 2 into the correct position.
// Array after Pass 3: [2, 3, 5, 8, 1]
// Pass 4:
// Start with the fifth element (1) and store it in key.
// Compare key with the elements to its left in the sorted portion of the array (8, 5, 3, 2).
// Since 2 > 1, shift 2 one position to the right.
// Compare key with 3 and 3 > 1, so shift 3 one position to the right.
// Compare key with 5 and 5 > 1, so shift 5 one position to the right.
// Compare key with 8 and 8 > 1, so shift 8 one position to the right.
// Insert 1 into the correct position.
// Array after Pass 4: [1, 2, 3, 5, 8]
// Sorted Array: [1, 2, 3, 5, 8]




// Pass 1: [5, 3, 8, 2, 1]    ->    [3, 5, 8, 2, 1]

// Pass 2: [3, 5, 8, 2, 1]    ->    [3, 5, 8, 2, 1]

// Pass 3: [3, 5, 8, 2, 1]    ->    [2, 3, 5, 8, 1]

// Pass 4: [2, 3, 5, 8, 1]    ->    [1, 2, 3, 5, 8]



// void insertionSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j = j - 1;
//     }
//     arr[j + 1] = key;

//     // Print the sorted array after each pass
//     print('After Pass $i: $arr');
//   }
// }

// void main() {
//   List<int> numbers = [5, 3, 8, 2, 1];
//   print('Initial Array: $numbers');
//   insertionSort(numbers);
// }
