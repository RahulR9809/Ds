// fist unique number in the array


void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 6];
  int uniqueNumber = -1;

  for (int i = 0; i < arr.length; i++) {
    int count = 0;

    for (int j = 0; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    if (count == 1) {
      uniqueNumber = arr[i];
      break; 
    }
  }

  if (uniqueNumber != -1) {
    print("The first unique number in the list is: $uniqueNumber");
  } else {
    print("No unique number found in the list.");
  }
}

