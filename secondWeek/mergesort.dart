List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<int> leftHalf = mergeSort(arr.sublist(0, mid));

  List<int> rightHalf = mergeSort(arr.sublist(mid));

  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
 // Add remaining elements from the left sub-array, if any
  while (i < left.length) {
    result.add(left[i++]);
  }

  // Add remaining elements from the right sub-array, if any
  while (j < right.length) {
    result.add(right[j++]);
  }
  return result;
}

void main() {
  List<int> arr = [5, 2, 8, 121,12,13, 7,9];
  List<int> found = mergeSort(arr);
  print(found);
}