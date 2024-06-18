
//unique number


void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 6];
  List<int> uniqueNumbers = [];

  for (int i = 0; i < arr.length; i++) {
    int count = 0;

    for (int j = 0; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    if (count == 1) {
      uniqueNumbers.add(arr[i]);
    }
  }

  print("Unique numbers in the list: $uniqueNumbers");
}
