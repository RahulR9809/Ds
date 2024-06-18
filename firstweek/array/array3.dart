// Question 3: Check if an array is sorted in ascending order.


void main() {
  List<int> numbers = [1, 3, 5, 7, 9];
  bool isSorted = true;

  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] > numbers[i + 1]) {
      isSorted = false;
      break;
    }
  }

  print("Array is sorted: $isSorted");
}
