void main() {
  List<int> numbers = [5, 8, 2, 10, 3];
  int max = findMax(numbers);
  print("Maximum element in the array: $max");
}

int findMax(List<int> arr) {
  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}
